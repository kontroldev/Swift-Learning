# Aislamiento y concurrencia en Swift 6

El modo de lenguaje Swift 6 activa comprobaciones estrictas de concurrencia para detectar posibles carreras de datos. La versión del compilador y el modo de lenguaje son ajustes distintos; consulta la configuración de cada módulo.

## `@MainActor`

El actor principal protege el estado que necesita accederse desde él, como el estado de una interfaz de usuario:

```swift
@MainActor
final class Pantalla {
    private(set) var mensaje = "Cargando"

    func mostrar(_ texto: String) {
        mensaje = texto
    }
}
```

Desde otro aislamiento, llamar a `mostrar` requiere un salto al actor y normalmente `await`. `async` no significa automáticamente que un trabajo pesado se ejecute fuera del actor principal; una operación de E/S asíncrona sí puede suspenderse sin bloquearlo.

## Swift 6.2 y configuración del proyecto

Swift 6.2 introdujo opciones de concurrencia más accesible, incluido el aislamiento predeterminado al actor principal y una opción para que funciones `nonisolated async` se ejecuten en el contexto del llamador. Su comportamiento depende de las opciones habilitadas en cada módulo. `@concurrent` permite indicar que una función asíncrona debe ejecutarse en el ejecutor concurrente; úsalo cuando realmente sea necesario realizar trabajo concurrente.

Usa `async let` para un número fijo de operaciones independientes y grupos de tareas para un número dinámico. La cancelación es cooperativa, y el estado de un actor puede cambiar durante un `await`.

Consulta [Swift 6.2 Released](https://www.swift.org/blog/swift-6.2-released/), la [guía de migración](https://www.swift.org/migration/) y el capítulo de [concurrencia](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/concurrency/) para los detalles y opciones actuales.
