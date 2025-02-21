# Precedencia y Asociatividad en Swift

En Swift, **la precedencia y la asociatividad** determinan el orden en que los operadores se evalúan en una expresión.

## Precedencia de Operadores
Cada operador en Swift tiene un **nivel de precedencia**, lo que define su prioridad al evaluar una expresión. Los operadores con **mayor precedencia** se evalúan antes que los de menor precedencia.

Ejemplo:
```swift
let result = 2 + 3 * 4  // Resultado: 14, porque `*` tiene mayor precedencia que `+`
```
### Explicación:
1. `3 * 4` se evalúa primero (`12`).
2. Luego, `2 + 12` da como resultado `14`.

## Asociatividad de Operadores
Cuando dos operadores tienen la misma precedencia, **la asociatividad** define el orden en que se evalúan:
- **Izquierda a derecha (`left`)**: Se evalúan de izquierda a derecha.
- **Derecha a izquierda (`right`)**: Se evalúan de derecha a izquierda.

Ejemplo de operadores asociativos:
```swift
let result = 4 - 2 - 1  // Resultado: 1, porque `-` es asociativo a la izquierda
```
### Explicación:
1. `4 - 2` se evalúa primero (`2`).
2. Luego, `2 - 1` da como resultado `1`.

## Uso de Paréntesis para Controlar la Evaluación
Para cambiar el orden de evaluación, se pueden usar paréntesis:
```swift
let result = (2 + 3) * 4  // Resultado: 20, ya que `2 + 3` se evalúa primero
```

## Beneficios de Conocer la Precedencia y Asociatividad
✅ **Evita errores en cálculos complejos.**  
✅ **Facilita la lectura y comprensión del código.**  
✅ **Mejora la eficiencia del código sin necesidad de usar paréntesis innecesarios.**


