# Propiedades Computadas en Extensiones en Swift

Swift permite agregar **propiedades computadas** a tipos existentes mediante extensiones (`extension`). Esto permite extender la funcionalidad de estructuras, clases y enumeraciones sin necesidad de modificar su implementación original.

## Agregando Propiedades Computadas con Extensiones

Las extensiones pueden agregar propiedades computadas, pero no pueden agregar propiedades almacenadas.

### Ejemplo: Extender `Double` para agregar propiedades computadas

```swift
extension Double {
    var km: Double { return self * 1_000.0 }
    var m: Double { return self }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1_000.0 }
}

let distancia: Double = 1.5
print("\(distancia) kilómetros son \(distancia.km) metros")
```

### Explicación
- `extension Double` extiende el tipo `Double`.
- Se agregan propiedades computadas que convierten valores de longitud entre kilómetros, metros, centímetros y milímetros.
- Se usa `distancia.km` para convertir `1.5` kilómetros a metros.

### Salida esperada
```
1.5 kilómetros son 1500.0 metros
```

## Beneficios de Usar Propiedades Computadas en Extensiones
- **Mejoran la reutilización del código** al agregar funcionalidades sin modificar el código fuente original.
- **Encapsulan lógica específica** dentro del tipo que se está extendiendo.
- **Aumentan la legibilidad** al permitir un acceso más intuitivo a valores derivados.
