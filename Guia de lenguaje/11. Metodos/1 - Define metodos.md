# Métodos de Instancia en Swift

En Swift, los **métodos de instancia** son funciones definidas dentro de una clase, estructura o enumeración que operan sobre instancias específicas de ese tipo.

## Definiendo un Método de Instancia

```swift
class Counter {
    var count = 0
    
    func increment() {
        count += 1
    }
    
    func reset() {
        count = 0
    }
}

let counter = Counter()
counter.increment()
print(counter.count) // 1
counter.reset()
print(counter.count) // 0
```

## Modificando Propiedades Dentro de una Estructura

Las estructuras son **tipos de valor**, por lo que los métodos que modifican propiedades deben declararse con `mutating`.

```swift
struct Point {
    var x: Int
    var y: Int
    
    mutating func moveBy(x deltaX: Int, y deltaY: Int) {
        x += deltaX
        y += deltaY
    }
}

var point = Point(x: 2, y: 3)
point.moveBy(x: 3, y: -1)
print("New Position: (\(point.x), \(point.y))") // (5, 2)
```

## Métodos de Instancia en Enumeraciones

Las enumeraciones también pueden contener métodos de instancia:

```swift
enum CompassDirection {
    case north, south, east, west
    
    mutating func turnRight() {
        switch self {
        case .north: self = .east
        case .east: self = .south
        case .south: self = .west
        case .west: self = .north
        }
    }
}

var direction = CompassDirection.north
direction.turnRight()
print(direction) // east
```

## Cuándo Usar Métodos de Instancia

- Cuando se necesita modificar las propiedades de una instancia.
- Para encapsular lógica específica dentro de un tipo.
- Cuando se requiere una operación que depende del estado actual del objeto.

---

Este documento explica cómo usar **métodos de instancia** en Swift en clases, estructuras y enumeraciones, incluyendo el uso de `mutating` en estructuras y enumeraciones.