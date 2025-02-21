# Operador AND Bit a Bit en Swift

El operador **bitwise AND (`&`)** compara los bits de dos números y establece un bit en `1` solo si ambos bits de los operandos son `1`. 

## Sintaxis
```swift
let a: UInt8 = 0b1100
let b: UInt8 = 0b1010
let result = a & b  // Resultado: 0b1000 (8 en decimal)
```

### Explicación:
- `1100` (12 en decimal)
- `1010` (10 en decimal)
- **Resultado**: `1000` (8 en decimal), ya que solo el bit en la posición 3 es `1` en ambos números.

## Uso del Operador Bitwise AND
✅ **Filtrado de bits**: Se usa para verificar si un bit específico está activado.  
✅ **Optimización en máscaras de bits**: Se emplea en operaciones de permisos y banderas.  
✅ **Manipulación de hardware y registros**.


