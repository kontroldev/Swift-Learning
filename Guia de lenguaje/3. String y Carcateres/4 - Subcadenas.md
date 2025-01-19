# Subcadenas (Substring) en Swift

En Swift, una **subcadena** (`Substring`) es una porción de una cadena más grande. Cuando extraes una subcadena de una cadena existente, obtienes una instancia del tipo `Substring`, no una nueva `String`. Las `Substring` comparten la misma memoria que la cadena original, lo que las hace más eficientes en términos de rendimiento y uso de memoria.

---

## Creación de una Subcadena

Puedes crear una subcadena utilizando métodos como `prefix(_:)`, `suffix(_:)` o mediante rangos de índices.

### Ejemplo con Rangos de Índices:

```swift
let frase = "Bienvenido a Swift"
let indiceEspacio = frase.firstIndex(of: " ") ?? frase.endIndex
let primeraPalabra = frase[..<indiceEspacio]
print(primeraPalabra) // Imprime: Bienvenido
```

En este ejemplo:
- `primeraPalabra` es una `Substring` que contiene los caracteres desde el inicio de `frase` hasta el primer espacio.

---

## Conversión de Subcadena a Cadena

Si planeas mantener una subcadena por un período prolongado o necesitas una copia independiente, es recomendable convertirla en una `String`. Esto asegura que la subcadena no dependa de la cadena original.

### Ejemplo:

```swift
let primeraPalabraString = String(primeraPalabra)
print(primeraPalabraString) // Imprime: Bienvenido
```

Al hacerlo:
- `primeraPalabraString` es una cadena independiente que no comparte memoria con `frase`.

---

## Métodos Comunes para Crear Subcadenas

### 1. **Extraer el Prefijo (`prefix(_:)`)**

Obtén los primeros `n` caracteres de una cadena:

```swift
let frase = "Bienvenido a Swift"
let prefijo = frase.prefix(10)
print(prefijo) // Imprime: Bienvenido
```

---

### 2. **Extraer el Sufijo (`suffix(_:)`)**

Obtén los últimos `n` caracteres de una cadena:

```swift
let sufijo = frase.suffix(5)
print(sufijo) // Imprime: Swift
```

---

### 3. **Subcadenas con Rangos**

Utiliza rangos para extraer partes específicas de la cadena:

```swift
let inicio = frase.index(frase.startIndex, offsetBy: 11)
let final = frase.endIndex
let subcadena = frase[inicio..<final]
print(subcadena) // Imprime: a Swift
```

---

## Consideraciones Importantes

1. **Eficiencia**:
   - Las `Substring` son eficientes porque reutilizan la memoria de la cadena original.
   - Sin embargo, si la cadena original es muy grande y solo necesitas una pequeña parte, mantener una `Substring` puede impedir que la memoria de la cadena original sea liberada. En tales casos, convierte la `Substring` a una nueva `String`.

2. **Inmutabilidad**:
   - Aunque las `Substring` comparten memoria con la cadena original, son inmutables. No puedes modificar directamente el contenido de una `Substring`.

3. **Compatibilidad con Métodos**:
   - Las `Substring` pueden utilizarse con la mayoría de los métodos disponibles para las cadenas (`String`), ya que comparten muchas características.

---

## Resumen

- Las **subcadenas** son vistas eficientes y temporales sobre partes de cadenas más grandes.
- Convierte las subcadenas a cadenas (`String`) si necesitas mantenerlas independientemente o liberar memoria asociada con la cadena original.
- Usa métodos como `prefix(_:)`, `suffix(_:)`, y rangos para trabajar con subcadenas fácilmente.
