import { avaliar } from "./avaliar.mjs";

async function iniciar(container) {
  const status = container.querySelector(".exercise-status");
  const input = container.querySelector("input");
  const buttons = container.querySelectorAll("button");
  try {
    const response = await fetch(container.dataset.exercise);
    if (!response.ok) throw new Error("Exercício indisponível");
    const exercise = await response.json();
    if (!Array.isArray(exercise.answers) || !Array.isArray(exercise.hints)) {
      throw new Error("Formato inválido");
    }
    container.querySelector(".exercise-title").textContent = exercise.title;
    container.querySelector(".exercise-prompt").textContent = exercise.prompt;
    const history = container.querySelector(".exercise-history");
    const key = "linuxteclab.exercise." + exercise.id;
    let hints = 0;
    function save(completed) {
      try {
        if (completed) localStorage.setItem(key, "complete");
        else localStorage.removeItem(key);
      } catch { /* O exercício funciona mesmo com armazenamento bloqueado. */ }
    }
    function report(message) { status.textContent = message; }
    function line(text, className) {
      const element = document.createElement("p");
      element.className = className;
      element.textContent = text;
      history.append(element);
      history.scrollTop = history.scrollHeight;
    }
    try {
      if (localStorage.getItem(key) === "complete") {
        report("Você já concluiu esta missão neste navegador. Pode praticar novamente.");
      } else report("Pronto para começar.");
    } catch { report("Pronto para começar."); }

    container.querySelector("form").addEventListener("submit", (event) => {
      event.preventDefault();
      const raw = input.value;
      const result = avaliar(raw, exercise);
      if (result.kind !== "empty") line("aluno@linuxteclab:~$ " + raw, "exercise-command");
      if (result.output) line(result.output, "exercise-output");
      report(result.message);
      if (result.kind === "correct") save(true);
      input.value = "";
      input.focus();
    });
    container.querySelector('[data-action="hint"]').addEventListener("click", () => {
      report(exercise.hints[Math.min(hints++, exercise.hints.length - 1)]);
    });
    container.querySelector('[data-action="answer"]').addEventListener("click", () => {
      report("Solução: " + exercise.answers[0] + ". " + exercise.success + " Digite o comando para praticar.");
    });
    container.querySelector('[data-action="reset"]').addEventListener("click", () => {
      history.replaceChildren();
      hints = 0;
      save(false);
      input.value = "";
      report("Missão reiniciada. Tente novamente.");
      input.focus();
    });
    input.disabled = false;
    buttons.forEach((button) => { button.disabled = false; });
  } catch {
    status.textContent = "Não foi possível carregar o exercício. Recarregue a página para tentar novamente. O exemplo de pwd acima continua disponível.";
  }
}
document.querySelectorAll("[data-exercise]").forEach(iniciar);
