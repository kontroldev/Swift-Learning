# Modificando Tipos de Valor desde Métodos de Instancia en Swift

Las estructuras y enumeraciones son **tipos de valor**, lo que significa que cuando un método de instancia intenta modificar sus propiedades, necesita ser marcado como `mutating`.

## Uso de Métodos `mutating`

Un método de instancia en una estructura que modifica sus propiedades debe declararse con `mutating`:

```swift
struct Counter {
    var count = 0
    
    mutating func increment() {
        count += 1
    }
    
    mutating func reset() {
        count = 0
    }
}

var counter = Counter()
counter.increment()
print(counter.count) // 1
counter.reset()
print(counter.count) // 0
```

## Reasignando `self` en un Método `mutating`

Incluso puedes reasignar `self` dentro de un método `mutating`:

```swift
struct Point {
    var x = 0, y = 0
    
    mutating func moveTo(x newX: Int, y newY: Int) {
        self = Point(x: newX, y: newY)
    }
}

var myPoint = Point(x: 2, y: 3)
myPoint.moveTo(x: 10, y: 15)
print("New Position: (\(myPoint.x), \(myPoint.y))") // "New Position: (10, 15)"
```

## Cuándo Usar `mutating`

- Cuando se necesita modificar las propiedades de una estructura o enumeración.
- Para reasignar `self` dentro de un método de instancia.
- Para encapsular cambios en los valores dentro del propio tipo de valor.

---

Este documento explica cómo modificar **tipos de valor** en Swift desde métodos de instancia usando `mutating` en estructuras y enumeraciones.
