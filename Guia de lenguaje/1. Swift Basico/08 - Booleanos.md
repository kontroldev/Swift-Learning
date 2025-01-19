# Valores Booleanos en Swift

En Swift, los **valores booleanos** se representan mediante el tipo `Bool`, que puede contener únicamente los valores `true` o `false`. Los booleanos son fundamentales para controlar el flujo de ejecución en programas, permitiendo la toma de decisiones basadas en condiciones lógicas.

---

## Declaración de Variables Booleanas

Puedes declarar variables o constantes de tipo `Bool` asignándoles directamente los valores `true` o `false`.

### Ejemplos:

```swift
let esMayorDeEdad: Bool = true
var tienePermiso: Bool = false
```

En estos ejemplos:
- `esMayorDeEdad` es una constante booleana con el valor `true`.
- `tienePermiso` es una variable booleana con el valor `false`.

---

## Uso de Booleanos en Condicionales

Los valores booleanos se utilizan comúnmente en estructuras de control de flujo, como las sentencias `if`, para determinar qué bloques de código deben ejecutarse.

### Ejemplo:

```swift
let tieneEntrada = true

if tieneEntrada {
    print("Bienvenido al concierto.")
} else {
    print("Necesitas una entrada para ingresar.")
}
```

En este caso:
- Si `tieneEntrada` es `true`, se imprimirá “Bienvenido al concierto.”
- De lo contrario, se imprimirá “Necesitas una entrada para ingresar.”

---

## Operadores Lógicos

Swift proporciona operadores lógicos para combinar y manipular valores booleanos:

- **NOT (`!`)**: Invierte el valor de un booleano.

    ```swift
    let esVisible = false
    if !esVisible {
        print("El elemento está oculto.")
    }
    ```

- **AND (`&&`)**: Devuelve `true` si ambos operandos son `true`.

    ```swift
    let tieneUsuario = true
    let tieneContraseña = true
    if tieneUsuario && tieneContraseña {
        print("Puedes iniciar sesión.")
    }
    ```

- **OR (`||`)**: Devuelve `true` si al menos uno de los operandos es `true`.

    ```swift
    let esAdmin = false
    let esEditor = true
    if esAdmin || esEditor {
        print("Tienes acceso de edición.")
    }
    ```

---

## Comparaciones que Devuelven Booleanos

Las operaciones de comparación en Swift producen valores booleanos, que luego pueden utilizarse en estructuras de control de flujo.

### Ejemplo:

```swift
let edad = 20
if edad >= 18 {
    print("Eres mayor de edad.")
} else {
    print("Eres menor de edad.")
}
```

En este ejemplo:
- La expresión `edad >= 18` evalúa a `true` si `edad` es mayor o igual a 18, permitiendo determinar si alguien es mayor de edad.

---

