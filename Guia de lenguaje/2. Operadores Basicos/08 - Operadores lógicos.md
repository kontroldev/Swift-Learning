# Operadores Lógicos en Swift

Los **operadores lógicos** en Swift se utilizan para construir expresiones lógicas complejas a partir de valores booleanos (`true` o `false`). Estos operadores permiten combinar y modificar condiciones lógicas, siendo fundamentales en estructuras de control de flujo como sentencias `if`, bucles y expresiones condicionales.

---

## Operadores Lógicos Disponibles

### 1. **NOT Lógico (`!`)**

Invierte el valor de una expresión booleana. Si la expresión es `true`, el resultado será `false`, y viceversa.

```swift
let esVerdadero = true
let esFalso = !esVerdadero // Resultado: false
```

---

### 2. **AND Lógico (`&&`)**

Devuelve `true` solo si ambas expresiones son `true`. Si alguna de las expresiones es `false`, el resultado será `false`.

```swift
let condicion1 = true
let condicion2 = false
let resultado = condicion1 && condicion2 // Resultado: false
```

---

### 3. **OR Lógico (`||`)**

Devuelve `true` si al menos una de las expresiones es `true`. Solo devuelve `false` si ambas expresiones son `false`.

```swift
let condicion1 = true
let condicion2 = false
let resultado = condicion1 || condicion2 // Resultado: true
```

---

## Uso de Operadores Lógicos en Condicionales

Los operadores lógicos son esenciales para combinar múltiples condiciones en estructuras de control, permitiendo una toma de decisiones más precisa.

### Ejemplo:

```swift
let edad = 25
let tieneIdentificacion = true

if edad >= 18 && tieneIdentificacion {
    print("Acceso permitido.")
} else {
    print("Acceso denegado.")
}
// Imprime: Acceso permitido.
```

En este ejemplo, se verifica que una persona sea mayor de edad y tenga identificación para permitir el acceso.

---

## Evaluación de Cortocircuito

Swift implementa **evaluación de cortocircuito** en los operadores `&&` y `||`. Esto significa que la evaluación de las expresiones se detiene tan pronto como el resultado esté determinado:

### AND Lógico (`&&`)

Si la primera expresión es `false`, no se evalúa la segunda, ya que el resultado será `false` independientemente de su valor.

```swift
func condicionFalsa() -> Bool {
    print("Evaluando condición falsa")
    return false
}

func condicionVerdadera() -> Bool {
    print("Evaluando condición verdadera")
    return true
}

if condicionFalsa() && condicionVerdadera() {
    print("Ambas condiciones son verdaderas.")
}
// Imprime:
// Evaluando condición falsa
```

---

### OR Lógico (`||`)

Si la primera expresión es `true`, no se evalúa la segunda, ya que el resultado será `true` independientemente de su valor.

```swift
if condicionVerdadera() || condicionFalsa() {
    print("Al menos una condición es verdadera.")
}
// Imprime:
// Evaluando condición verdadera
// Al menos una condición es verdadera.
```

---

## Agrupación de Expresiones Lógicas

Para combinar múltiples operadores lógicos y controlar el orden de evaluación, se pueden utilizar paréntesis para agrupar expresiones, mejorando la claridad y precisión de las condiciones.

### Ejemplo:

```swift
let a = true
let b = false
let c = true

if (a && b) || c {
    print("La expresión es verdadera.")
} else {
    print("La expresión es falsa.")
}
// Imprime: La expresión es verdadera.
```

En este caso:
- La expresión `(a && b)` se evalúa primero.
- Luego, el resultado se combina con `c` utilizando el operador `||`.

---

