# Operadores Aritméticos en Swift

Swift proporciona una serie de operadores aritméticos que permiten realizar operaciones matemáticas básicas de manera sencilla y eficiente.

---

## Operadores Aritméticos Básicos

Swift soporta los cuatro operadores aritméticos estándar para todos los tipos numéricos:

- **Suma (`+`)**: Adiciona dos valores.

    ```swift
    let suma = 5 + 3 // Resultado: 8
    ```

- **Resta (`-`)**: Resta el segundo valor del primero.

    ```swift
    let resta = 10 - 2 // Resultado: 8
    ```

- **Multiplicación (`*`)**: Multiplica dos valores.

    ```swift
    let multiplicacion = 4 * 2 // Resultado: 8
    ```

- **División (`/`)**: Divide el primer valor entre el segundo.

    ```swift
    let division = 16 / 2 // Resultado: 8
    ```

- **Módulo (`%`)**: Devuelve el resto de la división entre dos valores.

    ```swift
    let modulo = 17 % 3 // Resultado: 2
    ```

---

## Consideraciones Importantes

### 1. División entre Cero

Intentar dividir por cero provocará un error en tiempo de ejecución. Es importante asegurarse de que el divisor no sea cero antes de realizar una división.

```swift
let divisor = 0
// let resultado = 10 / divisor // Error en tiempo de ejecución
```

### 2. Tipos de Datos

Los operadores aritméticos en Swift no permiten operaciones entre diferentes tipos de datos sin conversión explícita. Es necesario asegurarse de que ambos operandos sean del mismo tipo o convertirlos adecuadamente.

```swift
let entero = 5
let decimal = 2.5
// let resultado = entero + decimal // Error de compilación
let resultado = Double(entero) + decimal // Correcto
```

### 3. Overflow (Desbordamiento)

Por defecto, los operadores aritméticos en Swift no permiten que los valores excedan el rango permitido para el tipo de dato, evitando desbordamientos. Si se desea permitir el desbordamiento, Swift proporciona operadores específicos como `&+`, `&-`, `&*`.

```swift
let maxInt = Int.max
// let overflow = maxInt + 1 // Error en tiempo de ejecución
let overflow = maxInt &+ 1 // Permite desbordamiento
```

---

## Operadores Unarios

Swift también proporciona operadores unarios para realizar operaciones aritméticas:

- **Negación (`-`)**: Cambia el signo de un número.

    ```swift
    let positivo = 3
    let negativo = -positivo // Resultado: -3
    ```

- **Más Unario (`+`)**: Devuelve el valor sin cambios. Aunque no es comúnmente utilizado, está disponible.

    ```swift
    let numero = -5
    let mismoNumero = +numero // Resultado: -5
    ```

---

Este resumen proporciona una visión general sobre el uso de los operadores aritméticos en Swift. Para más detalles, puedes consultar la documentación oficial de Swift. Si tienes alguna pregunta adicional o necesitas más ejemplos, ¡no dudes en consultarme! 😊

Fuentes
