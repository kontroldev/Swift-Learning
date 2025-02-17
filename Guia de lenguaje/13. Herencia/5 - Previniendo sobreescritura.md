# Previniendo Sobrescrituras en Swift

En Swift, puedes evitar que una subclase sobrescriba métodos, propiedades y subscripts de la superclase utilizando la palabra clave `final`.

## Evitar Sobrescritura de Métodos

Para evitar que un método sea sobrescrito en una subclase, se declara con `final`:

```swift
class Vehicle {
    final func makeNoise() {
        print("No noise")
    }
}

class Car: Vehicle {
    // Error: Cannot override final method
    // override func makeNoise() {}
}
```

## Evitar Sobrescritura de Propiedades

Puedes usar `final` en propiedades para evitar que sean modificadas en subclases:

```swift
class Animal {
    final var numberOfLegs: Int = 4
}

class Dog: Animal {
    // Error: Cannot override final property
    // override var numberOfLegs: Int = 3
}
```

## Evitar Sobrescritura de Clases Completas

Si quieres prevenir cualquier tipo de sobrescritura en una clase, usa `final class`:

```swift
final class Human {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

// Error: Cannot inherit from final class 'Human'
// class Student: Human {}
```

## Cuándo Usar `final`

- Para proteger la implementación original de un método o propiedad.
- Cuando no deseas permitir modificaciones en clases derivadas.
- Para mejorar el rendimiento, ya que el compilador puede optimizar `final`.

---

Este documento explica cómo usar `final` en Swift para **evitar sobrescrituras** en métodos, propiedades y clases.