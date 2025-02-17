# Personalizando la Inicialización en Swift

Swift permite personalizar la inicialización de clases, estructuras y enumeraciones a través de inicializadores personalizados.

## Creando un Inicializador Personalizado

Puedes definir un inicializador que acepte parámetros específicos para inicializar una instancia.

```swift
struct Rectangle {
    var width: Double
    var height: Double
    
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
}

let rect = Rectangle(width: 10.0, height: 5.0)
print("Width: \(rect.width), Height: \(rect.height)")
```

## Múltiples Inicializadores

Puedes definir múltiples inicializadores dentro de una misma estructura o clase para manejar diferentes casos de inicialización.

```swift
struct Person {
    var name: String
    var age: Int
    
    init(name: String) {
        self.name = name
        self.age = 0 // Valor por defecto
    }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let child = Person(name: "Alice")
let adult = Person(name: "Bob", age: 30)
print(child.age) // 0
print(adult.age) // 30
```

## Cuándo Usar Inicializadores Personalizados

- Para proporcionar valores iniciales específicos según diferentes situaciones.
- Para validar o procesar datos antes de asignarlos a propiedades.
- Para ofrecer múltiples formas de instanciar un objeto.

---

Este documento explica cómo **personalizar la inicialización** en Swift mediante inicializadores personalizados.
