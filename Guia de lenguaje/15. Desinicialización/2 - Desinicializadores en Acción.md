# Desinicializadores en Acción en Swift

Los **desinicializadores** (`deinit`) en Swift permiten ejecutar código justo antes de que una instancia de una clase sea eliminada de la memoria.

## Ejemplo de Uso de `deinit`

```swift
class User {
    let name: String
    
    init(name: String) {
        self.name = name
        print("\(name) se ha creado")
    }
    
    deinit {
        print("\(name) se ha eliminado")
    }
}

do {
    let user = User(name: "Alice")
} // "Alice se ha eliminado" cuando el bloque finaliza
```

## Cómo Funciona

1. Se crea una instancia de `User` dentro de un bloque `do`.
2. Cuando el bloque `do` finaliza, la variable `user` sale del ámbito y `deinit` se ejecuta automáticamente.
3. Se imprime un mensaje en la consola indicando que la instancia ha sido eliminada.

## Cuándo Usar `deinit`

- Para cerrar archivos o conexiones de red antes de que la instancia sea eliminada.
- Para depurar la eliminación de objetos en memoria.
- Para liberar recursos de forma manual cuando se trabaja con clases que gestionan memoria o almacenamiento temporal.

---

Este documento explica cómo usar **desinicializadores en Swift** con ejemplos prácticos.
