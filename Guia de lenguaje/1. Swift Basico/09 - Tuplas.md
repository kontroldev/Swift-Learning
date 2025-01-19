# Tuplas en Swift

En Swift, las **tuplas** permiten agrupar múltiples valores en una única entidad compuesta. Son útiles para combinar valores relacionados de diferentes tipos sin la necesidad de crear una estructura o clase personalizada.

---

## Creación de Tuplas

Puedes crear una tupla agrupando valores entre paréntesis. Las tuplas pueden contener valores de cualquier tipo y no tienen que ser del mismo tipo entre sí.

### Ejemplo:

```swift
let tuplaEjemplo = (404, "No encontrado")
```

En este ejemplo, `tuplaEjemplo` es una tupla que contiene un número entero y una cadena de texto.

---

## Descomposición de Tuplas

Puedes descomponer una tupla en variables o constantes individuales para acceder a sus valores.

### Ejemplo:

```swift
let (codigo, mensaje) = tuplaEjemplo
print("El código es \(codigo)") // Imprime: El código es 404
print("El mensaje es \(mensaje)") // Imprime: El mensaje es No encontrado
```

Si solo necesitas algunos de los valores de la tupla, puedes ignorar los que no te interesen utilizando un guion bajo `_`.

### Ejemplo:

```swift
let (soloCodigo, _) = tuplaEjemplo
print("El código es \(soloCodigo)") // Imprime: El código es 404
```

---

## Acceso a Elementos por Índice

También puedes acceder a los elementos de una tupla utilizando índices que comienzan en cero.

### Ejemplo:

```swift
print("El código es \(tuplaEjemplo.0)") // Imprime: El código es 404
print("El mensaje es \(tuplaEjemplo.1)") // Imprime: El mensaje es No encontrado
```

---

## Nombres de Elementos en Tuplas

Al definir una tupla, puedes asignar nombres a sus elementos para mejorar la claridad y facilitar el acceso a los valores.

### Ejemplo:

```swift
let respuestaHTTP = (codigo: 200, descripcion: "OK")
print("El código es \(respuestaHTTP.codigo)") // Imprime: El código es 200
print("La descripción es \(respuestaHTTP.descripcion)") // Imprime: La descripción es OK
```

---

## Uso de Tuplas como Valores de Retorno

Las tuplas son especialmente útiles como valores de retorno de funciones cuando deseas devolver múltiples valores relacionados.

### Ejemplo:

```swift
func obtenerEstadoServidor() -> (codigo: Int, mensaje: String) {
    // Lógica para determinar el estado del servidor
    let codigo = 200
    let mensaje = "Servidor en funcionamiento"
    return (codigo, mensaje)
}

let estado = obtenerEstadoServidor()
print("Código: \(estado.codigo), Mensaje: \(estado.mensaje)")
```

---

## Consideraciones

- Las **tuplas** son adecuadas para agrupar valores temporales y de uso limitado.
- Para estructuras de datos más complejas o que requieren persistencia, es recomendable utilizar `struct` o `class`.

---

