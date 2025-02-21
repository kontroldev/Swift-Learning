# Operadores Bit a Bit en Swift

Los **operadores bit a bit** permiten manipular los bits individuales de datos. Estos operadores se utilizan en situaciones donde la manipulación a nivel de bits es necesaria, como en programación de bajo nivel, encriptación, y manipulación de imágenes.

## Tipos de Operadores Bit a Bit
Swift proporciona los siguientes operadores bit a bit:

### 1. Operador **NOT** (`~`)
Invierte los bits de un número.
```swift
let number: UInt8 = 0b00001111
let invertedNumber = ~number // Resultado: 0b11110000
```

### 2. Operadores AND (`&`), OR (`|`), XOR (`^`)
- `&` (AND): Activa un bit si ambos bits son `1`.
- `|` (OR): Activa un bit si **al menos** un bit es `1`.
- `^` (XOR): Activa un bit si **solo uno** de los bits es `1`.
```swift
let a: UInt8 = 0b1100
let b: UInt8 = 0b1010
let andResult = a & b  // 0b1000
let orResult = a | b   // 0b1110
let xorResult = a ^ b  // 0b0110
```

### 3. Desplazamiento de Bits (`<<`, `>>`)
Mueve los bits a la izquierda o a la derecha, multiplicando o dividiendo por potencias de 2.
```swift
let shiftLeft = 4 << 1  // 8 (4 * 2)
let shiftRight = 4 >> 1 // 2 (4 / 2)
```

## Beneficios del Uso de Operadores Bit a Bit
✅ **Optimización de rendimiento**: Más rápidos que las operaciones matemáticas tradicionales.  
✅ **Uso en encriptación y compresión de datos**.  
✅ **Manipulación directa de memoria y hardware**.

