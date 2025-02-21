# Desbordamiento de Valores en Swift

El **desbordamiento de valores** ocurre cuando un número excede los límites del tipo de dato que lo almacena. En Swift, los valores numéricos tienen comprobaciones de desbordamiento por defecto, lo que evita cálculos erróneos.

## Comportamiento de Desbordamiento en Swift
Por defecto, Swift lanza un error cuando un cálculo excede los límites del tipo:
```swift
var maxValue = UInt8.max  // 255
// maxValue = maxValue + 1  // Error: desbordamiento de entero
```

## Operadores de Desbordamiento
Swift proporciona operadores especiales para manejar el desbordamiento sin generar errores:
- `&+` (Suma con desbordamiento)
- `&-` (Resta con desbordamiento)
- `&*` (Multiplicación con desbordamiento)

Ejemplo:
```swift
let maxUInt8 = UInt8.max  // 255
let wrappedValue = maxUInt8 &+ 1  // Resultado: 0 (Ciclo de desbordamiento)
```

### Explicación:
- `255 + 1` en `UInt8` desborda y se reinicia a `0`.
- `0 - 1` desborda y se convierte en `255`.

## Beneficios del Manejo de Desbordamiento en Swift
✅ **Mayor seguridad**: Previene cálculos incorrectos en operaciones críticas.  
✅ **Flexibilidad con operadores de desbordamiento**: Permite manejar manualmente los ciclos numéricos.  
✅ **Optimización para hardware embebido y bajo nivel**.

.