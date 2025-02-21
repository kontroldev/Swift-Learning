# Tipos Asociados en Swift

Los **tipos asociados** (`associatedtype`) permiten definir **un marcador de posición para un tipo** dentro de un protocolo. Esto permite que cualquier tipo que conforme al protocolo pueda especificar su propio tipo concreto.

## Definir un Tipo Asociado en un Protocolo

```swift
protocol Container {
    associatedtype Item
    func add(_ item: Item)
    func getItem(at index: Int) -> Item
}
```

### Explicación:
- `associatedtype Item` define un tipo que será **determinado por la implementación**.
- `add(_:)` y `getItem(at:)` usan `Item`, pero su tipo real lo define el tipo conforme.

## Implementación de un Protocolo con Tipos Asociados

```swift
struct IntContainer: Container {
    var items: [Int] = []
    
    func add(_ item: Int) {
        items.append(item)
    }
    
    func getItem(at index: Int) -> Int {
        return items[index]
    }
}
```

### Explicación:
- `IntContainer` conforma `Container`, y **define `Item` como `Int`**.
- `add(_:)` y `getItem(at:)` operan sobre valores enteros (`Int`).

## Beneficios de los Tipos Asociados
- **Permiten mayor flexibilidad** en protocolos genéricos.
- **Facilitan la reutilización del código** sin restringirlo a un tipo específico.
- **Son fundamentales en la programación orientada a protocolos** en Swift.
