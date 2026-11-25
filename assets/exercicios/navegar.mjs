/** Modelo de diretórios fictícios. Nenhum comando é executado. */
export function navegar(raw, cwd, exercise) {
  const command = raw.trim();
  if (!command) return { cwd, message: "Digite um comando para tentar." };
  if (command === "pwd") return { cwd, output: cwd, message: "Este é seu diretório atual." };
  if (command === "ls" || command === "ls .") {
    const prefix = cwd === "/" ? "/" : cwd + "/";
    const children = exercise.directories.filter(path => path.startsWith(prefix) && path !== cwd && !path.slice(prefix.length).includes("/"));
    return { cwd, output: children.map(path => path.slice(prefix.length)).join("  ") || "(pasta vazia)", message: "Pastas disponíveis neste cenário." };
  }
  const parts = command.split(/\s+/);
  if (parts[0] !== "cd") return { cwd, message: "Nesta simulação, use cd para navegar, pwd para consultar o caminho e ls para listar pastas." };
  if (parts.length > 2 || /[;&|<>`$"'\\]/.test(command)) return { cwd, message: "Use cd com um único caminho simples. Pipes, variáveis e aspas não fazem parte deste cenário." };
  let target = parts[1] || "~";
  if (target === "~" || target.startsWith("~/")) target = exercise.home + target.slice(1);
  if (!target.startsWith("/")) target = cwd + "/" + target;
  const resolved = [];
  for (const part of target.split("/")) {
    if (part === "..") resolved.pop();
    else if (part && part !== ".") resolved.push(part);
  }
  target = "/" + resolved.join("/");
  if (!exercise.directories.includes(target)) return { cwd, message: "Pasta inexistente neste cenário. Use ls para consultar as pastas disponíveis." };
  return { cwd: target, moved: true, message: "Diretório atualizado." };
}
