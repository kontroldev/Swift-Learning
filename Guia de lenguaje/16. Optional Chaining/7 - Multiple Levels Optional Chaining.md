# Encadenamiento de Múltiples Niveles en Swift

El **encadenamiento opcional** en Swift permite acceder de forma segura a múltiples niveles de propiedades, métodos o subíndices opcionales.

## Encadenamiento de Propiedades

Si una propiedad intermedia es `nil`, la expresión completa devuelve `nil` sin causar un error.

```swift
class Address {
    var street: String?
}

class Residence {
    var address: Address?
}

class Person {
    var residence: Residence?
}

let person = Person()
if let streetName = person.residence?.address?.street {
    print("La calle es \(streetName)")
} else {
    print("No hay dirección disponible")
}
```

### Explicación
- Si `residence`, `address` o `street` son `nil`, toda la expresión devuelve `nil` sin provocar un error.
- Se evita el uso de desempaquetado forzado (`!`), lo que mejora la seguridad.

## Encadenamiento de Métodos

También se pueden llamar métodos dentro de un encadenamiento opcional:

```swift
class House {
    func getOwnerName() -> String? {
        return "Raúl"
    }
}

class Neighborhood {
    var house: House?
}

let myNeighborhood = Neighborhood()
let ownerName = myNeighborhood.house?.getOwnerName()?.uppercased()
print(ownerName ?? "No hay propietario registrado")
```

### Explicación
- `getOwnerName()` se llama solo si `house` no es `nil`.
- `.uppercased()` solo se ejecuta si `getOwnerName()` devuelve un valor.

### Cuándo Usar Encadenamiento de Múltiples Niveles

- Para trabajar con estructuras de datos anidadas.
- Para evitar comprobaciones `if let` repetitivas.
- Para mejorar la claridad y seguridad del código.

---

Este documento explica cómo **encadenar múltiples niveles de encadenamiento opcional en Swift** y cómo usarlos de manera segura.
