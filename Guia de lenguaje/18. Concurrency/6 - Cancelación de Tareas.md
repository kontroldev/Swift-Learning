# Cancelación de tareas

La cancelación en Swift es **cooperativa**: `cancel()` solicita la cancelación, pero no detiene por la fuerza el código que ya se está ejecutando. La tarea debe comprobarla o llamar a una operación que responda a ella.

```swift
func procesar(_ elementos: [Int]) async throws {
    for elemento in elementos {
        try Task.checkCancellation()
        print("Procesando \(elemento)")
        try await Task.sleep(for: .seconds(1))
    }
}

let tarea = Task {
    do {
        try await procesar([1, 2, 3, 4, 5])
    } catch is CancellationError {
        print("Tarea cancelada")
    } catch {
        print("Error: \(error)")
    }
}

// Desde un contexto asíncrono:
try await Task.sleep(for: .seconds(2))
tarea.cancel()
await tarea.value
```

La salida exacta depende de cuándo se solicite la cancelación. `Task.sleep` puede lanzar `CancellationError`; no uses `try?` si necesitas detener el trabajo cuando se cancela. En código que no lanza errores, puedes consultar `Task.isCancelled` y terminar de forma ordenada.

En concurrencia estructurada, la cancelación de una tarea padre se propaga a sus tareas hijas. `group.cancelAll()` solicita cancelar las tareas del grupo, que también deben cooperar. Una tarea creada con `Task {}` es no estructurada y se cancela mediante su propia referencia.

Más información: [Concurrencia en la guía oficial](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/concurrency/).
