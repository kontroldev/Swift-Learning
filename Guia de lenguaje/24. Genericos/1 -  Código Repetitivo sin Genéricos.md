# El Problema que Resuelven los Genéricos en Swift

Los **genéricos** permiten escribir código flexible y reutilizable que puede trabajar con cualquier tipo, en lugar de estar restringido a un tipo específico. Son esenciales para evitar duplicación de código y mejorar la abstracción.

## Problema: Código Repetitivo sin Genéricos

Imagina que necesitas una función para intercambiar dos valores. Sin genéricos, tendríamos que escribir múltiples versiones de la misma función para diferentes tipos de datos.

```swift
func swapInts(_ a: inout Int, _ b: inout Int) {
    let temp = a
    a = b
    b = temp
}

func swapDoubles(_ a: inout Double, _ b: inout Double) {
    let temp = a
    a = b
    b = temp
}

func swapStrings(_ a: inout String, _ b: inout String) {
    let temp = a
    a = b
    b = temp
}
```

### Problemas de este enfoque:
- **Código repetitivo**: Se repite la misma lógica para cada tipo de dato.
- **Dificultad para mantener el código**: Si necesitamos cambiar la lógica, debemos hacerlo en múltiples funciones.
- **Falta de flexibilidad**: Solo podemos intercambiar tipos predefinidos.

## Solución: Uso de Genéricos

Con los genéricos, podemos escribir una sola función que funcione con cualquier tipo:

```swift
func swapValues<T>(_ a: inout T, _ b: inout T) {
    let temp = a
    a = b
    b = temp
}
```

### Explicación:
- Se usa `<T>` para definir un **parámetro de tipo genérico**.
- `T` actúa como un **marcador de posición** para cualquier tipo.
- Ahora podemos intercambiar cualquier tipo sin repetir código.

### Uso de la Función Genérica:
```swift
var x = 10
var y = 20
swapValues(&x, &y)
print(x, y) // 20, 10

var str1 = "Hola"
var str2 = "Swift"
swapValues(&str1, &str2)
print(str1, str2) // Swift, Hola
```

## Beneficios del Uso de Genéricos
- **Evitan la duplicación de código** y reducen el mantenimiento.
- **Permiten una programación más flexible y reusable**.
- **Son usados ampliamente en Swift**, por ejemplo en `Array`, `Dictionary` y `Set`.

