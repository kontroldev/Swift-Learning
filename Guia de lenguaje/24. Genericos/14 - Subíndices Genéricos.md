# Subíndices Genéricos en Swift

Los **subíndices genéricos** permiten definir subíndices en estructuras y clases genéricas, proporcionando flexibilidad para acceder a los elementos de una colección de tipos variados.

## Definir un Subíndice Genérico

```swift
struct GenericDictionary<Key: Hashable, Value> {
    private var storage: [Key: Value] = [:]
    
    subscript<T: Hashable>(key: T) -> Value? where T == Key {
        get {
            return storage[key]
        }
        set {
            storage[key] = newValue
        }
    }
}
```

### Explicación:
- `GenericDictionary<Key: Hashable, Value>` define un **diccionario genérico**.
- `subscript<T: Hashable>(key: T) -> Value? where T == Key` permite acceder a valores con **claves de cualquier tipo `Hashable`** que coincidan con `Key`.
- `get` devuelve el valor almacenado para la clave proporcionada.
- `set` permite modificar el valor de la clave en el diccionario.

## Uso de un Subíndice Genérico

```swift
var dictionary = GenericDictionary<String, Int>()
dictionary["Swift"] = 2025
print(dictionary["Swift"] ?? 0) // 2025
```

## Beneficios de los Subíndices Genéricos
- **Permiten flexibilidad en la manipulación de colecciones personalizadas**.
- **Garantizan seguridad de tipos** al restringir el acceso a tipos específicos.
- **Evitan la duplicación de código**, haciendo estructuras más reutilizables.
