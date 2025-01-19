# Operadores de Comparación en Swift

Los **operadores de comparación** en Swift se utilizan para comparar valores, permitiendo evaluar relaciones entre ellos y tomar decisiones basadas en dichas comparaciones. Estos operadores devuelven un valor booleano (`true` o `false`) según el resultado de la comparación.

---

## Lista de Operadores de Comparación

### 1. **Igual a (`==`)**

Verifica si dos valores son iguales.

```swift
let esIgual = (5 == 5) // true
```

---

### 2. **No igual a (`!=`)**

Verifica si dos valores no son iguales.

```swift
let esDiferente = (5 != 3) // true
```

---

### 3. **Mayor que (`>`)**

Verifica si el valor de la izquierda es mayor que el de la derecha.

```swift
let esMayor = (7 > 3) // true
```

---

### 4. **Menor que (`<`)**

Verifica si el valor de la izquierda es menor que el de la derecha.

```swift
let esMenor = (2 < 5) // true
```

---

### 5. **Mayor o igual que (`>=`)**

Verifica si el valor de la izquierda es mayor o igual que el de la derecha.

```swift
let esMayorOIgual = (6 >= 6) // true
```

---

### 6. **Menor o igual que (`<=`)**

Verifica si el valor de la izquierda es menor o igual que el de la derecha.

```swift
let esMenorOIgual = (4 <= 4) // true
```

---

## Uso de Operadores de Comparación en Condicionales

Los operadores de comparación se utilizan comúnmente en estructuras de control de flujo, como las sentencias `if`, para dirigir la ejecución del código según las condiciones evaluadas.

### Ejemplo:

```swift
let edad = 18

if edad >= 18 {
    print("Eres mayor de edad.")
} else {
    print("Eres menor de edad.")
}
```

En este ejemplo, la condición `edad >= 18` determina qué mensaje se imprimirá.

---

## Comparación de Cadenas de Texto

Swift permite comparar cadenas de texto (`String`) utilizando los operadores de comparación estándar, basándose en el orden lexicográfico.

### Ejemplo:

```swift
let palabra1 = "manzana"
let palabra2 = "naranja"

if palabra1 < palabra2 {
    print("\(palabra1) viene antes que \(palabra2).")
} else {
    print("\(palabra1) viene después que \(palabra2).")
}
```

Este código determinará el orden alfabético de las dos palabras.

---

## Consideraciones

### 1. **Tipos Compatibles**

Los operadores de comparación solo pueden utilizarse entre valores del mismo tipo o de tipos que sean comparables entre sí. Intentar comparar valores de tipos incompatibles resultará en un error de compilación.

```swift
let numero = 5
let texto = "cinco"
// let resultado = (numero == texto) // Error de compilación
```

---

### 2. **Comparación de Referencias**

Para comparar si dos referencias de objetos apuntan a la misma instancia, se utilizan los operadores de identidad (`===` y `!==`).

#### Ejemplo:

```swift
class Persona {
    var nombre: String
    init(nombre: String) {
        self.nombre = nombre
    }
}

let persona1 = Persona(nombre: "Ana")
let persona2 = persona1
let persona3 = Persona(nombre: "Ana")

let esMismaReferencia = (persona1 === persona2) // true
let esDiferenteReferencia = (persona1 === persona3) // false
```

En este ejemplo:
- `persona1` y `persona2` apuntan a la misma instancia, por lo que `===` devuelve `true`.
- `persona1` y `persona3` son instancias diferentes aunque tengan los mismos valores, por lo que `===` devuelve `false`.

---
