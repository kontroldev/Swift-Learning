# Nombrando Parámetros de Tipo en Swift

Swift permite definir **parámetros de tipo** en funciones, estructuras, clases y enumeraciones genéricas. Para mantener la claridad y legibilidad del código, es importante nombrar adecuadamente estos parámetros.

## Convención de Nombres de Parámetros de Tipo

En Swift, los nombres de los parámetros de tipo suelen ser **letras en mayúscula**, como `T`, `U` o `V`. También es común usar nombres descriptivos cuando el propósito del tipo es más específico.

```swift
func compareValues<T: Equatable>(_ a: T, _ b: T) -> Bool {
    return a == b
}
```

### Explicación:
- `T` es un **parámetro de tipo genérico**.
- `T: Equatable` indica que `T` debe conformar al protocolo `Equatable`.
- La función `compareValues(_:_:)` puede comparar valores de **cualquier tipo** que conforme a `Equatable`.

### Uso de la Función
```swift
print(compareValues(5, 5))        // true
print(compareValues("Swift", "iOS")) // false
```

## Nombres Descriptivos para Parámetros de Tipo

Cuando un tipo tiene un propósito más específico, se recomienda usar nombres descriptivos.

```swift
struct Stack<Element> {
    var items: [Element] = []
    mutating func push(_ item: Element) {
        items.append(item)
    }
    mutating func pop() -> Element? {
        return items.popLast()
    }
}
```

### Explicación:
- `Element` se usa en lugar de `T`, ya que describe mejor su propósito.
- `Stack<Element>` puede almacenar cualquier tipo de datos.

### Uso de la Estructura Genérica
```swift
var intStack = Stack<Int>()
intStack.push(10)
intStack.push(20)
print(intStack.pop()!) // 20
```

## Beneficios de Nombrar Correctamente los Parámetros de Tipo
- **Mejora la legibilidad del código**, facilitando su comprensión.
- **Permite definir tipos más expresivos** en estructuras y funciones genéricas.
- **Facilita la reutilización del código** en diferentes contextos.

