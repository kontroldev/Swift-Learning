# Cláusulas `where` en Genéricos en Swift

Las **cláusulas `where`** permiten agregar restricciones adicionales a los tipos genéricos en funciones, estructuras y protocolos. Se utilizan para especificar **requisitos más complejos** en parámetros de tipo.

## Uso de `where` en Funciones Genéricas

```swift
func allItemsMatch<C1: Container, C2: Container>(_ container1: C1, _ container2: C2) -> Bool 
where C1.Item == C2.Item, C1.Item: Equatable {
    if container1.count != container2.count {
        return false
    }
    
    for i in 0..<container1.count {
        if container1.getItem(at: i) != container2.getItem(at: i) {
            return false
        }
    }
    return true
}
```

### Explicación:
- `C1` y `C2` deben conformar al protocolo `Container`.
- `C1.Item == C2.Item` asegura que ambos contenedores almacenan el mismo tipo de datos.
- `C1.Item: Equatable` garantiza que los elementos pueden compararse con `==`.

### Uso de la Función
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

let container1 = IntContainer(items: [1, 2, 3])
let container2 = IntContainer(items: [1, 2, 3])
print(allItemsMatch(container1, container2)) // true
```

## Beneficios de las Cláusulas `where`
- **Permiten restricciones más específicas en tipos genéricos**.
- **Facilitan la reutilización de código** en múltiples estructuras y protocolos.
- **Aseguran la seguridad de tipos**, evitando errores en la comparación de elementos.

