# Propagación de Fallos en la Inicialización en Swift

En Swift, los **inicializadores fallables** (`init?`) pueden propagar fallos a través de la cadena de inicialización. Si un inicializador fallable llama a otro inicializador fallable y este devuelve `nil`, la inicialización completa falla.

## Propagación de Fallos en una Estructura

Si un inicializador fallable dentro de una estructura llama a otro inicializador fallable y este falla, la inicialización se detiene y devuelve `nil`.

```swift
struct Product {
    let name: String
    let price: Double
    
    init?(name: String, price: Double) {
        guard !name.isEmpty, price > 0 else { return nil }
        self.name = name
        self.price = price
    }
}

struct Order {
    let product: Product
    let quantity: Int
    
    init?(productName: String, price: Double, quantity: Int) {
        guard quantity > 0, let product = Product(name: productName, price: price) else { return nil }
        self.product = product
        self.quantity = quantity
    }
}

let validOrder = Order(productName: "Laptop", price: 1200, quantity: 2) // ✅
let invalidOrder = Order(productName: "", price: 1200, quantity: 2) // nil ❌
```

## Propagación de Fallos en Clases

Las clases pueden heredar inicializadores fallables y propagar fallos a través de la cadena de herencia:

```swift
class Vehicle {
    let speed: Double
    
    init?(speed: Double) {
        guard speed >= 0 else { return nil }
        self.speed = speed
    }
}

class Car: Vehicle {
    let model: String
    
    init?(speed: Double, model: String) {
        guard !model.isEmpty else { return nil }
        self.model = model
        super.init(speed: speed)
    }
}

let validCar = Car(speed: 100, model: "Sedan") // ✅
let invalidCar = Car(speed: -10, model: "") // nil ❌
```

## Cuándo Usar la Propagación de Fallos en la Inicialización

- Cuando una inicialización depende de otra y puede fallar.
- Para validar múltiples condiciones antes de completar la inicialización.
- Para evitar instancias inválidas dentro de la jerarquía de clases o estructuras.

---

Este documento explica cómo funciona la **propagación de fallos en la inicialización** en Swift y cómo manejarla correctamente.