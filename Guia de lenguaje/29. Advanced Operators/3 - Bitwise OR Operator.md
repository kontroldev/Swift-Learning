# Operador OR Bit a Bit en Swift

El operador **bitwise OR (`|`)** compara los bits de dos números y establece un bit en `1` si al menos uno de los bits de los operandos es `1`.

## Sintaxis
```swift
let a: UInt8 = 0b1100
let b: UInt8 = 0b1010
let result = a | b  // Resultado: 0b1110 (14 en decimal)
```

### Explicación:
- `1100` (12 en decimal)
- `1010` (10 en decimal)
- **Resultado**: `1110` (14 en decimal), ya que cualquier bit en `1` en al menos uno de los operandos se mantiene.

## Uso del Operador Bitwise OR
✅ **Activación de bits**: Se usa para establecer bits específicos en una máscara de bits.  
✅ **Optimización en permisos y banderas**: Se emplea para combinar múltiples opciones en un solo valor.  
✅ **Manipulación de hardware y registros**.

