# Sets en Swift

En Swift, un **set** es una colección **no ordenada** que almacena **valores únicos** del mismo tipo. Los sets son útiles cuando necesitas garantizar que no haya elementos duplicados y el orden de los elementos no es importante.

---

## Características de los Sets

1. **Elementos Únicos**: Cada elemento en un set es único; los duplicados no están permitidos.
2. **No Ordenados**: Los sets no mantienen un orden específico de sus elementos.

---

## Declaración de un Set

### 1. **Set vacío**
```swift
var letras: Set<Character> = []
```

### 2. **Inicialización con valores**
Puedes inicializar un set con un array literal, especificando el tipo `Set`:

```swift
var colores: Set<String> = ["Rojo", "Verde", "Azul"]
```

### 3. **Inferencia de tipos**
Gracias a la inferencia de tipos de Swift, puedes omitir el tipo explícito si proporcionas valores iniciales:

```swift
var numeros: Set = [1, 2, 3, 4, 5]
```

---

## Operaciones con Sets

### 1. **Insertar un Elemento**
Utiliza el método `insert(_:)` para añadir un nuevo elemento al set:

```swift
colores.insert("Amarillo")
```

### 2. **Eliminar un Elemento**
Usa el método `remove(_:)` para eliminar un elemento específico:

```swift
if let colorEliminado = colores.remove("Verde") {
    print("\(colorEliminado) fue eliminado.")
} else {
    print("El color no estaba en el set.")
}
```

### 3. **Verificar Contenido**
El método `contains(_:)` verifica si un set contiene un elemento específico:

```swift
if colores.contains("Rojo") {
    print("El set contiene el color Rojo.")
}
```

---

## Iterar sobre un Set

Puedes iterar sobre los elementos de un set utilizando un bucle `for-in`. Dado que los sets no tienen un orden definido, sus elementos pueden aparecer en cualquier orden.

### Ejemplo:
```swift
for color in colores {
    print(color)
}
```

### Iterar en orden:
Si necesitas iterar en un orden específico, puedes ordenar el set antes de iterar:

```swift
for color in colores.sorted() {
    print(color)
}
```

---

## Operaciones de Conjuntos

Swift proporciona métodos para realizar operaciones matemáticas con conjuntos, como intersección, unión y diferencia.

### 1. **Intersección**
Crea un nuevo set con los elementos comunes a ambos sets:

```swift
let setA: Set = [1, 2, 3, 4]
let setB: Set = [3, 4, 5, 6]
let interseccion = setA.intersection(setB)
print(interseccion) // Imprime: [3, 4]
```

---

### 2. **Unión**
Crea un nuevo set con todos los elementos de ambos sets:

```swift
let union = setA.union(setB)
print(union) // Imprime: [1, 2, 3, 4, 5, 6]
```

---

### 3. **Diferencia**
Crea un nuevo set con los elementos que están en un set pero no en el otro:

```swift
let diferencia = setA.subtracting(setB)
print(diferencia) // Imprime: [1, 2]
```

---

## Comparación entre Sets

Puedes comparar dos sets utilizando operadores como `==`, `isSubset(of:)`, `isSuperset(of:)`, y más.

- **Igualdad (`==`)**:
   ```swift
   let setX: Set = [1, 2, 3]
   let setY: Set = [3, 2, 1]
   print(setX == setY) // true (el orden no importa)
   ```

- **Subconjunto (`isSubset(of:)`)**:
   ```swift
   let subset: Set = [1, 2]
   print(subset.isSubset(of: setX)) // true
   ```

- **Superconjunto (`isSuperset(of:)`)**:
   ```swift
   print(setX.isSuperset(of: subset)) // true
   ```

---

## Consideraciones Importantes

1. **Hashable**:
   - Los elementos de un set deben conformar el protocolo `Hashable` para garantizar unicidad.
   - Los tipos básicos como `String`, `Int`, `Double`, y `Bool` son hashables por defecto.

2. **Eficiencia**:
   - Los sets son más rápidos que los arrays para búsquedas y operaciones relacionadas con la unicidad.

3. **Uso Ideal**:
   - Usa sets cuando necesites garantizar que los valores sean únicos y el orden no sea relevante.

