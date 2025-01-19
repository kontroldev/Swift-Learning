# Operador de Fusión de Nil en Swift

El **operador de fusión de nil** en Swift, representado por `??`, permite proporcionar un valor predeterminado para una variable opcional que podría contener `nil`. Este operador es útil para desempaquetar opcionales de manera segura y asignar un valor por defecto en caso de que el opcional no contenga un valor.

---

## Sintaxis

La sintaxis del operador de fusión de nil es la siguiente:

```swift
opcional ?? valor_predeterminado
```

- **`opcional`**: Una variable de tipo opcional que puede contener un valor o ser `nil`.
- **`valor_predeterminado`**: El valor que se utilizará si el opcional es `nil`.

---

## Ejemplo de Uso

Supongamos que tienes una variable opcional que puede o no contener un valor:

```swift
var nombre: String? = nil
let nombrePorDefecto = "Invitado"
let nombreUsuario = nombre ?? nombrePorDefecto
print(nombreUsuario) // Imprime: Invitado
```

En este ejemplo:
- `nombre` es una variable opcional que actualmente es `nil`.
- `nombrePorDefecto` es una constante con el valor `"Invitado"`.
- `nombreUsuario` utiliza el operador `??` para asignar el valor de `nombre` si no es `nil`; de lo contrario, asigna `nombrePorDefecto`.
- Dado que `nombre` es `nil`, `nombreUsuario` se asigna a `"Invitado"`.

---

## Comparación con Estructuras Condicionales

El operador de fusión de nil proporciona una sintaxis más concisa en comparación con las estructuras condicionales tradicionales para manejar opcionales.

### Usando `if-else`:

```swift
var nombre: String? = nil
let nombreUsuario: String
if let nombreDesempaquetado = nombre {
    nombreUsuario = nombreDesempaquetado
} else {
    nombreUsuario = "Invitado"
}
print(nombreUsuario) // Imprime: Invitado
```

### Usando el Operador de Fusión de Nil:

```swift
var nombre: String? = nil
let nombreUsuario = nombre ?? "Invitado"
print(nombreUsuario) // Imprime: Invitado
```

Ambos fragmentos de código producen el mismo resultado, pero el operador `??` es más conciso y legible.

---

## Consideraciones

### 1. **Tipos Compatibles**

El tipo de `valor_predeterminado` debe coincidir con el tipo contenido en el opcional para garantizar la compatibilidad.

```swift
let edad: Int? = nil
let edadUsuario = edad ?? 18 // Correcto: ambos son de tipo Int
```

---

### 2. **Evaluación Perezosa**

El operador `??` utiliza evaluación perezosa, lo que significa que `valor_predeterminado` solo se evalúa si el opcional es `nil`, mejorando la eficiencia del código.

#### Ejemplo:

```swift
func obtenerValorPredeterminado() -> String {
    print("Evaluando valor predeterminado")
    return "Valor por defecto"
}

let mensaje: String? = "Hola"
let resultado = mensaje ?? obtenerValorPredeterminado()
// No se imprime "Evaluando valor predeterminado" porque mensaje no es nil
```

En este caso:
- La función `obtenerValorPredeterminado()` no se ejecuta porque `mensaje` ya contiene un valor (`"Hola"`).

---


