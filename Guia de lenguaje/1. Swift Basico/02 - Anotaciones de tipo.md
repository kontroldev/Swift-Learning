# Anotaciones de Tipo en Swift

En Swift, las **anotaciones de tipo** te permiten especificar explícitamente el tipo de dato que una variable, constante o función debe contener o devolver. Aunque Swift utiliza la inferencia de tipos para deducir automáticamente el tipo de una variable o constante, las anotaciones de tipo son útiles para mejorar la claridad y la legibilidad del código, especialmente en situaciones donde la inferencia no es obvia.

## Sintaxis de las Anotaciones de Tipo

Para declarar una variable o constante con una anotación de tipo, coloca dos puntos `:` después del nombre, seguido del tipo de dato.

### Ejemplos:

```swift
let mensaje: String = "Hola, Mundo!"
var temperatura: Double = 36.6
```

En estos ejemplos:
- `mensaje` se declara como una constante de tipo String.
- `temperatura` se declara como una variable de tipo Double.

## Uso de Anotaciones de Tipo en Funciones

Las anotaciones de tipo también se utilizan para especificar los tipos de los parámetros y el tipo de retorno de una función.

### Ejemplo:

```swift
func sumar(a: Int, b: Int) -> Int {
    return a + b
}
```

En este ejemplo:
- La función `sumar` tiene dos parámetros: `a` y `b`, ambos de tipo Int.
- La función devuelve un valor de tipo Int.

## Beneficios de las Anotaciones de Tipo

- **Claridad**: Especificar los tipos de datos hace que el código sea más legible y comprensible.
- **Prevención de errores**: Ayuda a evitar errores en tiempo de compilación al asegurar que las variables y constantes contienen datos del tipo esperado.
- **Documentación**: Sirve como documentación integrada, indicando claramente las expectativas de tipos en el código.

## Inferencia de Tipos en Swift

Swift es capaz de inferir el tipo de una variable o constante a partir del valor que se le asigna, lo que permite omitir las anotaciones de tipo en muchos casos.

### Ejemplo sin Anotación de Tipo:

```swift
let nombre = "Ana" // Swift infiere que nombre es de tipo String
```

Aunque la inferencia de tipos es poderosa, en situaciones complejas o para mejorar la claridad, es recomendable utilizar anotaciones de tipo explícitas[1][2][3].

Este resumen proporciona una visión general sobre cómo y cuándo utilizar las anotaciones de tipo en Swift. Para más detalles, puedes consultar la documentación oficial de Swift.
