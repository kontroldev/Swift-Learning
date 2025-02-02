#  Tipos de Función como Parámetros en Swift

En Swift, una función puede aceptar **otra función como parámetro**. Esto permite escribir código más flexible y reutilizable, facilitando la abstracción de lógica repetitiva.

---

## ¿Qué es una Función como Parámetro?

Un parámetro de tipo función se define indicando:
1. Los tipos de los parámetros de la función esperada.
2. El tipo de retorno de la función esperada.

### Sintaxis:
```swift
func nombreFuncion(parametro: (Tipo1, Tipo2) -> TipoRetorno) {
    // Código que usa la función pasada como argumento
}
```

---

## Ejemplo de Función como Parámetro

```swift
func multiplicar(a: Int, b: Int) -> Int {
    return a * b
}

func operarNumeros(_ a: Int, _ b: Int, operacion: (Int, Int) -> Int) -> Int {
    return operacion(a, b)
}

let resultado = operarNumeros(4, 5, multiplicar)
print(resultado)
```

### Salida:
```
20
```

En este ejemplo:
- `multiplicar` es una función que se pasa como parámetro.
- `operarNumeros` acepta una función `(Int, Int) -> Int` como parámetro.
- Se llama a `operarNumeros` con `multiplicar`, aplicando la operación sobre `4` y `5`.

---

## Uso de Closures en Parámetros de Función

En lugar de pasar una función predefinida, se puede usar un **closure**.

### Ejemplo con Closure:
```swift
let suma = operarNumeros(6, 3, { (a, b) in a + b })
print(suma)
```

### Versión simplificada con **sintaxis de cierre abreviado**:
```swift
let resta = operarNumeros(10, 2, { $0 - $1 })
print(resta)
```

### Salidas:
```
9
8
```

---

## Ejemplo con Tipos de Función Nombrados

También podemos definir un **alias de tipo de función** para mayor claridad.

### Ejemplo:
```swift
typealias OperacionMatematica = (Int, Int) -> Int

func realizarOperacion(_ a: Int, _ b: Int, operacion: OperacionMatematica) -> Int {
    return operacion(a, b)
}

let division: OperacionMatematica = { $0 / $1 }
print(realizarOperacion(20, 4, division))
```

### Salida:
```
5
```

---

## Comparación entre Parámetros de Función y Parámetros Convencionales

| Tipo de Parámetro        | Ejemplo |
|--------------------------|---------|
| **Convencional**         | `func sumar(a: Int, b: Int) -> Int` |
| **Función como Parámetro** | `func operar(_ a: Int, _ b: Int, operacion: (Int, Int) -> Int) -> Int` |

---

## Resumen

- Se pueden pasar funciones como parámetros para modularizar código.
- Se pueden usar **closures** en lugar de funciones predefinidas.
- **Typealias** puede hacer que los tipos de función sean más legibles.

