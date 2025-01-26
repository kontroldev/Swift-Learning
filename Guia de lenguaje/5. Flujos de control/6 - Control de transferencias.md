# Sentencias de Transferencia de Control en Swift

Las **sentencias de transferencia de control** permiten alterar el flujo de ejecución de un programa. Estas sentencias son útiles para detener bucles, saltar iteraciones, salir de funciones o manejar errores. En Swift, las principales sentencias de transferencia de control son:

- `continue`
- `break`
- `fallthrough`
- `return`
- `throw`

---

## 1. **`continue`**

La sentencia `continue` se utiliza dentro de un bucle para detener la iteración actual y pasar directamente a la siguiente. Es útil cuando deseas omitir ciertos casos sin salir completamente del bucle.

### Ejemplo:

```swift
let números = [1, 2, 3, 4, 5]

for número in números {
    if número % 2 == 0 {
        continue // Omite los números pares
    }
    print(número)
}
```

### Salida:
```
1
3
5
```

### Explicación:
- El bucle itera sobre cada número.
- Si el número es par (`número % 2 == 0`), la sentencia `continue` salta a la siguiente iteración.
- Solo se imprimen los números impares.

---

## 2. **`break`**

La sentencia `break` se utiliza para terminar inmediatamente la ejecución de un bucle o una sentencia `switch`.

### Ejemplo en un Bucle:

```swift
let números = [1, 2, 3, 4, 5]

for número in números {
    if número == 3 {
        break // Termina el bucle cuando encuentra el número 3
    }
    print(número)
}
```

### Salida:
```
1
2
```

### Ejemplo en un `switch`:

```swift
let letra: Character = "a"

switch letra {
case "a", "e", "i", "o", "u":
    print("\(letra) es una vocal.")
    break
default:
    print("\(letra) no es una vocal.")
}
```

### Salida:
```
a es una vocal.
```

### Explicación:
- Aunque Swift no requiere explícitamente `break` en los `switch`, puedes usarlo para indicar el final del caso o para mayor claridad.

---

## 3. **`fallthrough`**

La sentencia `fallthrough` permite que la ejecución continúe en el siguiente caso de una sentencia `switch`, incluso si la condición del siguiente caso no se cumple.

### Ejemplo:

```swift
let número = 3
var descripción = "El número \(número) es"

switch número {
case 3:
    descripción += " un número primo,"
    fallthrough
case 4:
    descripción += " y también es un número entero."
default:
    descripción += " un número."
}

print(descripción)
```

### Salida:
```
El número 3 es un número primo, y también es un número entero.
```

### Explicación:
- Cuando el caso `3` coincide, la sentencia `fallthrough` hace que el programa continúe ejecutando el caso `4`, sin verificar su condición.
- Esto es útil para lógica acumulativa entre casos.

---

## 4. **`return`**

La sentencia `return` se usa para salir de una función. Si la función tiene un valor de retorno, debe incluir dicho valor.

### Ejemplo:

```swift
func saludar(persona: String) -> String {
    return "Hola, \(persona)!"
}

let saludo = saludar(persona: "Juan")
print(saludo)
```

### Salida:
```
Hola, Juan!
```

### Explicación:
- La función `saludar` devuelve un saludo personalizado usando `return`.
- La variable `saludo` almacena el valor devuelto.

---

## 5. **`throw`**

La sentencia `throw` se usa para lanzar un error desde una función que puede fallar (declarada con `throws`). Los errores se manejan usando bloques `do-catch`.

### Ejemplo:

```swift
enum ErrorDeDivisión: Error {
    case divisiónPorCero
}

func dividir(_ numerador: Double, entre denominador: Double) throws -> Double {
    if denominador == 0 {
        throw ErrorDeDivisión.divisiónPorCero
    }
    return numerador / denominador
}

do {
    let resultado = try dividir(10, entre: 0)
    print("Resultado: \(resultado)")
} catch ErrorDeDivisión.divisiónPorCero {
    print("Error: No se puede dividir por cero.")
}
```

### Salida:
```
Error: No se puede dividir por cero.
```

### Explicación:
- La función `dividir` lanza un error si el denominador es igual a `0`.
- El bloque `do-catch` maneja el error lanzado por la función.

---

## Resumen General

| Sentencia   | Uso                                                                 |
|-------------|---------------------------------------------------------------------|
| **`continue`** | Omite la iteración actual y pasa a la siguiente.                     |
| **`break`**    | Detiene un bucle o una sentencia `switch`.                          |
| **`fallthrough`** | Continúa con el siguiente caso en un `switch`, sin verificar la condición. |
| **`return`**   | Finaliza una función y devuelve un valor (si corresponde).          |
| **`throw`**    | Lanza un error desde una función que puede fallar (`throws`).       |

---

Estas sentencias proporcionan flexibilidad para controlar el flujo del programa y gestionar diferentes escenarios de manera eficiente. Si necesitas ejemplos adicionales o explicaciones más avanzadas sobre alguna de estas sentencias, ¡no dudes en consultarme! 😊


