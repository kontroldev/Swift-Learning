# Inicializadores Requeridos en Swift

En Swift, puedes usar la palabra clave `required` para indicar que una subclase debe implementar un inicializador específico.

## Uso de `required` en Clases

Si un inicializador se marca como `required`, todas las subclases deben proporcionar una implementación de ese inicializador.

```swift
class SomeClass {
    required init() {
        // Implementación del inicializador requerido
    }
}

class SubClass: SomeClass {
    required init() {
        // Implementación obligatoria en la subclase
    }
}
```

## `required` y `override`

Si una subclase sobrescribe un inicializador requerido de la superclase, debe marcarlo con `required` y `override`:

```swift
class Vehicle {
    var speed: Double
    
    required init(speed: Double) {
        self.speed = speed
    }
}

class Car: Vehicle {
    required override init(speed: Double) {
        super.init(speed: speed)
    }
}
```

## Cuándo Usar Inicializadores Requeridos

- Cuando todas las subclases deben proporcionar una implementación específica del inicializador.
- Para garantizar que las instancias de todas las subclases cumplan con una inicialización obligatoria.
- Cuando trabajas con clases diseñadas para ser extendidas en el futuro.

---

Este documento explica cómo usar **inicializadores requeridos** en Swift y su importancia en la herencia de clases.