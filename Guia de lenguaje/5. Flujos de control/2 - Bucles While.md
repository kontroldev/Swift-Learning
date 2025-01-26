# Bucles While en Swift

En Swift, los **bucles `while`** se utilizan para ejecutar repetidamente un bloque de código mientras una condición específica sea verdadera. Existen dos variantes principales: **`while`** y **`repeat-while`**.

---

## Bucle `while`

El bucle `while` evalúa la condición **antes de cada iteración**. Si la condición es verdadera, el bloque de código se ejecuta; de lo contrario, el bucle termina.

### Sintaxis:

```swift
while condición {
    // Código a ejecutar mientras la condición sea verdadera
}
```

### Ejemplo:

```swift
var contador = 5

while contador > 0 {
    print("El contador es \(contador)")
    contador -= 1
}
```

### Salida:
```
El contador es 5
El contador es 4
El contador es 3
El contador es 2
El contador es 1
```

En este ejemplo:
- El bucle `while` continúa ejecutándose mientras `contador` sea mayor que `0`.
- En cada iteración, imprime el valor actual de `contador` y luego lo decrementa en `1`.

---

## Bucle `repeat-while`

El bucle `repeat-while` evalúa la condición **después de cada iteración**, lo que garantiza que el bloque de código se ejecute **al menos una vez**, independientemente de si la condición es verdadera o falsa.

### Sintaxis:

```swift
repeat {
    // Código a ejecutar al menos una vez y mientras la condición sea verdadera
} while condición
```

### Ejemplo:

```swift
var numero = 1

repeat {
    print("El número es \(numero)")
    numero += 1
} while numero <= 5
```

### Salida:
```
El número es 1
El número es 2
El número es 3
El número es 4
El número es 5
```

En este ejemplo:
- El bloque dentro de `repeat` se ejecuta primero.
- Luego, se evalúa la condición `numero <= 5`.
- El bucle continúa mientras la condición sea verdadera.

---

## Diferencias clave entre `while` y `repeat-while`

| Aspecto                  | Bucle `while`                         | Bucle `repeat-while`                  |
|--------------------------|----------------------------------------|---------------------------------------|
| **Evaluación de la condición** | Antes de la primera iteración.         | Después de cada iteración.            |
| **Ejecución mínima**      | Puede no ejecutarse si la condición es falsa desde el principio. | Se ejecuta al menos una vez.          |
| **Uso típico**            | Cuando no estás seguro si el bloque debe ejecutarse. | Cuando deseas que el bloque se ejecute al menos una vez. |

---

## Ejemplo Comparativo

### Con un valor inicial que no cumple la condición:

#### Usando `while`:
```swift
var x = 10

while x < 5 {
    print("Valor de x: \(x)")
}
```
### Salida:
(No imprime nada porque la condición inicial es falsa).

#### Usando `repeat-while`:
```swift
var y = 10

repeat {
    print("Valor de y: \(y)")
} while y < 5
```
### Salida:
```
Valor de y: 10
```

En este caso, el bloque dentro del bucle `repeat-while` se ejecuta al menos una vez antes de evaluar la condición.

---

## Resumen

- Usa **`while`** cuando no estás seguro si el bloque debe ejecutarse (la condición debe verificarse antes).
- Usa **`repeat-while`** cuando deseas que el bloque se ejecute al menos una vez.
