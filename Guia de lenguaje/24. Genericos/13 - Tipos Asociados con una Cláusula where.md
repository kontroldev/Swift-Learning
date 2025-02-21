# Tipos Asociados con una Cláusula `where` en Swift

Las **cláusulas `where` en tipos asociados** permiten restringir aún más los tipos asociados en protocolos, asegurando que cumplan con ciertos requisitos.

## Definir un Protocolo con un Tipo Asociado Restringido

```swift
protocol Container {
    associatedtype Item
    mutating func append(_ item: Item)
}

protocol SuffixableContainer: Container {
    associatedtype Suffix: SuffixableContainer where Suffix.Item == Item
    func suffix(_ size: Int) -> Suffix
}
```

### Explicación:
- `Container` define un **tipo asociado `Item`**, sin restricciones.
- `SuffixableContainer` extiende `Container` y añade:
  - `associatedtype Suffix`, que **debe conformar `SuffixableContainer`**.
  - `Suffix.Item == Item`, asegurando que `Suffix` almacene el mismo tipo de `Item`.

## Implementación de un Tipo que Usa esta Restricción

```swift
struct Stack<Element>: SuffixableContainer {
    var items: [Element] = []
    mutating func append(_ item: Element) {
        items.append(item)
    }
    
    func suffix(_ size: Int) -> Stack {
        let suffixItems = items.suffix(size)
        return Stack(items: Array(suffixItems))
    }
}
```

### Explicación:
- `Stack<Element>` conforma `SuffixableContainer`.
- `suffix(_:)` devuelve otro `Stack<Element>` con los últimos elementos.

## Beneficios de las Cláusulas `where` en Tipos Asociados
- **Permiten definir relaciones más precisas entre tipos genéricos**.
- **Facilitan la reutilización de código** sin perder seguridad de tipos.
- **Evitan restricciones innecesarias en la declaración principal del protocolo**.

