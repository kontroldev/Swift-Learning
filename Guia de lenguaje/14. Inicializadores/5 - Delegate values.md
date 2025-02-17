# Delegación de Inicializadores en Tipos de Valor en Swift

En Swift, los tipos de valor (estructuras y enumeraciones) pueden delegar la inicialización a otros inicializadores dentro del mismo tipo.

## Uso de la Delegación de Inicializadores

Puedes llamar a otro inicializador dentro del mismo tipo usando `self.init(...)`.

```swift
struct Rectangle {
    var width: Double
    var height: Double
    
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
    
    init(squareSize: Double) {
        self.init(width: squareSize, height: squareSize)
    }
}

let rect1 = Rectangle(width: 10, height: 5)
let square = Rectangle(squareSize: 4)
print(square.width, square.height) // 4.0 4.0
```

## Reglas de Delegación en Tipos de Valor

- Un inicializador puede llamar a otro inicializador dentro del mismo tipo.
- La inicialización debe completarse antes de acceder a `self`.
- Se usa `self.init(...)` para delegar la inicialización.

## Cuándo Usar Delegación de Inicializadores

- Para evitar duplicar código de inicialización.
- Para proporcionar múltiples formas de crear una instancia con diferentes parámetros.
- Para reutilizar la lógica de inicialización dentro de una estructura o enumeración.

---

Este documento explica cómo funciona la **delegación de inicializadores en tipos de valor** en Swift y cómo usar `self.init(...)` para simplificar la inicialización.