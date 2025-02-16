# Valores Asociados en Enumeraciones en Swift

Las enumeraciones en Swift pueden almacenar valores adicionales junto a cada caso. Esto permite que cada caso tenga información específica en el momento de su uso.

## Definición de una Enumeración con Valores Asociados

Puedes definir una enumeración en la que cada caso tenga valores asociados de distintos tipos:

```swift
enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}
```

## Asignación de Valores Asociados

Cuando creas una instancia de la enumeración, debes proporcionar los valores asociados:

```swift
var productCode = Barcode.upc(8, 85909, 51226, 3)
productCode = .qrCode("ABCD1234")
```

## Extracción de Valores Asociados

Puedes obtener los valores asociados utilizando `switch`:

```swift
switch productCode {
case .upc(let numberSystem, let manufacturer, let product, let check):
    print("UPC: \(numberSystem), \(manufacturer), \(product), \(check)")
case .qrCode(let code):
    print("QR Code: \(code)")
}
```

### Salida esperada:
```
QR Code: ABCD1234
```

También puedes usar `_` para ignorar valores que no necesitas:

```swift
switch productCode {
case .upc(_, _, _, let check):
    print("Check digit: \(check)")
case .qrCode(let code):
    print("QR Code: \(code)")
}
```

---

Este documento explica cómo usar valores asociados en enumeraciones en Swift, permitiendo que los casos almacenen datos adicionales para mayor flexibilidad.
