# Llamando Métodos Mediante Encadenamiento Opcional en Swift

El **encadenamiento opcional** en Swift permite llamar métodos en objetos opcionales sin necesidad de realizar un desempaquetado forzado.

## Llamando a Métodos con Encadenamiento Opcional

```swift
class Person {
    var residence: Residence?
}

class Residence {
    func printWelcome() {
        print("Bienvenido a casa!")
    }
}

let person = Person()
person.residence?.printWelcome() // No ejecuta nada si `residence` es nil
```

### Explicación del Código

- Si `residence` es `nil`, la llamada a `printWelcome()` no se ejecuta y no causa error.
- Si `residence` tiene un valor, el método se ejecuta normalmente.

## Llamando a Métodos con Retorno

Si el método devuelve un valor, el encadenamiento opcional devuelve un valor opcional.

```swift
class House {
    func numberOfRooms() -> Int {
        return 3
    }
}

let myHouse: House? = nil
let roomCount = myHouse?.numberOfRooms()
print(roomCount ?? 0) // Imprime 0 si `myHouse` es nil
```

### Cuándo Usar el Encadenamiento Opcional en Métodos

- Cuando no se sabe si el objeto está inicializado.
- Para evitar desempaquetar opcionales de manera insegura con `!`.
- Para escribir código más seguro y limpio.

---

Este documento explica cómo **llamar métodos mediante encadenamiento opcional en Swift**, asegurando seguridad y claridad en el código.
