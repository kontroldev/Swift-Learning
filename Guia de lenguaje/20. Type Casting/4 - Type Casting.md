# Type Casting para `Any` y `AnyObject` en Swift

Swift proporciona los tipos `Any` y `AnyObject` para trabajar con valores de cualquier tipo y cualquier clase, respectivamente. 

## Uso de `Any`

El tipo `Any` puede representar instancias de **cualquier tipo**, incluidas clases, estructuras, enumeraciones y tipos de funciones.

```swift
var items: [Any] = []
items.append(42)               // Int
items.append(3.14)             // Double
items.append("Swift")         // String
items.append(Movie(title: "Inception", director: "Christopher Nolan"))
```

Para comprobar el tipo de un valor almacenado en `Any`, se puede usar el operador `is`, y para realizar un downcasting, se emplea `as?` o `as!`.

```swift
for item in items {
    if let number = item as? Int {
        print("Número entero: \(number)")
    } else if let movie = item as? Movie {
        print("Película: \(movie.title), Director: \(movie.director)")
    }
}
```

## Uso de `AnyObject`

El tipo `AnyObject` se usa para representar **cualquier instancia de una clase**. Solo los objetos de clase pueden asignarse a variables de tipo `AnyObject`.

```swift
class ExampleClass {
    var name: String
    init(name: String) { self.name = name }
}

let someObjects: [AnyObject] = [
    ExampleClass(name: "Objeto 1"),
    ExampleClass(name: "Objeto 2")
]
```

Se puede realizar downcasting seguro con `as?` para acceder a las propiedades de los objetos almacenados en `AnyObject`.

```swift
for object in someObjects {
    if let example = object as? ExampleClass {
        print("Nombre del objeto: \(example.name)")
    }
}
```

## Diferencias Clave entre `Any` y `AnyObject`
| Tipo         | Permite almacenar |
|-------------|-----------------|
| `Any`       | Cualquier tipo, incluidas clases, estructuras, enumeraciones y funciones. |
| `AnyObject` | Solo instancias de clases. |

## Beneficios del Type Casting con `Any` y `AnyObject`
- **Mayor flexibilidad** al trabajar con diferentes tipos en una misma colección.
- **Capacidad de almacenar múltiples tipos de datos** en una sola variable.
- **Uso eficiente del type casting** con `is`, `as?` y `as!` para acceder a tipos específicos.


