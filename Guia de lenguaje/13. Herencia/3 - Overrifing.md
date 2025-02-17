# Sobrescritura en Swift

En Swift, las subclases pueden sobrescribir propiedades, métodos y subscripts de la superclase para modificar su comportamiento.

## Sobrescribiendo Métodos

Para sobrescribir un método de la superclase, se usa la palabra clave `override`:

```swift
class Vehicle {
    func makeNoise() {
        print("No noise")
    }
}

class Car: Vehicle {
    override func makeNoise() {
        print("Vroom vroom!")
    }
}

let myCar = Car()
myCar.makeNoise() // "Vroom vroom!"
```

## Sobrescribiendo Propiedades

Puedes sobrescribir propiedades de la superclase para proporcionar un nuevo valor predeterminado o comportamiento:

```swift
class Bicycle: Vehicle {
    override var description: String {
        return "A bicycle traveling at \(currentSpeed) km/h"
    }
}
```

## Llamando a la Implementación de la Superclase

Si necesitas usar la implementación original de la superclase dentro de la sobrescritura, puedes llamar a `super`:

```swift
class ElectricCar: Car {
    override func makeNoise() {
        super.makeNoise()
        print("...but quieter")
    }
}
```

## Reglas de Sobrescritura

- Se debe usar `override` para sobrescribir métodos, propiedades o subscripts.
- Swift verifica que la sobrescritura es válida en tiempo de compilación.
- Puedes evitar que una propiedad o método sea sobrescrito usando `final`.

---

Este documento explica cómo realizar **sobrescritura** en Swift y modificar el comportamiento heredado de una clase base.