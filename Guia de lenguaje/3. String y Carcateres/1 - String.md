# Literales de Cadena en Swift

En Swift, un **literal de cadena** es una secuencia de caracteres delimitada por comillas dobles (`"`), utilizada para representar texto en el código fuente. Los literales de cadena permiten definir valores de tipo `String` de manera directa y son fundamentales para manejar texto en las aplicaciones.

---

## Sintaxis Básica

Un literal de cadena simple se define encerrando el texto entre comillas dobles:

```swift
let saludo = "Hola, mundo!"
```

En este ejemplo, la variable `saludo` contiene la cadena `"Hola, mundo!"`.

---

## Literales de Cadena Multilínea

Swift permite definir cadenas que abarcan múltiples líneas utilizando comillas triples (`"""`):

```swift
let poema = """
Rosas son rojas,
Violetas son azules,
Swift es genial,
Y también lo eres tú.
"""
```

Este literal de cadena multilínea conserva los saltos de línea y la indentación presentes en el código fuente.

---

## Caracteres Especiales en Literales de Cadena

Para incluir caracteres especiales dentro de una cadena, se utilizan **secuencias de escape** precedidas por una barra invertida (`\`):

- **Comillas Dobles (`\"`)**: Permite insertar una comilla doble dentro de la cadena.

    ```swift
    let cita = "Ella dijo: \"Swift es increíble\"."
    ```

- **Barra Invertida (`\\`)**: Inserta una barra invertida en la cadena.

    ```swift
    let ruta = "C:\\Usuarios\\kontroldev\\Documentos"
    ```

- **Salto de Línea (`\n`)**: Inserta un salto de línea.

    ```swift
    let mensaje = "Primera línea\nSegunda línea"
    ```

- **Tabulación (`\t`)**: Inserta un carácter de tabulación.

    ```swift
    let lista = "1.\tManzanas\n2.\tNaranjas\n3.\tPeras"
    ```

---

## Interpolación de Cadenas

La **interpolación de cadenas** permite insertar valores de variables y expresiones dentro de un literal de cadena, facilitando la creación de mensajes dinámicos:

```swift
let nombre = "kontroldev"
let lenguaje = "Swift"
let mensaje = "Hola, \(nombre). ¡Bienvenido a \(lenguaje) Learning!"
```

En este caso, `mensaje` contendrá la cadena `"Hola, kontroldev. ¡Bienvenido a Swift Learning!"`.

---

## Literales de Cadena con Delimitadores Alternativos

Swift permite definir literales de cadena utilizando **delimitadores alternativos** para evitar la necesidad de escapar ciertos caracteres. Esto se logra colocando signos de numeral (`#`) antes y después de las comillas:

```swift
let ruta = #"C:\Usuarios\kontroldev\Documentos"#
```

Aquí, no es necesario escapar las barras invertidas, ya que el literal de cadena está delimitado por `#`.

---
