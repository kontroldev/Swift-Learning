# Proyectando un Valor desde un Property Wrapper en Swift

Swift permite que los *property wrappers* proyecten valores adicionales a través de la sintaxis `$propertyName`. Esto es útil cuando necesitas exponer más funcionalidad del *wrapper* sin modificar directamente el valor envuelto.

## Definiendo un Property Wrapper con Proyección de Valor

Puedes agregar una propiedad `projectedValue` dentro del *wrapper* para exponer información adicional:

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
    
    var projectedValue: String {
        return "Valor permitido: \(value) dentro del rango \(range)"
    }
}
```

## Uso de `projectedValue`

Puedes acceder a la proyección utilizando el prefijo `$`:

```swift
struct Player {
    @Clamped(range: 1...100) var health: Int = 50
}

let player = Player()
print(player.$health) // "Valor permitido: 50 dentro del rango 1...100"
```

## Casos de Uso

- Exponer información adicional sobre la propiedad envuelta.
- Implementar opciones de depuración.
- Agregar metadatos o validaciones adicionales sin afectar el valor real.

---

Este documento explica cómo proyectar valores adicionales desde un *property wrapper* en Swift usando `projectedValue` para mejorar la funcionalidad de propiedades envueltas.