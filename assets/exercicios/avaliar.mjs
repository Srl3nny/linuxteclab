/** Validação didática de uma resposta. Nenhum comando é executado. */
export function avaliar(raw, exercise) {
  const command = raw.trim().replace(/\s+/g, " ");
  if (!command) return { kind: "empty", message: "Digite um comando para tentar." };
  if (exercise.answers.includes(command)) {
    return { kind: "correct", message: exercise.success, output: exercise.directory };
  }
  if (/[;&|<>\x60]/.test(command) || command.includes("$(")) {
    return { kind: "unsupported", message: "Este exercício aceita um comando simples por tentativa, sem pipes ou redirecionamentos." };
  }
  const [name] = command.split(" ");
  if (name === "pwd") {
    return { kind: "syntax", message: "Você encontrou o comando. Tente pwd sem argumentos. As opções -L e -P também são aceitas." };
  }
  if (Object.hasOwn(exercise.feedback, name)) {
    return { kind: "wrong", message: exercise.feedback[name] };
  }
  return { kind: "unknown", message: "Essa entrada não está entre as respostas deste exercício. Confira a digitação ou use uma dica." };
}
