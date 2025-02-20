# Sintaxis de Extensiones en Swift

Swift permite extender tipos existentes mediante extensiones (`extension`). Esto permite agregar nuevas funcionalidades a estructuras, clases, enumeraciones y protocolos sin necesidad de modificar su código original.

## Definiendo una Extensión

La sintaxis básica de una extensión en Swift es:

```swift
extension SomeType {
    // Nuevas propiedades, métodos, inicializadores, etc.
}
```

Por ejemplo, se puede agregar un método a `Double` para convertir valores a metros:

```swift
extension Double {
    var meters: Double { return self / 100.0 }
}

let distancia = 150.0.meters
print("Distancia en metros: \(distancia)")
```

### Explicación
- `extension Double` extiende el tipo `Double` sin modificar su implementación original.
- Se agrega una propiedad computada `meters` que convierte un valor de centímetros a metros.
- Se usa la nueva funcionalidad en una instancia de `Double`.

### Salida esperada
```
Distancia en metros: 1.5
```
