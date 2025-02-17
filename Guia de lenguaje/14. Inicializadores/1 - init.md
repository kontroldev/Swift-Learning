# Inicializadores en Swift

En Swift, los **inicializadores** son métodos especiales que preparan una nueva instancia de una clase, estructura o enumeración para su uso.

## Definiendo un Inicializador

Un inicializador se define con la palabra clave `init`:

```swift
struct Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let person = Person(name: "Alice", age: 25)
print(person.name) // Alice
```

## Inicializadores en Clases

En las clases, los inicializadores pueden asignar valores a propiedades y llamar a inicializadores de la superclase:

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
```

## Reglas de los Inicializadores

- Todos los valores almacenados deben tener un valor antes de que termine el inicializador.
- Se puede usar `self` para referenciar la instancia actual.
- Las subclases deben llamar al inicializador de la superclase antes de modificar sus propias propiedades.

---

Este documento explica cómo funcionan los **inicializadores en Swift** y cómo se definen en estructuras y clases.14. Inicializadores