# Accediendo a Propiedades Mediante Encadenamiento Opcional en Swift

El **encadenamiento opcional** permite acceder a propiedades sin necesidad de verificar manualmente cada nivel de opcionalidad.

## Ejemplo de Acceso a Propiedades con Encadenamiento Opcional

```swift
class Person {
    var residence: Residence?
}

class Residence {
    var address: Address?
}

class Address {
    var street: String?
}

let person = Person()
if let streetName = person.residence?.address?.street {
    print("La calle es \(streetName)")
} else {
    print("No hay dirección disponible")
}
```

### Explicación del Código

- Si `residence`, `address` o `street` son `nil`, la expresión completa devuelve `nil` sin provocar un error.
- Se usa `if let` para desempaquetar el valor solo si todos los niveles contienen datos válidos.

## Accediendo a Propiedades con Valores por Defecto

Si queremos evitar que la salida sea `nil`, podemos usar el operador de coalescencia nula `??`:

```swift
let streetName = person.residence?.address?.street ?? "Calle desconocida"
print("La calle es: \(streetName)")
```

### Cuándo Usar el Encadenamiento Opcional en Propiedades

- Cuando hay múltiples niveles de opcionalidad en los objetos.
- Para evitar desempaquetar opcionales de forma forzada con `!`, lo que puede causar errores en tiempo de ejecución.
- Para mejorar la legibilidad y seguridad del código.

---

Este documento explica cómo **acceder a propiedades mediante encadenamiento opcional en Swift**, evitando errores y mejorando la claridad del código.
