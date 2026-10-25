import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

struct TareaRemota: Decodable {
    let title: String
    let completed: Bool
}

enum ErrorDeRespuesta: Error {
    case estadoHTTP(Int)
    case respuestaInvalida
}

func cargarTarea() async throws -> TareaRemota {
    let url = URL(string: "https://jsonplaceholder.typicode.com/todos/1")!
    let (datos, respuesta) = try await URLSession.shared.data(from: url)
    guard let http = respuesta as? HTTPURLResponse else { throw ErrorDeRespuesta.respuestaInvalida }
    guard (200..<300).contains(http.statusCode) else { throw ErrorDeRespuesta.estadoHTTP(http.statusCode) }
    return try JSONDecoder().decode(TareaRemota.self, from: datos)
}

do {
    let tarea = try await cargarTarea()
    print("\(tarea.completed ? "[x]" : "[ ]") \(tarea.title)")
} catch {
    print("No se pudo cargar la tarea: \(error)")
}
