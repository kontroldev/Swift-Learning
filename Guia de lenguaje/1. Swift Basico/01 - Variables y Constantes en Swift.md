# Variables y Constantes en Swift

En Swift, puedes almacenar datos utilizando **variables** y **constantes**, dependiendo de si necesitas que el valor sea mutable (cambiable) o inmutable (fijo).

## Variables

Las **variables** se declaran con la palabra clave `var`. Estas son mutables, lo que significa que su valor puede cambiar después de ser asignado.

### Ejemplo:

```swift
var mensaje = "Hola, Mundo!" // mensaje es una variable mutable con un valor inicial de "Hola, Mundo!"

mensaje = "Hola, Swift!" // Cambiamos el valor de la variable mensaje
```

En este ejemplo:
- `mensaje` comienza con el valor "Hola, Mundo!".
- Luego, actualizamos su valor a "Hola, Swift!".

## Constantes

Las **constantes** se declaran con la palabra clave `let`. Son inmutables, lo que significa que su valor no puede cambiar después de ser asignado.

### Ejemplo:

```swift
let pi = 3.14159 // pi es una constante inmutable con un valor inicial de 3.14159

// pi = 3.14 // Esto causará un error, ya que no se puede cambiar el valor de una constante
```

En este ejemplo:
- `pi` se declara como constante con un valor inicial de 3.14159.
- Intentar cambiar su valor a 3.14 generará un error.

Este contenido sirve como introducción a los conceptos básicos de variables y constantes en Swift. Puedes utilizarlos según las necesidades de tu programa.
