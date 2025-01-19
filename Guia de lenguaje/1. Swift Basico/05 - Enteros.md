# Enteros en Swift

En Swift, los **enteros** son números sin componente fraccionario, como `42` y `-23`. Swift proporciona tipos enteros con y sin signo en diferentes tamaños, para adaptarse a diversas necesidades de programación.

---

## Tipos de Enteros

Swift ofrece múltiples tipos de enteros, tanto con signo (positivos y negativos) como sin signo (solo positivos).

### Enteros con Signo

- **Int**: Tipo entero con signo cuyo tamaño depende de la arquitectura del dispositivo (32 o 64 bits). Es el tipo preferido para la mayoría de los casos.

    ```swift
    let edad: Int = 30
    ```

- **Int8, Int16, Int32, Int64**: Tipos enteros con signo de tamaños específicos (8, 16, 32 y 64 bits).

    ```swift
    let temperatura: Int16 = -5
    ```

### Enteros sin Signo

- **UInt**: Tipo entero sin signo cuyo tamaño depende de la arquitectura del dispositivo.

    ```swift
    let conteo: UInt = 100
    ```

- **UInt8, UInt16, UInt32, UInt64**: Tipos enteros sin signo de tamaños específicos.

    ```swift
    let nivelDeBrillo: UInt8 = 255
    ```

---

## Rango de Valores

Cada tipo entero tiene un rango específico de valores que puede representar:

- **Int**: En una arquitectura de 64 bits, `Int` puede representar valores desde `-9,223,372,036,854,775,808` hasta `9,223,372,036,854,775,807`.

    ```swift
    print("Valor mínimo de Int: \(Int.min)")
    print("Valor máximo de Int: \(Int.max)")
    ```

- **UInt**: En una arquitectura de 64 bits, `UInt` puede representar valores desde `0` hasta `18,446,744,073,709,551,615`.

    ```swift
    print("Valor mínimo de UInt: \(UInt.min)")
    print("Valor máximo de UInt: \(UInt.max)")
    ```

---

## Selección del Tipo Adecuado

- **Uso de Int**: En la mayoría de los casos, se recomienda utilizar `Int` para variables y constantes enteras, ya que ofrece un equilibrio entre tamaño y rendimiento.
- **Uso de Tipos Específicos**: Opta por tipos como `UInt8` o `Int32` solo cuando tengas requisitos específicos de tamaño o rendimiento o al interactuar con APIs que requieran esos tipos.

---

## Literales Numéricos

Swift permite representar números enteros en diferentes bases numéricas:

- **Decimal**: Base 10 (por defecto).

    ```swift
    let decimal = 17
    ```

- **Binario**: Base 2, prefijado con `0b`.

    ```swift
    let binario = 0b10001 // Equivale a 17 en decimal
    ```

- **Octal**: Base 8, prefijado con `0o`.

    ```swift
    let octal = 0o21 // Equivale a 17 en decimal
    ```

- **Hexadecimal**: Base 16, prefijado con `0x`.

    ```swift
    let hexadecimal = 0x11 // Equivale a 17 en decimal
    ```

---

## Separadores de Dígitos

Para mejorar la legibilidad de números largos, puedes utilizar guiones bajos `_` como separadores de dígitos. Estos separadores no afectan el valor del número.

```swift
let numeroGrande = 1_000_000
```

---
