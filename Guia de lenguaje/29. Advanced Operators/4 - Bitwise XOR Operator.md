# Operador XOR Bit a Bit en Swift

El operador **bitwise XOR (`^`)** compara los bits de dos números y establece un bit en `1` si los bits correspondientes de los operandos son diferentes.

## Sintaxis
```swift
let a: UInt8 = 0b1100
let b: UInt8 = 0b1010
let result = a ^ b  // Resultado: 0b0110 (6 en decimal)
```

### Explicación:
- `1100` (12 en decimal)
- `1010` (10 en decimal)
- **Resultado**: `0110` (6 en decimal), ya que solo los bits en posiciones diferentes se establecen en `1`.

## Uso del Operador Bitwise XOR
✅ **Alternancia de bits**: Se usa para intercambiar estados en algoritmos criptográficos y de seguridad.  
✅ **Optimización en procesamiento de datos**: Se emplea para detectar cambios entre valores binarios.  
✅ **Manipulación de hardware y registros**.

