# Operadores de Rango en Swift

Swift ofrece operadores de rango que permiten expresar secuencias de valores de manera concisa. Estos operadores son especialmente útiles en estructuras de control de flujo, como bucles y declaraciones condicionales.

---

## Operador de Rango Cerrado (`...`)

El operador de rango cerrado (`...`) define un rango que incluye todos los valores desde el límite inferior hasta el límite superior, ambos inclusive.

### Sintaxis

```swift
let rangoCerrado = inicio...fin
```

### Ejemplo

```swift
for numero in 1...5 {
    print(numero)
}
// Imprime:
// 1
// 2
// 3
// 4
// 5
```

En este ejemplo, el bucle `for` itera desde `1` hasta `5`, incluyendo ambos extremos.

---

## Operador de Rango Semiabierto (`..<`)

El operador de rango semiabierto (`..<`) define un rango que incluye todos los valores desde el límite inferior hasta, pero sin incluir, el límite superior.

### Sintaxis

```swift
let rangoSemiabierto = inicio..<fin
```

### Ejemplo

```swift
for numero in 1..<5 {
    print(numero)
}
// Imprime:
// 1
// 2
// 3
// 4
```

En este caso, el bucle `for` itera desde `1` hasta `4`, excluyendo el `5`.

---

## Operador de Rango Unilateral

Swift también proporciona operadores de rango unilateral que continúan indefinidamente en una dirección.

### Rango Unilateral hacia la Derecha

Define un rango que comienza en el valor especificado y se extiende hacia valores mayores.

```swift
let rangoDerecha = inicio...
```

### Rango Unilateral hacia la Izquierda

Define un rango que se extiende desde valores menores hasta el valor especificado.

```swift
let rangoIzquierda = ...fin
```

### Ejemplo

```swift
let numeros = [10, 20, 30, 40, 50]
let subarray = numeros[2...] // subarray contiene [30, 40, 50]
```

En este caso, `subarray` incluye todos los elementos desde el índice `2` hasta el final del array.

---

## Consideraciones

1. **Seguridad en Rangos**:
   - Al utilizar operadores de rango con colecciones, asegúrate de que los índices estén dentro de los límites para evitar errores en tiempo de ejecución.

2. **Aplicaciones Comunes**:
   - Los operadores de rango son útiles para iterar sobre secuencias, definir subrangos en colecciones y trabajar con intervalos numéricos.

---

