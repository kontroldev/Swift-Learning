# Trabajando con Caracteres en Swift

En Swift, un **carácter** es una unidad individual de texto que representa un solo símbolo, como una letra, número o emoji. El tipo `Character` se utiliza para almacenar estos valores individuales.

---

## Declaración de Caracteres

Puedes declarar una variable o constante de tipo `Character` asignándole un único carácter entre comillas dobles:

```swift
let letra: Character = "A"
```

Swift infiere el tipo `Character` cuando se asigna un solo carácter, por lo que la anotación explícita del tipo es opcional:

```swift
let simbolo = "!"
```

---

## Iteración sobre una Cadena

Las cadenas en Swift (`String`) son colecciones de caracteres. Puedes iterar sobre cada carácter de una cadena utilizando un bucle `for-in`:

```swift
let saludo = "Hola"
for caracter in saludo {
    print(caracter)
}
// Imprime:
// H
// o
// l
// a
```

---

## Concatenación de Caracteres y Cadenas

Puedes combinar caracteres y cadenas utilizando el operador de adición (`+`):

```swift
let signoDeExclamacion: Character = "!"
let mensaje = "Hola" + String(signoDeExclamacion)
print(mensaje) // Imprime: Hola!
```

En este ejemplo, convertimos el `Character` a `String` antes de la concatenación.

---

## Contando Caracteres en una Cadena

Para obtener el número de caracteres en una cadena, utiliza la propiedad `.count`:

```swift
let frase = "Swift es genial!"
print("La frase tiene \(frase.count) caracteres.")
// Imprime: La frase tiene 16 caracteres.
```

---

## Comparación de Caracteres

Puedes comparar caracteres utilizando los operadores de igualdad (`==`) y desigualdad (`!=`):

```swift
let letraA: Character = "A"
let letraB: Character = "B"

if letraA != letraB {
    print("\(letraA) y \(letraB) son diferentes.")
}
// Imprime: A y B son diferentes.
```

---

## Caracteres Especiales

Swift permite incluir caracteres especiales mediante **secuencias de escape**:

- **Nueva línea (`\n`)**: Inserta un salto de línea.
- **Tabulación (`\t`)**: Inserta una tabulación horizontal.
- **Comillas dobles (`\"`)**: Inserta una comilla doble.
- **Barra invertida (`\\`)**: Inserta una barra invertida.

### Ejemplo:

```swift
let nuevaLinea: Character = "\n"
let tabulacion: Character = "\t"
let comillaDoble: Character = "\""
let barraInvertida: Character = "\\"
```

---

## Unicode y Caracteres

Swift es compatible con Unicode, lo que permite representar una amplia gama de caracteres, incluidos emojis y símbolos de diferentes idiomas:

```swift
let corazon: Character = "❤️"
let bandera: Character = "🇪🇸"
```

Estos caracteres se pueden utilizar en cadenas y se cuentan como un solo carácter, aunque su representación subyacente pueda ocupar más de un byte.

---

