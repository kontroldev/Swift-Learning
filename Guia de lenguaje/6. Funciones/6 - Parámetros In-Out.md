# Parámetros In-Out en Swift

En Swift, los **parámetros `inout`** permiten modificar el valor de un argumento dentro de una función y reflejar el cambio fuera de la función. Se usan cuando una función necesita alterar el valor original de una variable en lugar de trabajar con una copia.

---

## ¿Qué son los Parámetros `inout`?

Por defecto, los parámetros en Swift son **de solo lectura dentro de la función**. Sin embargo, si se declara un parámetro como `inout`, se puede modificar su valor y el cambio persistirá fuera de la función.

### Sintaxis:
```swift
func nombreDeLaFuncion(parametro: inout Tipo) {
    // Modificar el valor del parámetro
}
```

---

## Ejemplo de Parámetro `inout`

```swift
func duplicarValor(_ numero: inout Int) {
    numero *= 2
}

var miNumero = 5
duplicarValor(&miNumero)
print(miNumero)
```

### Salida:
```
10
```

En este ejemplo:
- `numero` es un **parámetro `inout`**, lo que permite modificar su valor.
- Se usa `&miNumero` al llamar la función para indicar que el argumento puede modificarse.
- Después de llamar a `duplicarValor`, `miNumero` cambia de `5` a `10`.

---

## Importante: Reglas de los Parámetros `inout`

- **Los parámetros `inout` no pueden ser constantes ni literales.**
- **No pueden tener valores predeterminados.**
- **No se pueden usar con parámetros variádicos (`...`).**
- **Debe usarse el operador `&` al pasar el argumento a la función.**

### Ejemplo Incorrecto:
```swift
func incrementar(_ numero: inout Int) {
    numero += 1
}

incrementar(5) // ❌ Error: 5 es un literal constante
```

### Ejemplo Correcto:
```swift
var valor = 5
incrementar(&valor) // ✅ Válido
```

---

## Comparación: Parámetros Normales vs `inout`

| Tipo de Parámetro | Modifica el valor original | Se pasa con `&` |
|------------------|---------------------------|----------------|
| **Normal**       | ❌ No                      | ❌ No          |
| **`inout`**      | ✅ Sí                       | ✅ Sí          |

---

## Resumen

- Usa **`inout`** cuando necesites modificar un valor directamente dentro de una función.
- Recuerda usar el operador **`&`** al llamar la función con un argumento `inout`.
- No se puede usar `inout` con **constantes, literales o parámetros variádicos**.


