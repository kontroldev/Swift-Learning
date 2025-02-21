# Verificación de Conformidad a un Protocolo en Swift

Swift permite verificar si una instancia conforma a un protocolo en tiempo de ejecución utilizando los operadores `is`, `as?` y `as!`. Esto es útil cuando se trabaja con tipos heterogéneos.

## Uso del Operador `is`

El operador `is` se utiliza para comprobar si una instancia conforma a un protocolo sin hacer una conversión.

### Ejemplo: Verificar Conformidad con `is`

```swift
protocol HasName {
    var name: String { get }
}

struct Person: HasName {
    let name: String
}

let someone: Any = Person(name: "Carlos")

if someone is HasName {
    print("La instancia conforma al protocolo HasName.")
} else {
    print("La instancia NO conforma al protocolo HasName.")
}
```

### Salida esperada
```
La instancia conforma al protocolo HasName.
```

## Uso de `as?` y `as!` para la Conversión de Protocolos

Los operadores `as?` y `as!` intentan convertir una instancia a un tipo que conforma al protocolo.

- `as?` devuelve un **valor opcional** (`nil` si la conversión falla).
- `as!` hace un **downcast forzado** y generará un error si la conversión falla.

### Ejemplo: Conversión con `as?`

```swift
if let namedObject = someone as? HasName {
    print("Nombre: \(namedObject.name)")
} else {
    print("La conversión falló.")
}
```

### Ejemplo: Conversión con `as!`

```swift
let namedObject = someone as! HasName
print("Nombre: \(namedObject.name)")
```

⚠ **Nota:** Usar `as!` sin verificar antes puede causar un **error en tiempo de ejecución** si la conversión no es válida.

## Beneficios de Verificar Conformidad a Protocolos
- **Permite trabajar con tipos heterogéneos** de manera segura.
- **Evita errores en tiempo de ejecución** mediante la verificación opcional (`as?`).
- **Facilita la programación orientada a protocolos**, mejorando la reutilización del código.
