# Accediendo a Subíndices Mediante Encadenamiento Opcional en Swift

El **encadenamiento opcional** permite acceder de forma segura a subíndices (`subscripts`) en valores opcionales sin necesidad de desempaquetarlos explícitamente.

## Uso de Subíndices con Encadenamiento Opcional

```swift
class Library {
    var books: [String] = ["Swift Basics", "Advanced Swift", "iOS Development"]
}

class Person {
    var library: Library?
}

let user = Person()
let firstBook = user.library?.books[0] // Retorna nil si `library` es nil
print(firstBook ?? "No hay libros disponibles")
```

### Explicación del Código

- Si `library` es `nil`, la expresión completa devuelve `nil` sin causar un error.
- Se usa `??` para proporcionar un valor predeterminado en caso de `nil`.

## Accediendo a Subíndices en Diccionarios con Encadenamiento Opcional

También se puede usar el encadenamiento opcional para acceder a valores en un diccionario opcional.

```swift
var scores: [String: Int]? = ["Alice": 85, "Bob": 92]
let bobScore = scores?["Bob"]
print(bobScore ?? 0) // Imprime 92 si existe, 0 si es nil
```

### Cuándo Usar Encadenamiento Opcional con Subíndices

- Cuando se accede a elementos en un array o diccionario opcional.
- Para evitar desempaquetar opcionales de manera insegura con `!`.
- Para escribir código más seguro y limpio.

---

Este documento explica cómo **acceder a subíndices mediante encadenamiento opcional en Swift**, asegurando seguridad y claridad en el código.
