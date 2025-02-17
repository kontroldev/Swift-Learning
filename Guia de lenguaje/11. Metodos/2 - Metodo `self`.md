# La Propiedad `self` en Swift

Cada instancia de un tipo en Swift tiene una propiedad implícita llamada `self`, que se refiere a la propia instancia actual. Se usa principalmente cuando se necesita diferenciar entre una propiedad y un parámetro con el mismo nombre.

## Uso de `self` en Métodos de Instancia

```swift
struct Person {
    var name: String
    
    func greet() {
        print("Hello, my name is \(self.name)")
    }
}

let person = Person(name: "Alice")
person.greet() // "Hello, my name is Alice"
```

## Uso de `self` en Métodos Mutantes

En métodos mutantes de estructuras y enumeraciones, `self` también se usa para asignar una nueva instancia a `self`:

```swift
struct Rectangle {
    var width: Double
    var height: Double
    
    mutating func resize(toWidth width: Double, toHeight height: Double) {
        self.width = width
        self.height = height
    }
}

var rect = Rectangle(width: 10, height: 5)
rect.resize(toWidth: 20, toHeight: 10)
print("New size: \(rect.width) x \(rect.height)") // "New size: 20.0 x 10.0"
```

## Cuándo Usar `self`

- Para desambiguar entre una propiedad y un parámetro con el mismo nombre.
- En métodos `mutating` para reasignar `self` dentro de estructuras y enumeraciones.
- Para referenciar la instancia actual dentro de una closure anidada.

---

Este documento explica cómo usar la propiedad `self` en Swift para referenciar la instancia actual dentro de métodos y closures.
