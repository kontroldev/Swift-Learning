# Delegación de Inicializadores en Tipos de Clase en Swift

En Swift, los inicializadores de clases pueden delegar llamadas a otros inicializadores dentro de la misma clase o a una superclase para evitar la duplicación de código y garantizar que todas las propiedades sean inicializadas correctamente.

## Delegación entre Inicializadores en la Misma Clase

Las clases pueden definir inicializadores **convenientes** (`convenience init`) que delegan a un inicializador **designado** (`init`).

```swift
class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    convenience init(name: String) {
        self.init(name: name, age: 0) // Delegación al inicializador designado
    }
}

let person1 = Person(name: "Alice", age: 25)
let person2 = Person(name: "Bob") // Usa el inicializador conveniente
```

## Delegación a la Superclase

Cuando una subclase tiene un inicializador **designado**, debe llamar a `super.init(...)` para asegurarse de que la superclase también se inicializa correctamente.

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
        super.init(speed: speed) // Llamada al inicializador de la superclase
    }
}
```

## Reglas de Delegación de Inicialización

1. Un **inicializador conveniente** debe llamar a otro inicializador de la misma clase.
2. Un **inicializador designado** debe inicializar todas las propiedades antes de llamar a `super.init()`.
3. Las subclases deben asegurarse de que la superclase se inicializa correctamente antes de modificar sus propias propiedades.

## Cuándo Usar Delegación de Inicializadores

- Para evitar la duplicación de código en múltiples inicializadores.
- Para simplificar la creación de instancias con valores predeterminados.
- Para garantizar que la inicialización de la superclase se complete antes de modificar las propiedades de la subclase.

---

Este documento explica cómo funciona la **delegación de inicializadores en tipos de clase** en Swift y el uso de `super.init(...)` y `self.init(...)`.