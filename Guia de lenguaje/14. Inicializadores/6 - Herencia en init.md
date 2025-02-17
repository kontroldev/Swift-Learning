# Herencia de Clases e Inicialización en Swift

En Swift, las clases pueden heredar inicializadores de una superclase y también definir los suyos propios. La inicialización en una jerarquía de clases requiere especial atención para garantizar que todas las propiedades se inicialicen correctamente.

## Llamando al Inicializador de la Superclase

Una subclase debe llamar al inicializador de su superclase usando `super.init(...)` antes de modificar sus propias propiedades.

```swift
class Vehicle {
    var speed: Double
    
    init(speed: Double) {
        self.speed = speed
    }
}

class Car: Vehicle {
    var model: String
    
    init(speed: Double, model: String) {
        self.model = model
        super.init(speed: speed)
    }
}

let car = Car(speed: 100, model: "Sedan")
print(car.speed, car.model) // 100.0 Sedan
```

## Inicializadores Designados y Convenientes

Swift clasifica los inicializadores en:

- **Inicializadores designados (`init`)**: Inicializan todas las propiedades y llaman al inicializador de la superclase.
- **Inicializadores convenientes (`convenience init`)**: Llaman a otro inicializador dentro de la misma clase y deben terminar llamando a un inicializador designado.

```swift
class Bicycle: Vehicle {
    var hasBasket: Bool
    
    init(speed: Double, hasBasket: Bool) {
        self.hasBasket = hasBasket
        super.init(speed: speed)
    }
    
    convenience init() {
        self.init(speed: 10, hasBasket: false)
    }
}
```

## Reglas de Inicialización en Clases

1. Un **inicializador designado** debe inicializar todas las propiedades antes de llamar a `super.init()`.
2. Un **inicializador conveniente** debe llamar a otro inicializador de la misma clase.
3. Swift proporciona inicializadores heredados de la superclase automáticamente si la subclase no define los suyos.

## Cuándo Usar Inicialización en Herencia

- Para inicializar todas las propiedades de la subclase correctamente.
- Para reutilizar inicializadores de la superclase sin duplicar código.
- Para definir múltiples formas de inicializar un objeto.

---

Este documento explica cómo funciona la **inicialización en clases heredadas** en Swift y el uso de `super.init()`, inicializadores designados y convenientes.
