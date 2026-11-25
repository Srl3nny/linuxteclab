import { navegar } from "./navegar.mjs";

async function iniciar(container) {
  const status = container.querySelector("[role=status]");
  try {
    const response = await fetch(container.dataset.navigation);
    if (!response.ok) throw new Error("Falha ao carregar");
    const exercise = await response.json();
    let cwd = exercise.home;
    let step = 0;
    const input = container.querySelector("input");
    const history = container.querySelector(".exercise-history");
    const prompt = container.querySelector("label");
    const task = container.querySelector(".exercise-prompt");
    const key = "linuxteclab.exercise." + exercise.id;
    const save = complete => {
      try {
        if (complete) localStorage.setItem(key, "complete");
        else localStorage.removeItem(key);
      } catch { /* Armazenamento local é opcional. */ }
    };
    function update() {
      prompt.textContent = "aluno@linuxteclab:" + (cwd === exercise.home ? "~" : cwd.replace(exercise.home + "/", "~/")) + "$";
      task.textContent = step < exercise.steps.length
        ? "Etapa " + (step + 1) + "/" + exercise.steps.length + " · " + exercise.steps[step].prompt
        : "Missão concluída! Você pode continuar explorando ou reiniciar.";
    }
    function line(text) {
      const p = document.createElement("p");
      p.textContent = text;
      history.append(p);
      history.scrollTop = history.scrollHeight;
    }
    container.querySelector("form").addEventListener("submit", event => {
      event.preventDefault();
      const raw = input.value;
      if (raw.trim()) line(prompt.textContent + " " + raw);
      const result = navegar(raw, cwd, exercise);
      cwd = result.cwd;
      if (result.output) line(result.output);
      status.textContent = result.message;
      if (result.moved && step < exercise.steps.length && cwd === exercise.steps[step].target) {
        step++;
        status.textContent = step === exercise.steps.length ? "Parabéns! Você completou a navegação." : "Correto! Continue para a próxima etapa.";
        if (step === exercise.steps.length) save(true);
      }
      update();
      input.value = "";
      input.focus();
    });
    container.querySelector('[data-action="hint"]').addEventListener("click", () => {
      status.textContent = exercise.steps[step]?.hint || "Missão concluída. Reinicie para praticar novamente.";
    });
    container.querySelector('[data-action="answer"]').addEventListener("click", () => {
      // O caminho absoluto funciona mesmo se o aluno tiver explorado outras pastas.
      status.textContent = step < exercise.steps.length
        ? "Para chegar ao destino a partir de qualquer pasta, digite cd " + exercise.steps[step].target + ". No caminho proposto, use " + exercise.steps[step].answer + "."
        : "Você já concluiu todas as etapas.";
    });
    container.querySelector('[data-action="reset"]').addEventListener("click", () => {
      cwd = exercise.home;
      step = 0;
      history.replaceChildren();
      save(false);
      update();
      status.textContent = "Missão reiniciada.";
      input.value = "";
      input.focus();
    });
    update();
    status.textContent = "Pronto. Use ls para explorar ou comece pela primeira tarefa.";
    try {
      if (localStorage.getItem(key) === "complete") status.textContent = "Você já concluiu esta missão neste navegador. Pratique a sequência novamente.";
    } catch { /* A navegação funciona sem armazenamento. */ }
    input.disabled = false;
    container.querySelectorAll("button").forEach(button => { button.disabled = false; });
  } catch {
    status.textContent = "Não foi possível carregar a simulação. Recarregue a página para tentar novamente.";
  }
}
document.querySelectorAll("[data-navigation]").forEach(iniciar);
