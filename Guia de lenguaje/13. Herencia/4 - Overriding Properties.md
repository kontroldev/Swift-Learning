# Sobrescribiendo Propiedades en Swift

En Swift, las subclases pueden sobrescribir propiedades de la superclase para modificar su comportamiento o proporcionar un nuevo valor predeterminado.

## Sobrescribiendo Propiedades Computadas

Puedes sobrescribir una propiedad computada para modificar su `get` o agregar un `set`:

```swift
class Vehicle {
    var description: String {
        return "A vehicle"
    }
}

class Car: Vehicle {
    override var description: String {
        return "A car"
    }
}

let myCar = Car()
print(myCar.description) // "A car"
```

## Sobrescribiendo Propiedades con Observadores

Si una subclase hereda una propiedad almacenada, no puede sobrescribirla directamente, pero puede agregar observadores `willSet` y `didSet`:

```swift
class Person {
    var age: Int = 0 {
        didSet {
            print("Age changed to \(age)")
        }
    }
}

class Student: Person {
    override var age: Int {
        didSet {
            print("Student's age is now \(age)")
        }
    }
}

let student = Student()
student.age = 20 // "Student's age is now 20"
```

## Usando `super` en Sobrescritura de Propiedades

Si necesitas conservar la implementación original de la superclase, puedes llamar a `super` en el `get` o `set`:

```swift
class Dog {
    var sound: String {
        return "Bark"
    }
}

class Puppy: Dog {
    override var sound: String {
        return super.sound + " in a cute way!"
    }
}

let puppy = Puppy()
print(puppy.sound) // "Bark in a cute way!"
```

## Reglas de Sobrescritura de Propiedades

- Se debe usar `override` para sobrescribir una propiedad.
- No se puede sobrescribir una propiedad almacenada directamente, solo sus observadores.
- Puedes prevenir la sobrescritura usando `final`.

---

Este documento explica cómo sobrescribir **propiedades computadas y observadas** en Swift y cómo modificar su comportamiento en una subclase.