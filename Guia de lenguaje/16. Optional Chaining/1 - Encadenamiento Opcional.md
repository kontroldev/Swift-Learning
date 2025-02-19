# Encadenamiento Opcional en Swift

El **encadenamiento opcional** (`optional chaining`) es una manera de acceder a propiedades, métodos y subíndices en valores opcionales sin necesidad de realizar un desempaquetado forzado.

## Alternativa al Desempaquetado Forzado

En lugar de forzar el desempaquetado de un opcional con `!`, que puede causar un *crash* si el valor es `nil`, podemos usar `?` para realizar un encadenamiento seguro.

### Ejemplo con Desempaquetado Forzado (Evitar)

```swift
class Person {
    var residence: Residence?
}

class Residence {
    var numberOfRooms = 1
}

let john = Person()
print(john.residence!.numberOfRooms) // ⚠️ Provocará un error si `residence` es nil
```

### Ejemplo con Encadenamiento Opcional (Seguro)

```swift
print(john.residence?.numberOfRooms) // ✅ Devuelve nil sin generar error
```

## Accediendo a Propiedades Anidadas

Si hay múltiples niveles de opcionales, se pueden encadenar varias llamadas seguidas:

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

let alice = Person()
if let streetName = alice.residence?.address?.street {
    print("La calle es \(streetName)")
} else {
    print("No hay dirección disponible")
}
```

## Llamando Métodos con Encadenamiento Opcional

```swift
class Apartment {
    func ringBell() {
        print("Tocando el timbre")
    }
}

let apartment: Apartment? = nil
apartment?.ringBell() // No ejecuta nada si `apartment` es nil
```

### Cuándo Usar el Encadenamiento Opcional

- Para acceder a propiedades de instancias que podrían ser `nil`.
- Para llamar métodos en objetos opcionales sin causar errores.
- Para evitar la necesidad de múltiples verificaciones `if let` anidadas.

---

Este documento explica cómo usar **el encadenamiento opcional en Swift** como una alternativa segura al desempaquetado forzado.
