# Tipos Genéricos en Swift

Los **tipos genéricos** permiten definir estructuras, clases y enumeraciones que pueden trabajar con cualquier tipo, proporcionando flexibilidad y reutilización del código.

## Definir un Tipo Genérico

Un tipo genérico se define con un **parámetro de tipo** dentro de `<>`.

```swift
struct Stack<T> {
    var items: [T] = []
    mutating func push(_ item: T) {
        items.append(item)
    }
    mutating func pop() -> T? {
        return items.popLast()
    }
}
```

### Explicación:
- `Stack<T>` es una **estructura genérica** donde `T` representa un tipo flexible.
- `items` es un array que almacena elementos de tipo `T`.
- `push(_:)` y `pop()` permiten agregar y quitar elementos de la pila.

## Uso de un Tipo Genérico

```swift
var intStack = Stack<Int>()
intStack.push(10)
intStack.push(20)
print(intStack.pop()!) // 20

var stringStack = Stack<String>()
stringStack.push("Swift")
stringStack.push("Generics")
print(stringStack.pop()!) // Generics
```

## Beneficios de los Tipos Genéricos
- **Evitan la duplicación de código**, ya que funcionan con múltiples tipos.
- **Mejoran la reutilización**, facilitando la creación de estructuras reutilizables.
- **Aseguran la seguridad de tipos**, evitando conversiones innecesarias.

