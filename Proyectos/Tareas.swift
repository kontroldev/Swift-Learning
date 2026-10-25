struct Tarea {
    let titulo: String
    var completada = false
}

let titulo = CommandLine.arguments.dropFirst().joined(separator: " ")
let tareas = [Tarea(titulo: titulo.isEmpty ? "Aprender Swift" : titulo)]

for tarea in tareas {
    print("\(tarea.completada ? "[x]" : "[ ]") \(tarea.titulo)")
}
