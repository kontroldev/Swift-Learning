# Operaciones Comunes con Cadenas en Swift

En Swift, las **cadenas de texto** (`String`) son colecciones de caracteres (`Character`), lo que permite acceder y modificar su contenido de diversas maneras. A continuación, se presentan algunas operaciones comunes para trabajar con cadenas en Swift.

---

## Acceder a Caracteres Individuales

Para obtener un carácter específico de una cadena, utiliza los índices proporcionados por Swift:

### Ejemplo:

```swift
let saludo = "¡Hola, mundo!"
let indice = saludo.index(saludo.startIndex, offsetBy: 7)
let caracter = saludo[indice]
print(caracter) // Imprime: m
```

En este ejemplo:
- `indice` representa la posición del octavo carácter en la cadena `saludo`, que es `'m'`.

---

## Insertar y Eliminar Caracteres

Puedes insertar o eliminar caracteres en una cadena mutable utilizando los métodos `insert(_:at:)` y `remove(at:)`.

### Insertar un Carácter:

```swift
var mensaje = "Hola, mundo"
mensaje.insert("!", at: mensaje.endIndex)
print(mensaje) // Imprime: Hola, mundo!
```

### Eliminar un Carácter:

```swift
mensaje.remove(at: mensaje.index(before: mensaje.endIndex))
print(mensaje) // Imprime: Hola, mundo
```

En este ejemplo:
- Se inserta un signo de exclamación al final de la cadena.
- Luego, se elimina el último carácter (el signo de exclamación).

---

## Subcadenas

Swift permite extraer subcadenas utilizando rangos de índices.

### Ejemplo:

```swift
let inicio = saludo.startIndex
let final = saludo.index(inicio, offsetBy: 5)
let subcadena = saludo[inicio..<final]
print(subcadena) // Imprime: ¡Hola
```

En este caso:
- Se obtiene una subcadena desde el inicio hasta el sexto carácter de la cadena `saludo`.

---

## Nota sobre Índices

Los índices en Swift son del tipo `String.Index` y están diseñados para manejar correctamente caracteres Unicode que pueden ocupar más de una posición en memoria. Por esta razón:
- No puedes usar índices enteros directamente (como en algunos otros lenguajes).
- Debes usar los métodos proporcionados por Swift como `startIndex`, `endIndex`, `index(_:offsetBy:)`, y `index(before:)` para manipular índices de manera segura.

---

## Consideraciones Importantes

1. **Compatibilidad con Unicode**:
   - Los índices manejan correctamente caracteres Unicode que pueden ocupar múltiples posiciones en memoria (como emojis o caracteres acentuados).

2. **Seguridad**:
   - Siempre verifica que los índices estén dentro del rango válido de la cadena para evitar errores.

3. **Subcadenas**:
   - Las subcadenas (`Substring`) comparten memoria con la cadena original. Si necesitas almacenar una subcadena por separado, conviértela a una nueva cadena (`String`).

---
