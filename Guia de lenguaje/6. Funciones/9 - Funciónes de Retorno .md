# Tipos de Función como Retorno en Swift

En Swift, una función puede devolver **otra función** como resultado. Esto permite diseñar código flexible y reutilizable, aplicando conceptos de programación funcional.

---

## ¿Cómo funciona una Función que Retorna otra Función?

El tipo de retorno de la función será otra **función con sus propios parámetros y tipo de retorno**.

### Sintaxis:
```swift
func nombreFuncion() -> (TipoParametro1, TipoParametro2) -> TipoRetorno {
    return otraFuncion
}
```

---

## Ejemplo de Función que Retorna otra Función

```swift
func elegirOperacion(_ sumar: Bool) -> (Int, Int) -> Int {
    return sumar ? (+) : (-)
}

let operacion = elegirOperacion(true)
print(operacion(10, 5))
```

### Salida:
```
15
```

En este ejemplo:
- `elegirOperacion` devuelve una función que suma o resta según el parámetro `sumar`.
- `operacion` almacena la función devuelta y la ejecuta con `10` y `5`.

---

## Uso de Closures como Retorno

También se pueden retornar **closures**, en lugar de funciones tradicionales.

### Ejemplo con Closure:
```swift
func obtenerMultiplicador() -> (Int) -> Int {
    return { $0 * 2 }
}

let multiplicador = obtenerMultiplicador()
print(multiplicador(6))
```

### Salida:
```
12
```

Aquí, `obtenerMultiplicador` devuelve un **closure** que multiplica un número por `2`.

---

## Uso de `typealias` para Mejorar Legibilidad

Para mejorar la claridad del código, podemos definir un **alias de tipo de función**.

### Ejemplo con `typealias`:
```swift
typealias Operacion = (Int, Int) -> Int

func obtenerOperacion(_ tipo: String) -> Operacion {
    if tipo == "multiplicar" {
        return { $0 * $1 }
    } else {
        return { $0 + $1 }
    }
}

let operacion = obtenerOperacion("multiplicar")
print(operacion(3, 4))
```

### Salida:
```
12
```

Aquí, `Operacion` es un alias para funciones que operan con dos enteros y devuelven un entero.

---

## Comparación con Funciones Convencionales

| Tipo de Retorno | Ejemplo |
|----------------|---------|
| **Valor convencional** | `func obtenerNumero() -> Int { return 5 }` |
| **Función como retorno** | `func obtenerOperacion() -> (Int, Int) -> Int` |

---

## Resumen

- Las funciones en Swift pueden devolver **otras funciones**.
- Se pueden usar **closures** en lugar de funciones tradicionales.
- Los **typealias** ayudan a mejorar la legibilidad del código.


