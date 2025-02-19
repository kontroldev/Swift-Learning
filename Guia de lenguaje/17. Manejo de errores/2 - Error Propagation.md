# Propagación de Errores Usando Funciones que Lanzan Excepciones

En Swift, las funciones pueden propagar errores usando la palabra clave `throw`. Cuando una función está marcada con `throws`, indica que puede lanzar un error y que quien la llame debe manejarlo utilizando `try`, `do-catch` o `try?`.

## Declaración de una Función que Lanza Errores

Una función que puede lanzar errores se declara con `throws` antes del tipo de retorno:

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
```

## Llamando a una Función que Lanza Errores

Al llamar a una función que puede lanzar errores, debes usar `try`, `try?` o `try!`.

### Ejemplo 1: Usando `do-catch`

```swift
do {
    let content = try readFile(filename: "data.txt")
    print(content)
} catch {
    print("Ocurrió un error: \(error)")
}
```

### Ejemplo 2: Usando `try?` (Convierte el error en `nil`)

```swift
let content = try? readFile(filename: "")
print(content ?? "No hay contenido disponible")
```

### Ejemplo 3: Usando `try!` (Forzado, se bloquea si ocurre un error)

```swift
let content = try! readFile(filename: "data.txt") // Se bloquea si se lanza un error
print(content)
```

## Puntos Clave
- Usa `throws` en las firmas de funciones para indicar posibles errores.
- Maneja los errores usando `do-catch`, `try?` o `try!`.
- Prefiere `do-catch` para manejar errores, `try?` para resultados opcionales y `try!` solo cuando estés seguro de que no ocurrirá un error.

