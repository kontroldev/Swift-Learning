# Números de Punto Flotante en Swift

En Swift, los **números de punto flotante** se utilizan para representar valores con componentes fraccionarios, como `3.14` o `-273.15`. Estos números son esenciales para cálculos que requieren precisión decimal, como operaciones científicas, gráficas y financieras.

---

## Tipos de Números de Punto Flotante

Swift proporciona varios tipos de punto flotante para adaptarse a diferentes necesidades de precisión y uso de memoria:

- **Float**: Representa un número de punto flotante de precisión simple (32 bits). Es adecuado cuando el uso de memoria es una preocupación y se puede tolerar una menor precisión.

    ```swift
    let temperatura: Float = 36.6
    ```

- **Double**: Representa un número de punto flotante de doble precisión (64 bits). Es el tipo preferido en Swift para valores decimales, ya que ofrece una mayor precisión.

    ```swift
    let pi: Double = 3.141592653589793
    ```

- **Float16**: Introducido en Swift 5.3, representa un número de punto flotante de media precisión (16 bits). Su uso es menos común y se limita a aplicaciones específicas donde el rendimiento y el uso de memoria son críticos, y se puede tolerar una precisión significativamente menor.

    ```swift
    let pequeñoValor: Float16 = 0.3333
    ```

---

## Literales de Punto Flotante

Los literales de punto flotante pueden escribirse con o sin un exponente, y pueden ser positivos o negativos.

### Ejemplos:

```swift
let decimal = 12.1875
let conExponente = 1.21875e1 // Equivale a 12.1875
let negativo = -42.0
```

---

## Conversión entre Tipos Numéricos

Swift no realiza conversiones implícitas entre tipos numéricos para evitar pérdidas de precisión. Por lo tanto, es necesario convertir explícitamente entre tipos cuando sea necesario.

### Ejemplo:

```swift
let entero = 3
let decimal = 0.14159
let pi = Double(entero) + decimal // pi es de tipo Double y su valor es 3.14159
```

---

## Operaciones con Números de Punto Flotante

Los números de punto flotante en Swift soportan las operaciones aritméticas estándar: suma (`+`), resta (`-`), multiplicación (`*`) y división (`/`).

### Ejemplo:

```swift
let resultado = 3.0 + 0.14159 // resultado es 3.14159
```

---

## Consideraciones sobre la Precisión

Debido a la naturaleza de los números de punto flotante y su representación en la memoria, es posible que algunas operaciones no produzcan resultados exactos. Es importante tener en cuenta esta limitación al realizar comparaciones o cálculos que requieran alta precisión.

### Ejemplo:

```swift
let valor1 = 0.1
let valor2 = 0.2
if valor1 + valor2 == 0.3 {
    print("Iguales")
} else {
    print("Diferentes") // Esto se imprimirá debido a la imprecisión en la representación
}
```

---

