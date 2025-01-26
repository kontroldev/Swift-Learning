# Sentencias Condicionales en Swift

Las sentencias condicionales son fundamentales para alterar el flujo de un programa en función de condiciones específicas. En Swift, las principales herramientas para manejar esta lógica son `if` y `switch`.

---

## Sentencia `if`

La sentencia `if` evalúa una condición booleana (`true` o `false`). Si la condición se cumple, se ejecuta el bloque de código asociado. Puedes añadir múltiples caminos usando `else if` y un caso predeterminado con `else`.

### Sintaxis

```swift
if condición {
    // Este bloque se ejecuta si la condición es verdadera
} else if otraCondición {
    // Este bloque se ejecuta si otraCondición es verdadera
} else {
    // Este bloque se ejecuta si ninguna condición es verdadera
}
```

### Ejemplo

```swift
let edad = 20

if edad >= 18 {
    print("Eres mayor de edad.")
} else if edad >= 13 {
    print("Eres un adolescente.")
} else {
    print("Eres un niño.")
}
```

### Explicación:
1. **Primera condición**: Si `edad >= 18`, imprime "Eres mayor de edad".
2. **Segunda condición**: Si la primera es falsa pero `edad >= 13`, imprime "Eres un adolescente".
3. **Caso por defecto**: Si ninguna condición se cumple, imprime "Eres un niño".

### Salida:
```
Eres mayor de edad.
```

**Nota**:
- Las condiciones deben evaluar a `true` o `false`.
- No necesitas paréntesis alrededor de la condición, pero el cuerpo del bloque debe estar encerrado en llaves (`{}`).

---

## Sentencia `switch`

La sentencia `switch` compara un valor contra múltiples patrones posibles y selecciona el bloque de código correspondiente al primer patrón que coincide. Es más flexible que `if` para manejar múltiples valores.

### Características Clave
1. **Patrones definidos**: Cada `case` define un patrón que se compara con el valor.
2. **Exhaustividad**: Swift requiere que los `switch` cubran todos los casos posibles, ya sea explícitamente o mediante un caso `default`.
3. **Sin "caída implícita"**: No necesitas usar `break` al final de cada caso (como en otros lenguajes).

### Sintaxis

```swift
switch valor {
case patrón1:
    // Código para el patrón1
case patrón2:
    // Código para el patrón2
default:
    // Código si no hay coincidencia con ningún caso anterior
}
```

---

### Casos Simples

```swift
let animal = "perro"

switch animal {
case "perro":
    print("Es un perro.")
case "gato":
    print("Es un gato.")
default:
    print("Es otro animal.")
}
```

### Explicación:
1. Si el valor de `animal` es `"perro"`, se ejecuta el primer caso.
2. Si el valor es `"gato"`, se ejecuta el segundo caso.
3. Para cualquier otro valor, se ejecuta el bloque `default`.

### Salida:
```
Es un perro.
```

---

### Casos con Múltiples Valores

Un solo caso puede manejar múltiples valores:

```swift
let día = "Sábado"

switch día {
case "Lunes", "Martes", "Miércoles", "Jueves", "Viernes":
    print("Es un día laborable.")
case "Sábado", "Domingo":
    print("Es fin de semana.")
default:
    print("Día no válido.")
}
```

### Salida:
```
Es fin de semana.
```

---

### Casos con Rangos

Puedes usar rangos para simplificar el manejo de valores numéricos:

```swift
let puntuación = 85

switch puntuación {
case 0..<50:
    print("Insuficiente")
case 50..<70:
    print("Suficiente")
case 70..<90:
    print("Notable")
case 90...100:
    print("Sobresaliente")
default:
    print("Puntuación no válida")
}
```

### Explicación:
1. Los rangos como `..<` (abiertos) y `...` (cerrados) definen intervalos.
2. Por ejemplo, `0..<50` incluye desde 0 hasta 49, mientras que `90...100` incluye ambos extremos.

### Salida:
```
Notable
```

---

### Casos Default

El caso `default` es obligatorio si no puedes garantizar que todos los valores posibles estén cubiertos:

```swift
let número = 10

switch número {
case 1:
    print("El número es 1")
case 2:
    print("El número es 2")
default:
    print("Es otro número.")
}
```

### Salida:
```
Es otro número.
```

---

## Diferencias entre `if` y `switch`

| Aspecto                 | **`if`**                              | **`switch`**                            |
|-------------------------|---------------------------------------|-----------------------------------------|
| **Uso principal**       | Evaluar una o varias condiciones      | Comparar un valor con múltiples patrones |
| **Complejidad**         | Ideal para pocas condiciones          | Más limpio para múltiples opciones       |
| **Patrones complejos**  | No admite patrones avanzados          | Admite rangos, tuplas y más              |

---

## Consideraciones Importantes

1. **Condiciones Booleanas (`if`)**:
   - Las condiciones deben evaluar a `true` o `false`.
   - Usar una expresión como `if x = 5` generará un error porque la asignación no es una condición válida.

2. **Exhaustividad en Switch**:
   - Swift requiere que los casos sean exhaustivos.
   - Usa un caso `default` si no puedes cubrir todos los valores posibles.

3. **Sin Caída Implícita**:
   - A diferencia de otros lenguajes como C o JavaScript, Swift no permite que los casos caigan al siguiente por defecto.
   - Si necesitas este comportamiento, usa explícitamente la palabra clave `fallthrough`.

---
