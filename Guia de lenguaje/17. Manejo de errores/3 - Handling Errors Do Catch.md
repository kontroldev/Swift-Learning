# Manejo de Errores Usando Do-Catch

Swift proporciona la sentencia `do-catch` para manejar errores lanzados por funciones. Este enfoque permite capturar y responder a errores específicos, haciendo que tu código sea más robusto y predecible.

## Sintaxis de `do-catch`

Un bloque `do` contiene código que puede lanzar un error. Los bloques `catch` manejan diferentes casos de error.

```swift
do {
    try someThrowingFunction()
    // El código se ejecuta si no se lanza ningún error
} catch SomeError.specificCase {
    // Maneja un caso de error específico
} catch {
    // Maneja cualquier otro error
}
```

## Ejemplo 1: Manejo de Errores Específicos

```swift
enum FileError: Error {
    case fileNotFound
    case unreadable
}

func readFile(filename: String) throws -> String {
    if filename.isEmpty {
        throw FileError.fileNotFound
    }
    return "Contenido del archivo"
}

do {
    let content = try readFile(filename: "")
    print(content)
} catch FileError.fileNotFound {
    print("Error: El archivo no fue encontrado.")
} catch FileError.unreadable {
    print("Error: El archivo no se puede leer.")
} catch {
    print("Ocurrió un error inesperado: \(error)")
}
```

### Salida:
```
Error: El archivo no fue encontrado.
```

## Ejemplo 2: Usando un Bloque Catch General

Si no necesitas manejar casos de error específicos, puedes usar un bloque `catch` general:

```swift
do {
    let content = try readFile(filename: "data.txt")
    print(content)
} catch {
    print("Ocurrió un error: \(error)")
}
```

## Puntos Clave
- Usa `do-catch` para manejar errores en Swift.
- Define bloques `catch` específicos para diferentes casos de error.
- Usa un bloque `catch` general para manejar errores inesperados.

