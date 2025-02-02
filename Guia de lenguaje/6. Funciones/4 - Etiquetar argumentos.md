# Etiquetas de Argumentos y Nombres de Parámetros en Swift

En Swift, cada parámetro en una función tiene un **nombre de parámetro** y una **etiqueta de argumento**. Estas permiten mejorar la claridad y legibilidad del código cuando se llaman funciones.

---

## ¿Qué es una Etiqueta de Argumento?

La **etiqueta de argumento** es el nombre que se usa al llamar una función.

### ¿Qué es un Nombre de Parámetro?

El **nombre de parámetro** es el que se usa dentro de la función para referirse al valor recibido.

---

## Sintaxis Básica

```swift
func nombreFuncion(etiqueta nombre: Tipo) {
    // Uso de 'nombre' dentro de la función
}
```

### Ejemplo:
```swift
func presentar(apodo nombre: String) {
    print("Hola, me llaman \(nombre)")
}

presentar(apodo: "Swiftie")
```

### Salida:
```
Hola, me llaman Swiftie
```

En este caso:
- `apodo` es la **etiqueta de argumento**, usada al llamar la función.
- `nombre` es el **nombre del parámetro**, usado dentro de la función.

---

## Omisión de la Etiqueta de Argumento

Si no deseas usar una etiqueta de argumento, puedes colocar un **guion bajo (`_`)** antes del nombre del parámetro.

### Ejemplo:
```swift
func sumar(_ a: Int, _ b: Int) -> Int {
    return a + b
}

let resultado = sumar(4, 5)
print(resultado)
```

### Salida:
```
9
```

Aquí, los argumentos `4` y `5` se pasan sin necesidad de una etiqueta.

---

## Uso de Etiquetas de Argumentos Claras

Swift recomienda usar etiquetas de argumento que hagan que la llamada a la función sea más comprensible.

### Ejemplo:
```swift
func enviarMensaje(a destinatario: String, conContenido mensaje: String) {
    print("Enviando mensaje a \(destinatario): \(mensaje)")
}

enviarMensaje(a: "Juan", conContenido: "¡Hola!")
```

### Salida:
```
Enviando mensaje a Juan: ¡Hola!
```

Esto hace que la función sea más clara en su propósito.

---

## Comparación entre Diferentes Formas de Parámetros

| Método                        | Ejemplo                                      | Beneficio |
|-------------------------------|----------------------------------------------|-----------|
| **Etiqueta y nombre distintos** | `func presentar(apodo nombre: String)`      | Claridad en la llamada |
| **Sin etiqueta de argumento**  | `func sumar(_ a: Int, _ b: Int) -> Int`     | Llamada más breve |
| **Etiquetas explícitas**       | `func enviarMensaje(a destinatario: String)` | Mayor legibilidad |

---

## Resumen

- Usa **etiquetas de argumento** para mejorar la claridad en la llamada de funciones.
- Usa **`_` para omitir etiquetas** cuando sean innecesarias.
- Define etiquetas explícitas cuando la función requiera mayor contexto.


