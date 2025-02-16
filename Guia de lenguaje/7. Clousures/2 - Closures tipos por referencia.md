# Los Closures son Tipos de Referencia

En Swift, los *closures* son tipos de referencia. Esto significa que cuando asignas un *closure* a múltiples variables, todas ellas referencian el mismo *closure* en memoria.

## Ejemplo de Closures como Referencias

```swift
func makeIncrementer(amount: Int) -> () -> Int {
    var total = 0
    return {
        total += amount
        return total
    }
}

let incrementByTen = makeIncrementer(amount: 10)
print(incrementByTen()) // 10
print(incrementByTen()) // 20

let anotherIncrementer = incrementByTen
print(anotherIncrementer()) // 30
```

### Explicación

En el ejemplo anterior:
- `makeIncrementer(amount:)` devuelve un *closure* que incrementa `total` por el valor especificado.
- `incrementByTen` es una referencia al *closure* retornado.
- `anotherIncrementer` es otra referencia al mismo *closure*, por lo que comparten el mismo estado de `total`.

Como resultado, cuando llamamos `anotherIncrementer()`, `total` sigue aumentando como si estuviéramos llamando a `incrementByTen()`.

---

Este documento explica cómo los *closures* en Swift funcionan como tipos de referencia, permitiendo compartir y modificar el mismo estado en distintas referencias.
