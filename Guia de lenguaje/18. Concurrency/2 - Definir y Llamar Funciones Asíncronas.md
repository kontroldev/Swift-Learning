# Definir y Llamar Funciones Asíncronas

En Swift, las funciones asíncronas se definen utilizando la palabra clave `async`. Esto indica que la función puede ejecutarse en segundo plano sin bloquear el hilo principal. Para llamar a una función asíncrona, se debe utilizar `await`.

## Definir una Función Asíncrona

Una función asíncrona se declara agregando `async` antes de su tipo de retorno:

```swift
func obtenerMensaje() async -> String {
    return "Hola desde una función asíncrona"
}
```

## Llamar a una Función Asíncrona

Para ejecutar una función `async`, se debe usar `await`. Como `await` solo se puede usar dentro de un contexto asincrónico, se emplea `Task` para ejecutarla desde un entorno síncrono.

```swift
Task {
    let mensaje = await obtenerMensaje()
    print(mensaje)
}
```

## Funciones Asíncronas que Lanzan Errores

Si una función puede fallar, se marca con `throws` junto con `async`. Para manejar errores, se usa `do-catch`.

```swift
enum ErrorDeRed: Error {
    case conexionFallida
}

func descargarDatos() async throws -> String {
    throw ErrorDeRed.conexionFallida
}

Task {
    do {
        let datos = try await descargarDatos()
        print(datos)
    } catch {
        print("Error: \(error)")
    }
}
```

## Conclusión
- Se usa `async` para definir funciones asíncronas.
- Se emplea `await` para llamar funciones asíncronas dentro de un contexto adecuado.
- Para manejar errores, se combina `async` con `throws` y `do-catch`.


