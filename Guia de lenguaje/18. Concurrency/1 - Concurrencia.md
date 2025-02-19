# Concurrencia en Swift

Swift proporciona un potente modelo de concurrencia que permite ejecutar múltiples tareas al mismo tiempo, mejorando el rendimiento y la capacidad de respuesta de las aplicaciones. Utiliza `async` y `await` para definir y gestionar código asíncrono de manera clara y estructurada.

## Beneficios de la Concurrencia
- **Mejora el rendimiento**: Permite que las tareas se ejecuten simultáneamente sin bloquear el hilo principal.
- **Código más limpio y legible**: `async` y `await` facilitan la escritura de código asíncrono sin necesidad de callbacks anidados.
- **Mejor manejo de errores**: Integra control de errores con `do-catch` en funciones asíncronas.

## Uso de `async` y `await`

Las funciones que ejecutan tareas asincrónicas deben marcarse con `async`, y su llamada requiere el uso de `await`.

```swift
func descargarDatos() async -> String {
    return "Datos descargados exitosamente"
}

Task {
    let resultado = await descargarDatos()
    print(resultado)
}
```

## Manejo de Errores en Código Asíncrono

Para manejar errores en funciones asincrónicas, se combina `async` con `throws`, y se usa `do-catch` para capturar errores.

```swift
enum ErrorDeRed: Error {
    case sinConexion
}

func obtenerDatos() async throws -> String {
    throw ErrorDeRed.sinConexion
}

Task {
    do {
        let datos = try await obtenerDatos()
        print(datos)
    } catch {
        print("Error: \(error)")
    }
}
```

## Conclusión
- Swift usa `async` y `await` para facilitar la concurrencia de manera estructurada.
- Las funciones pueden lanzar errores asíncronos con `throws`.
- `Task` permite ejecutar código asíncrono en entornos no asincrónicos.

