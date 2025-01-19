# Operadores de Asignación Compuesta en Swift

Los **operadores de asignación compuesta** en Swift combinan una operación aritmética o lógica con una asignación en una sola expresión. Estos operadores permiten escribir código más conciso y claro al realizar operaciones y asignaciones simultáneamente.

---

## Lista de Operadores de Asignación Compuesta

### 1. **Suma y Asignación (`+=`)**

Suma el valor de la derecha al de la izquierda y asigna el resultado a la variable de la izquierda.

```swift
var contador = 10
contador += 5 // Equivalente a: contador = contador + 5
// contador ahora es 15
```

---

### 2. **Resta y Asignación (`-=`)**

Resta el valor de la derecha al de la izquierda y asigna el resultado a la variable de la izquierda.

```swift
var saldo = 100
saldo -= 20 // Equivalente a: saldo = saldo - 20
// saldo ahora es 80
```

---

### 3. **Multiplicación y Asignación (`*=`)**

Multiplica el valor de la izquierda por el de la derecha y asigna el resultado a la variable de la izquierda.

```swift
var producto = 4
producto *= 3 // Equivalente a: producto = producto * 3
// producto ahora es 12
```

---

### 4. **División y Asignación (`/=`)**

Divide el valor de la izquierda por el de la derecha y asigna el resultado a la variable de la izquierda.

```swift
var cociente = 20
cociente /= 4 // Equivalente a: cociente = cociente / 4
// cociente ahora es 5
```

---

### 5. **Módulo y Asignación (`%=`)**

Calcula el resto de la división del valor de la izquierda entre el de la derecha y asigna el resultado a la variable de la izquierda.

```swift
var resto = 10
resto %= 3 // Equivalente a: resto = resto % 3
// resto ahora es 1
```

---

## Ventajas de Usar Operadores de Asignación Compuesta

- **Concisión**: Permiten escribir operaciones y asignaciones de manera más breve.
- **Claridad**: Hacen que el código sea más fácil de leer al reducir la redundancia.
- **Eficiencia**: Pueden mejorar la eficiencia del código al minimizar las operaciones explícitas.

---

## Consideraciones

### 1. **Tipos de Datos Compatibles**

Asegúrate de que los tipos de datos en ambos lados del operador sean compatibles para evitar errores de compilación.

```swift
var texto = "Hola"
// texto += 5 // Error: No se puede añadir un Int a un String
```

---

### 2. **Precedencia de Operadores**

Los operadores de asignación compuesta tienen una precedencia más baja que la mayoría de los otros operadores, lo que puede afectar el orden de las operaciones en expresiones más complejas.

```swift
var resultado = 2
resultado += 3 * 4 // Equivalente a: resultado += (3 * 4)
// resultado ahora es 14
```

---
