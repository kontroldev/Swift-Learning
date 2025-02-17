# Definiendo una Clase Base en Swift

En Swift, las clases pueden heredar de otras clases, comenzando con una **clase base** que no hereda de ninguna otra.

## Definiendo una Clase Base

Para definir una clase base, simplemente se declara con `class` sin especificar una superclase.

```swift
class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "Traveling at \(currentSpeed) km/h"
    }
    
    func makeNoise() {
        // Implementación vacía
    }
}
```

## Creando una Instancia de una Clase Base

```swift
let someVehicle = Vehicle()
print(someVehicle.description) // "Traveling at 0.0 km/h"
```

## Características de una Clase Base

- No hereda de ninguna otra clase.
- Define propiedades y métodos que pueden ser heredados.
- Puede ser extendida por clases derivadas.

---

Este documento explica cómo definir una **clase base** en Swift y sus características principales.
