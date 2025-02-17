# Asignando a `self` Dentro de un Método `mutating` en Swift

En Swift, los métodos `mutating` en estructuras y enumeraciones pueden modificar sus propias propiedades e incluso reasignar completamente `self` a una nueva instancia.

## Reasignando `self` en un Método `mutating`

Cuando se requiere actualizar todas las propiedades de una estructura, se puede reasignar `self` en un método `mutating`:

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

## Usando `self` en Enumeraciones

Las enumeraciones también pueden reasignar `self` dentro de un método `mutating`:

```swift
enum SwitchState {
    case on, off
    
    mutating func toggle() {
        self = (self == .on) ? .off : .on
    }
}

var lightSwitch = SwitchState.off
lightSwitch.toggle()
print(lightSwitch) // on
```

## Cuándo Usar `self` en Métodos `mutating`

- Cuando se necesita reemplazar toda la instancia de una estructura dentro de un método.
- Para cambiar el estado de una enumeración dentro de un método `mutating`.
- Para simplificar la actualización de múltiples propiedades de una estructura en una sola asignación.

---

Este documento explica cómo **asignar a `self` dentro de un método `mutating`** en Swift, permitiendo modificar completamente una instancia dentro de una estructura o enumeración.
