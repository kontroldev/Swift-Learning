En Swift, un **array** es una colección ordenada que almacena múltiples valores del mismo tipo. Estos valores pueden ser accedidos y modificados utilizando índices, y los arrays son tipos por valor, lo que significa que se copian cuando se asignan a una nueva variable o constante, aunque Swift optimiza este proceso con el mecanismo de **copy-on-write**.

---

## Declaración de Arrays

Puedes declarar un array de varias formas:

### 1. **Array vacío**
```swift
var numeros = [Int]() // Un array vacío de enteros
```

### 2. **Array con valores iniciales**
```swift
var frutas: [String] = ["Manzana", "Banana", "Cereza"]
```

### 3. **Inferencia de tipo**
```swift
var colores = ["Rojo", "Verde", "Azul"] // Swift infiere que es un [String]
```

---

## Acceso y Modificación

### Acceso a elementos
Los elementos del array se acceden utilizando índices que comienzan en `0`:

```swift
let primeraFruta = frutas[0] // "Manzana"
```

### Modificación de elementos
Puedes cambiar el valor de un elemento asignando un nuevo valor al índice correspondiente:

```swift
frutas[1] = "Naranja" // ["Manzana", "Naranja", "Cereza"]
```

---

## Propiedades y Métodos Comunes

1. **`count`**: Devuelve el número de elementos en el array.
   ```swift
   let totalFrutas = frutas.count // 3
   ```

2. **`isEmpty`**: Indica si el array está vacío.
   ```swift
   if frutas.isEmpty {
       print("El array está vacío.")
   } else {
       print("El array tiene \(frutas.count) elementos.")
   }
   ```

3. **`append(_:)`**: Añade un nuevo elemento al final del array.
   ```swift
   frutas.append("Kiwi") // ["Manzana", "Naranja", "Cereza", "Kiwi"]
   ```

4. **`insert(_:at:)`**: Inserta un elemento en una posición específica.
   ```swift
   frutas.insert("Fresa", at: 1) // ["Manzana", "Fresa", "Naranja", "Cereza", "Kiwi"]
   ```

5. **`remove(at:)`**: Elimina el elemento en el índice especificado.
   ```swift
   frutas.remove(at: 2) // ["Manzana", "Fresa", "Cereza", "Kiwi"]
   ```

---

## Iteración sobre Arrays

Puedes iterar sobre los elementos de un array utilizando un bucle `for-in`:

```swift
for fruta in frutas {
    print(fruta)
}
// Imprime:
// Manzana
// Fresa
// Cereza
// Kiwi
```

---

## Copy-on-Write en Arrays

Swift utiliza el mecanismo de **copy-on-write** para optimizar la manipulación de arrays:
- Cuando asignas un array a otra variable o lo pasas a una función, no se realiza una copia inmediata.
- La copia real ocurre solo si alguna de las variables modifica el contenido del array.

### Ejemplo:
```swift
var original = [1, 2, 3]
var copia = original // No se copia inmediatamente

copia.append(4) // Aquí ocurre la copia real (copy-on-write)
print(original) // [1, 2, 3]
print(copia)    // [1, 2, 3, 4]
```

---

## Buenas Prácticas

1. **Usa `let` para arrays inmutables**:
   - Si no necesitas modificar el contenido del array, declara el array como constante para mejorar la seguridad y el rendimiento:
     ```swift
     let numeros = [1, 2, 3]
     // numeros.append(4) // Error: no se puede modificar un array inmutable
     ```

2. **Evita operaciones costosas en arrays grandes**:
   - Métodos como `append(_:)` pueden causar reasignaciones de memoria en arrays grandes.

3. **Prefiere métodos funcionales como `map`, `filter`, y `reduce`**:
   - Estos métodos hacen que tu código sea más legible y conciso.

