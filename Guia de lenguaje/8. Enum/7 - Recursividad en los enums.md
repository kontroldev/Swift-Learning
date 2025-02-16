# Enumeraciones Recursivas en Swift

Las *enumeraciones recursivas* son aquellas que tienen instancias de sí mismas como valores asociados. En Swift, se utiliza la palabra clave `indirect` para habilitar la recursión en una enumeración.

## Definición de una Enumeración Recursiva

Para definir una enumeración recursiva, debes marcar la enumeración completa o casos individuales con `indirect`:

```swift
indirect enum ArithmeticExpression {
    case number(Int)
    case addition(ArithmeticExpression, ArithmeticExpression)
    case multiplication(ArithmeticExpression, ArithmeticExpression)
}
```

También puedes marcar solo los casos específicos en lugar de toda la enumeración:

```swift
enum ArithmeticExpression {
    case number(Int)
    indirect case addition(ArithmeticExpression, ArithmeticExpression)
    indirect case multiplication(ArithmeticExpression, ArithmeticExpression)
}
```

## Evaluación de una Expresión Recursiva

Para evaluar una expresión aritmética representada por la enumeración, se puede usar la recursión:

```swift
func evaluate(_ expression: ArithmeticExpression) -> Int {
    switch expression {
    case .number(let value):
        return value
    case .addition(let left, let right):
        return evaluate(left) + evaluate(right)
    case .multiplication(let left, let right):
        return evaluate(left) * evaluate(right)
    }
}
```

## Uso de la Enumeración Recursiva

Podemos construir y evaluar expresiones matemáticas de manera estructurada:

```swift
let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let sum = ArithmeticExpression.addition(five, four)
let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))

print(evaluate(product)) // (5 + 4) * 2 = 18
```

---

Este documento explica cómo usar enumeraciones recursivas en Swift, permitiendo modelar estructuras de datos y operaciones matemáticas mediante la recursión.
