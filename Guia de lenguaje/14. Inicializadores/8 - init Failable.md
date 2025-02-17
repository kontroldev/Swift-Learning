# Inicializadores Fallables en Enumeraciones en Swift

En Swift, los **inicializadores fallables** permiten que una inicialización devuelva `nil` si la creación de la instancia no es válida. Se declaran con `init?`.

## Definiendo un Inicializador Fallable en una Enumeración

```swift
enum TemperatureUnit {
    case celsius, fahrenheit, kelvin
    
    init?(symbol: String) {
        switch symbol {
        case "C": self = .celsius
        case "F": self = .fahrenheit
        case "K": self = .kelvin
        default: return nil
        }
    }
}

let unit1 = TemperatureUnit(symbol: "C") // .celsius
let unit2 = TemperatureUnit(symbol: "X") // nil
```

## Cuándo Usar Inicializadores Fallables en Enumeraciones

- Cuando la entrada para la inicialización puede ser inválida.
- Para convertir valores de entrada en casos de enumeración de manera segura.
- Para evitar instancias incorrectas en el código.

---

Este documento explica cómo usar **inicializadores fallables en enumeraciones** en Swift para manejar inicializaciones que pueden fallar.