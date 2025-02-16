# Property Wrappers en Swift

Los *Property Wrappers* en Swift permiten reutilizar lógica de almacenamiento y validación en propiedades sin repetir código.

## Definiendo un Property Wrapper

Un `propertyWrapper` se define como una estructura, clase o enumeración que usa `wrappedValue`:

```swift
@propertyWrapper
struct Clamped {
    private var value: Int
    private let range: ClosedRange<Int>
    
    init(wrappedValue: Int, range: ClosedRange<Int>) {
        self.range = range
        self.value = range.contains(wrappedValue) ? wrappedValue : range.lowerBound
    }
    
    var wrappedValue: Int {
        get { value }
        set { value = range.contains(newValue) ? newValue : value }
    }
}
```

## Uso de Property Wrappers

```swift
struct Player {
    @Clamped(range: 1...100) var health: Int = 100
}

var player = Player()
print(player.health) // 100
player.health = 120
print(player.health) // 100 (No se permite fuera del rango)
```

## Acceso al Valor Envolvente

Swift permite acceder al *property wrapper* completo usando `_$propertyName`:

```swift
print(player.$health) // Accede a la instancia de Clamped
```

## Beneficios de los Property Wrappers

- Encapsulan validaciones y lógica de inicialización.
- Evitan duplicación de código.
- Mejoran la organización y reutilización de código.

---

Este documento explica cómo usar *Property Wrappers* en Swift para encapsular lógica de validación y mejorar la reutilización del código.