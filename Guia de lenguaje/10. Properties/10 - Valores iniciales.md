# Estableciendo Valores Iniciales para Propiedades Envueltas en Swift

Cuando usas *Property Wrappers* en Swift, puedes establecer valores iniciales de dos maneras:
- Dentro del *wrapper*.
- En la propiedad envuelta (`@propertyWrapper`).

## Definir un Property Wrapper con Valor Predeterminado

Un `propertyWrapper` puede proporcionar un valor inicial predeterminado:

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

## Asignando un Valor Inicial en la Propiedad

Cuando se usa el *property wrapper*, puedes definir el valor inicial directamente en la propiedad:

```swift
struct Player {
    @Clamped(range: 1...100) var health: Int = 50
}

let player = Player()
print(player.health) // 50
```

Si intentas asignar un valor fuera del rango, se ajustará automáticamente:

```swift
var anotherPlayer = Player()
anotherPlayer.health = 150
print(anotherPlayer.health) // 100 (ajustado al rango máximo)
```

## Resumen

- El valor inicial puede ser definido en el `propertyWrapper` o en la propiedad envuelta.
- Swift aplica las reglas del *wrapper* al establecer el valor inicial.
- Permite controlar la validación y configuración desde un solo lugar.

---

Este documento explica cómo establecer valores iniciales para *propiedades envueltas* (`property wrappers`) en Swift y cómo afecta la validación de datos.
