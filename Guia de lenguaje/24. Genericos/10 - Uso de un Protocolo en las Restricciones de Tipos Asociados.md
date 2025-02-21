# Uso de un Protocolo en las Restricciones de Tipos Asociados en Swift

En Swift, un **tipo asociado** dentro de un protocolo puede estar restringido para conformar a otro protocolo. Esto se hace utilizando `where` o especificando el protocolo directamente.

## Definir un Protocolo con una Restricción de Tipo Asociado

```swift
protocol Container {
    associatedtype Item: Equatable
    func add(_ item: Item)
    func contains(_ item: Item) -> Bool
}
```

### Explicación:
- `associatedtype Item: Equatable` restringe `Item` para que **deba conformar a `Equatable`**.
- `contains(_:)` ahora puede comparar elementos usando `==`.

## Implementación de un Protocolo con Restricción de Tipo Asociado

```swift
struct Box<T: Equatable>: Container {
    var items: [T] = []
    
    func add(_ item: T) {
        items.append(item)
    }
    
    func contains(_ item: T) -> Bool {
        return items.contains(item)
    }
}
```

### Explicación:
- `Box<T: Equatable>` conforma `Container`, y su tipo `T` debe ser `Equatable`.
- `contains(_:)` usa `items.contains(item)`, que requiere `Equatable`.

## Beneficios de Restringir Tipos Asociados
- **Garantiza la seguridad de tipos**, asegurando que los valores cumplen con ciertos requisitos.
- **Permite el uso de métodos específicos del protocolo en la implementación**.
- **Facilita la reutilización y flexibilidad del código en protocolos genéricos**.

