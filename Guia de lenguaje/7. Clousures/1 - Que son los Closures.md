# Closures

Un *closure* en Swift es un bloque de código auto-contenido que puedes pasar y utilizar en tu código. Los *closures* en Swift son similares a las funciones pero tienen una sintaxis más ligera y pueden capturar y almacenar referencias a variables y constantes del contexto en el que están definidos.

Swift proporciona tres formas principales de *closures*:
- Funciones globales, que tienen un nombre y no capturan valores.
- Funciones anidadas, que tienen un nombre y pueden capturar valores de la función envolvente.
- Expresiones de *closures*, que son bloques de código sin nombre y pueden capturar valores del contexto en el que están definidos.

## Expresiones de Closure

Las *closure expressions* proporcionan una manera de escribir *closures* en una forma más breve y concisa. Se utilizan comúnmente al trabajar con funciones de orden superior como `sorted(by:)`, `map(_:)`, y `filter(_:)`.

A continuación, se muestra un ejemplo de uso de un *closure* para ordenar un arreglo de nombres en orden descendente:

```swift
let names = ["Juan", "Ana", "Carlos", "Beatriz"]
let sortedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in
    return s1 > s2
})
print(sortedNames) // ["Juan", "Carlos", "Beatriz", "Ana"]
```

### Inferencia de tipo a partir del contexto

El tipo de los parámetros y el tipo de retorno pueden inferirse automáticamente a partir del contexto, permitiendo una forma más breve:

```swift
let sortedNamesInferred = names.sorted(by: { s1, s2 in s1 > s2 })
print(sortedNamesInferred) // ["Juan", "Carlos", "Beatriz", "Ana"]
```

### Nombres abreviados de parámetros

Swift permite el uso de nombres abreviados `$0`, `$1`, `$2`, etc., para los parámetros del *closure*:

```swift
let sortedNamesShorthand = names.sorted(by: { $0 > $1 })
print(sortedNamesShorthand) // ["Juan", "Carlos", "Beatriz", "Ana"]
```

### Uso de operadores como closures

Los operadores pueden ser utilizados directamente como funciones:

```swift
let sortedNamesOperator = names.sorted(by: >)
print(sortedNamesOperator) // ["Juan", "Carlos", "Beatriz", "Ana"]
```

## Trailing Closures

Si el último parámetro de una función es un *closure*, se puede escribir fuera de los paréntesis:

```swift
func executeClosure(closure: () -> Void) {
    closure()
}

executeClosure {
    print("Closure executed")
}
```

## Captura de valores

Los *closures* pueden capturar valores del contexto en el que fueron definidos:

```swift
func makeCounter() -> () -> Int {
    var count = 0
    return {
        count += 1
        return count
    }
}

let increment = makeCounter()
print(increment()) // 1
print(increment()) // 2
```

---

Este archivo cubre los conceptos básicos de los *closures* en Swift, siguiendo la estructura de la documentación oficial con ejemplos en inglés y explicaciones en castellano.
