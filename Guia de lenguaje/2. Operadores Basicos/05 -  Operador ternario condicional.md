# Operador Condicional Ternario en Swift

El **operador condicional ternario** en Swift es una forma concisa de evaluar una expresión condicional y retornar uno de dos valores posibles, dependiendo de si la condición es `true` o `false`. Este operador es una alternativa compacta a la estructura `if-else` para asignaciones y retornos simples.

---

## Sintaxis

La sintaxis del operador condicional ternario es la siguiente:

```swift
condición ? expresión_si_verdadero : expresión_si_falso
```

- **`condición`**: Una expresión que se evalúa como `true` o `false`.
- **`expresión_si_verdadero`**: Se evalúa y retorna si la condición es `true`.
- **`expresión_si_falso`**: Se evalúa y retorna si la condición es `false`.

---

## Ejemplo de Uso

Supongamos que deseas asignar un valor basado en una condición:

```swift
let edad = 18
let mensaje = edad >= 18 ? "Eres mayor de edad." : "Eres menor de edad."
print(mensaje) // Imprime: Eres mayor de edad.
```

En este ejemplo:
- La condición es `edad >= 18`.
- Si la condición es `true`, `mensaje` se asigna a `"Eres mayor de edad."`.
- Si la condición es `false`, `mensaje` se asigna a `"Eres menor de edad."`.

---

## Comparación con `if-else`

El operador ternario ofrece una forma más compacta de escribir asignaciones condicionales que un bloque `if-else`.

### Usando `if-else`:

```swift
let edad = 18
var mensaje: String
if edad >= 18 {
    mensaje = "Eres mayor de edad."
} else {
    mensaje = "Eres menor de edad."
}
print(mensaje) // Imprime: Eres mayor de edad.
```

### Usando el Operador Ternario:

```swift
let edad = 18
let mensaje = edad >= 18 ? "Eres mayor de edad." : "Eres menor de edad."
print(mensaje) // Imprime: Eres mayor de edad.
```

Ambos fragmentos de código producen el mismo resultado, pero el operador ternario es más conciso.

---

## Consideraciones

1. **Legibilidad**:
   - Aunque el operador ternario es compacto, un uso excesivo o anidado puede disminuir la legibilidad del código.
   - Es recomendable utilizarlo para condiciones simples y claras.

2. **Uso Apropiado**:
   - Para operaciones más complejas o múltiples condiciones, es preferible utilizar estructuras `if-else` tradicionales para mantener la claridad del código.

---
