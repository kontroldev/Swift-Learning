# Subclases en Swift

En Swift, una **subclase** es una clase que hereda de otra clase (la **superclase**), lo que permite reutilizar y extender la funcionalidad de la superclase.

## Creando una Subclase

Para definir una subclase, se coloca el nombre de la superclase después del nombre de la subclase, separado por `:`.

```swift
class Bicycle: Vehicle {
    var hasBasket = false
}
```

Aquí, `Bicycle` hereda todas las propiedades y métodos de `Vehicle`.

## Creando una Instancia de una Subclase

```swift
let myBike = Bicycle()
myBike.currentSpeed = 15.0
print(myBike.description) // "Traveling at 15.0 km/h"
```

## Características de las Subclases

- Heredan propiedades y métodos de la superclase.
- Pueden añadir nuevas propiedades y métodos.
- Pueden sobrescribir métodos de la superclase.

---

Este documento explica cómo definir **subclases** en Swift y extender la funcionalidad de una clase base.
