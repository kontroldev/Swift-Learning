# Restricciones de Tipo en Swift

Las **restricciones de tipo** en Swift permiten limitar los tipos que pueden ser utilizados en una función, estructura, clase o enumeración genérica. Esto se logra especificando que un tipo debe conformar a un protocolo o ser un subtipo de una clase específica.

## Definir una Restricción de Tipo con Protocolos

Para restringir un parámetro de tipo a conformar un protocolo, se usa `where` o `:` después del nombre del tipo genérico.

```swift
func findIndex<T: Equatable>(of value: T, in array: [T]) -> Int? {
    for (index, element) in array.enumerated() {
        if element == value {
            return index
        }
    }
    return nil
}
```

### Explicación:
- `<T: Equatable>` indica que `T` debe conformar al protocolo `Equatable`.
- `findIndex(of:in:)` busca el índice de un valor en un array.

### Uso de la Función con Diferentes Tipos
```swift
let numbers = [10, 20, 30, 40]
if let index = findIndex(of: 30, in: numbers) {
    print("El índice de 30 es \(index)")
}
```

## Uso de Restricciones de Tipo en Clases Genéricas

Puedes restringir un tipo genérico a ser un subtipo de una clase específica.

```swift
class Animal {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Dog: Animal {}

func printAnimalName<T: Animal>(_ animal: T) {
    print("El nombre del animal es \(animal.name)")
}
```

### Explicación:
- `<T: Animal>` restringe `T` a ser una subclase de `Animal`.
- `printAnimalName(_:)` solo acepta instancias de `Animal` o sus subclases.

## Beneficios de las Restricciones de Tipo
- **Mejoran la seguridad del código** al garantizar que los tipos cumplen con ciertos requisitos.
- **Facilitan el uso de métodos específicos de un protocolo o clase**.
- **Permiten escribir código genérico más potente y flexible**.


