# Manejo de Errores en Swift

En Swift, el **manejo de errores** permite responder y recuperarse de situaciones inesperadas durante la ejecución de un programa. Swift proporciona mecanismos robustos para definir, lanzar, capturar y propagar errores, asegurando que las aplicaciones puedan gestionar fallos de manera controlada y segura.

---

## Definición de Errores

En Swift, los errores se representan mediante tipos que conforman el protocolo `Error`. Generalmente, se utilizan enumeraciones (`enum`) para definir categorías de errores, lo que permite estructurar y clasificar los posibles fallos de manera clara.

### Ejemplo:

```swift
enum ErrorDeRed: Error {
    case sinConexión
    case tiempoDeEsperaAgotado
    case respuestaInválida
}
```

En este ejemplo, `ErrorDeRed` es una enumeración que conforma el protocolo `Error`, representando diferentes tipos de errores relacionados con la red.

---

## Lanzamiento de Errores

Para indicar que una función o método puede lanzar un error, se añade la palabra clave `throws` en su declaración. Dentro de esta función, se utiliza la instrucción `throw` para lanzar un error específico.

### Ejemplo:

```swift
func cargarDatosDesdeRed() throws {
    // Lógica para cargar datos
    throw ErrorDeRed.sinConexión
}
```

Aquí, `cargarDatosDesdeRed` es una función que puede lanzar un error de tipo `ErrorDeRed`.

---

## Manejo de Errores

Swift proporciona varias formas de manejar errores lanzados por funciones o métodos:

### 1. Propagación de Errores

Puedes propagar un error a la función o método que llama, permitiendo que se maneje en un nivel superior. Para ello, declaras la función con `throws` y no capturas el error dentro de ella.

```swift
func procesarDatos() throws {
    try cargarDatosDesdeRed()
    // Procesar los datos cargados
}
```

---

### 2. Manejo de Errores con `do-catch`

Utiliza una estructura `do-catch` para intentar ejecutar código que puede lanzar errores y proporcionar bloques para manejar errores específicos o generales.

```swift
do {
    try cargarDatosDesdeRed()
    // Procesar los datos cargados
} catch ErrorDeRed.sinConexión {
    print("No hay conexión a Internet.")
} catch {
    print("Ocurrió un error: \(error).")
}
```

---

### 3. Manejo de Errores como Valores Opcionales

Si solo te interesa saber si una operación tuvo éxito o no, puedes utilizar `try?` para convertir el resultado en un opcional que será `nil` en caso de error.

```swift
if let datos = try? cargarDatosDesdeRed() {
    // Procesar los datos
} else {
    print("No se pudieron cargar los datos.")
}
```

---

### 4. Afirmación de que el Error No Ocurrirá

Si estás seguro de que una función no lanzará un error en tiempo de ejecución, puedes utilizar `try!` para desempaquetar el resultado de forma forzada. Si ocurre un error, el programa se detendrá.

```swift
let datos = try! cargarDatosDesdeRed()
```

> **Nota**: Utiliza `try!` con precaución, ya que puede causar que tu aplicación se bloquee si ocurre un error inesperado.

---

## Consideraciones

- **Manejo Adecuado**: Es importante manejar los errores de manera adecuada para mejorar la robustez y la experiencia del usuario en tu aplicación.
- **Propagación Controlada**: Propaga errores solo cuando tenga sentido que el nivel superior los maneje; de lo contrario, maneja los errores localmente.
- **Claridad en los Mensajes**: Proporciona mensajes de error claros y útiles para facilitar la depuración y mejorar la experiencia del usuario.

---


