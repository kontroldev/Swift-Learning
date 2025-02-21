# Operadores de Desbordamiento en Swift

Swift proporciona **operadores de desbordamiento** para manejar cálculos numéricos que pueden exceder los límites de almacenamiento de un tipo de dato. Estos operadores permiten que los valores desbordados se envuelvan en el valor mínimo o máximo del tipo.

## Tipos de Operadores de Desbordamiento
1. **Suma con desbordamiento (`&+`)**
2. **Resta con desbordamiento (`&-`)**
3. **Multiplicación con desbordamiento (`&*`)**

Estos operadores son útiles cuando se desea ejecutar cálculos de bajo nivel sin interrupciones de errores de desbordamiento.

## Ejemplo de Uso
```swift
var maxValue = UInt8.max  // 255
let wrappedValue = maxValue &+ 1  // Resultado: 0 (Se reinicia el valor a 0)

var minValue = UInt8.min  // 0
let wrappedNegative = minValue &- 1  // Resultado: 255 (Desbordamiento hacia arriba)
```

### Explicación:
- `UInt8.max` (255) más 1 con `&+` vuelve a 0.
- `UInt8.min` (0) menos 1 con `&-` vuelve a 255.

## Beneficios del Uso de Operadores de Desbordamiento
✅ **Evita errores de ejecución**: Útil en cálculos intensivos sin interrupciones inesperadas.  
✅ **Optimización en hardware embebido**: Especialmente útil en programación de bajo nivel.  
✅ **Control explícito del comportamiento de desbordamiento**.

.
