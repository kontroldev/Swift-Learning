# Comentarios en Swift

Los comentarios son esenciales para documentar y explicar el código, facilitando su comprensión y mantenimiento. Swift ofrece dos tipos principales de comentarios: de una sola línea y de múltiples líneas.

---

## Comentarios de Una Sola Línea

Se inician con `//` y continúan hasta el final de la línea. Son útiles para breves descripciones o anotaciones.

### Ejemplo:

```swift
// Esto es un comentario de una sola línea.
let saludo = "Hola, Mundo!" // Inicializa una variable con un saludo.
```

---

## Comentarios de Múltiples Líneas

Comienzan con `/*` y terminan con `*/`. Son ideales para bloques de texto más extensos o para desactivar secciones de código durante la depuración.

### Ejemplo:

```swift
/* Este es un comentario
   de múltiples líneas.
   Puede abarcar varias líneas. */
let despedida = "Adiós, Mundo!"
```

---

## Comentarios Anidados

Swift permite anidar comentarios de múltiples líneas, lo que es útil para comentar bloques de código que ya contienen comentarios de este tipo.

### Ejemplo:

```swift
/* Este es un comentario de múltiples líneas.
/* Este es un comentario anidado. */
Este es el final del comentario original. */
let mensaje = "Comentarios anidados en Swift."
```

---

## Buenas Prácticas

- **Claridad**: Utiliza comentarios para explicar el propósito y la lógica del código, no para describir lo obvio.

    ```swift
    // Calcula el área de un círculo dado su radio.
    let area = Double.pi * radio * radio
    ```

- **Actualización**: Asegúrate de que los comentarios se mantengan actualizados con los cambios en el código.
- **Moderación**: Evita el exceso de comentarios; el código claro y bien estructurado a menudo requiere menos comentarios.

---

