# Nomenclatura de Constantes y Variables en Swift

En Swift, es fundamental seguir convenciones de nomenclatura claras y consistentes al nombrar constantes y variables. Esto mejora la legibilidad del código y facilita su mantenimiento.

---

## Reglas Generales

- **Uso de Caracteres Unicode**: Los nombres pueden contener casi cualquier carácter, incluyendo letras, números y símbolos Unicode.

    ```swift
    let π = 3.14159
    let 你好 = "Hola"
    let 🐶🐮 = "perro y vaca"
    ```

- **No Iniciar con Números**: Los nombres no deben comenzar con un número, aunque pueden contener números en otras posiciones.

    ```swift
    let número3 = 3 // Válido
    // let 3número = 3 // Inválido
    ```

- **Sin Espacios en Blanco**: Los nombres no pueden contener espacios en blanco. Utiliza notación camelCase para mejorar la legibilidad.

    ```swift
    let nombreCompleto = "Juan Pérez"
    ```

---

## Convenciones de Nomenclatura

- **camelCase para Variables y Constantes**: Comienza con una letra minúscula y cada palabra subsiguiente inicia con mayúscula.

    ```swift
    let edadUsuario = 25
    var temperaturaActual = 22.5
    ```

- **PascalCase para Tipos y Protocolos**: Las clases, estructuras, enumeraciones y protocolos deben comenzar con mayúscula.

    ```swift
    struct Usuario {
        var nombre: String
        var edad: Int
    }
    ```

---

## Palabras Reservadas

Swift tiene palabras reservadas que no pueden usarse como nombres de constantes o variables a menos que se escapen con backticks (`).

```swift
let `class` = "Esto es válido, pero no recomendable"
```

---

## Buenas Prácticas

- **Nombres Descriptivos**: Utiliza nombres que describan claramente la finalidad de la constante o variable.

    ```swift
    let númeroDeIntentos = 3
    var temperaturaExterior = 18.0
    ```

- **Evita Abreviaturas**: A menos que sean de uso común y ampliamente reconocidas.

    ```swift
    let maximoNumeroDeUsuarios = 100 // Mejor que maxNumUsuarios
    ```

- **Consistencia**: Mantén un estilo de nomenclatura consistente en todo el proyecto.

---

## Ejemplos de Nombres Válidos e Inválidos

### Válidos:

```swift
let clienteNombre = "Ana"
var índiceDeCalidadDelAire = 42
let 🐱 = "Gato"
```

### Inválidos:

```swift
// let 3dModelo = "Cubo" // No puede comenzar con un número
// let nombre completo = "Juan Pérez" // No puede contener espacios
// let var = "Variable" // 'var' es una palabra reservada
```

---

