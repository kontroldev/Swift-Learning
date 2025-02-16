# Inicialización desde un Valor Bruto en Enumeraciones en Swift

Swift permite inicializar una instancia de una enumeración a partir de un valor bruto (`raw value`). Si el valor coincide con uno de los casos definidos, se obtiene la instancia correspondiente; de lo contrario, la inicialización devuelve `nil`.

## Inicialización de una Enumeración con `rawValue`

Si una enumeración tiene valores brutos (`raw values`), se puede crear una instancia usando su inicializador `init?(rawValue:)`.

```swift
enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}
```

Intentemos crear una instancia desde un valor bruto:

```swift
if let planet = Planet(rawValue: 3) {
    print("Selected planet: \(planet)")
} else {
    print("Invalid planet")
}
```

### Salida esperada:
```
Selected planet: earth
```

## Manejo de Valores Inválidos

Si intentamos inicializar con un valor no definido en la enumeración, la inicialización devuelve `nil`:

```swift
let unknownPlanet = Planet(rawValue: 10)
print(unknownPlanet) // nil
```

Este comportamiento es útil cuando los valores provienen de una fuente externa, como una base de datos o una API, y no podemos garantizar que siempre sean válidos.

---

Este documento explica cómo inicializar una instancia de una enumeración en Swift utilizando valores brutos (`raw values`), permitiendo convertir valores dinámicos en tipos seguros.