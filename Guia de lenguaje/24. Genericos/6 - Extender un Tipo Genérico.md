# Extender un Tipo Genérico en Swift

En Swift, puedes **extender un tipo genérico** para agregar nueva funcionalidad, sin necesidad de modificar su implementación original.

## Definir y Extender un Tipo Genérico

Un tipo genérico se extiende utilizando el mismo parámetro de tipo (`T`).

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

extension Stack {
    var top: T? {
        return items.last
    }
}
```

### Explicación:
- `Stack<T>` es una **estructura genérica** que almacena elementos de cualquier tipo.
- La **extensión** agrega una propiedad computada `top`, que devuelve el último elemento sin eliminarlo.

## Uso de la Extensión en un Tipo Genérico

```swift
var intStack = Stack<Int>()
intStack.push(10)
intStack.push(20)
print(intStack.top!) // 20
```

## Beneficios de Extender un Tipo Genérico
- **Permite agregar funcionalidades sin modificar la implementación original**.
- **Mantiene el código modular y reutilizable**.
- **Asegura la compatibilidad con diferentes tipos de datos**.

