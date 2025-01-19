# Diccionarios en Swift

En Swift, un **diccionario** es una colección **no ordenada** que almacena pares clave-valor. Las claves actúan como identificadores únicos para acceder a sus valores asociados. Las claves deben conformar al protocolo `Hashable`, lo que significa que deben proporcionar una forma de calcular un valor hash único.

---

## Declaración de Diccionarios

### 1. **Declaración explícita**
Puedes declarar un diccionario especificando los tipos de las claves y los valores entre corchetes:

```swift
var edades: [String: Int] = ["Ana": 28, "Luis": 32, "María": 25]
```

### 2. **Inferencia de tipos**
Gracias a la inferencia de tipos de Swift, puedes omitir la declaración explícita si proporcionas valores iniciales:

```swift
var capitales = ["España": "Madrid", "Francia": "París", "Italia": "Roma"]
```

### 3. **Diccionario vacío**
Para crear un diccionario vacío:

```swift
var datos: [String: String] = [:]
var numeros = [Int: String]() // Otra forma de inicializar
```

---

## Acceso y Modificación

### Acceder a valores
Para acceder al valor asociado a una clave específica, utiliza la sintaxis de subíndice:

```swift
if let edadAna = edades["Ana"] {
    print("Ana tiene \(edadAna) años.")
} else {
    print("No se encontró la edad de Ana.")
}
```

> El acceso devuelve un valor opcional (`nil` si la clave no existe).

---

### Añadir o actualizar valores
Puedes añadir o actualizar un valor asignándolo a una clave:

```swift
edades["Carlos"] = 30 // Añade una nueva entrada
edades["Luis"] = 33   // Actualiza el valor existente
```

---

### Eliminar valores
Para eliminar una entrada, asigna `nil` a la clave correspondiente:

```swift
edades["María"] = nil // Elimina la entrada para "María"
```

También puedes usar el método `removeValue(forKey:)`:

```swift
if let eliminado = edades.removeValue(forKey: "Luis") {
    print("\(eliminado) fue eliminado.")
} else {
    print("La clave no existe.")
}
```

---

## Iteración sobre Diccionarios

Puedes iterar sobre los pares clave-valor utilizando un bucle `for-in`:

```swift
for (nombre, edad) in edades {
    print("\(nombre) tiene \(edad) años.")
}
```

### Iterar solo sobre claves o valores:
- Para las claves:
  ```swift
  for nombre in edades.keys {
      print("Nombre: \(nombre)")
  }
  ```

- Para los valores:
  ```swift
  for edad in edades.values {
      print("Edad: \(edad)")
  }
  ```

---

## Propiedades y Métodos Comunes

1. **`count`**:
   Devuelve el número de pares clave-valor en el diccionario.
   ```swift
   print("El diccionario tiene \(edades.count) elementos.")
   ```

2. **`isEmpty`**:
   Indica si el diccionario está vacío.
   ```swift
   if edades.isEmpty {
       print("El diccionario está vacío.")
   } else {
       print("El diccionario tiene elementos.")
   }
   ```

3. **Vaciar un diccionario**:
   ```swift
   edades.removeAll()
   ```

---

## Conversión a Arrays

Puedes convertir las claves o los valores de un diccionario en arrays para trabajar con colecciones ordenadas:

```swift
let nombres = [String](edades.keys) // Array con las claves
let edadesArray = [Int](edades.values) // Array con los valores
```

---

## Ejemplo Completo

```swift
var capitales = ["España": "Madrid", "Francia": "París", "Italia": "Roma"]

// Acceder a un valor
if let capital = capitales["España"] {
    print("La capital de España es \(capital).")
}

// Añadir o actualizar un valor
capitales["Alemania"] = "Berlín"
capitales["Italia"] = "Milán"

// Eliminar un valor
capitales["Francia"] = nil

// Iterar sobre el diccionario
for (pais, capital) in capitales {
    print("La capital de \(pais) es \(capital).")
}

// Propiedades comunes
print("El diccionario tiene \(capitales.count) elementos.")
if capitales.isEmpty {
    print("El diccionario está vacío.")
} else {
    print("El diccionario tiene elementos.")
}

// Convertir a arrays
let paises = [String](capitales.keys)
let ciudades = [String](capitales.values)
print(paises)
print(ciudades)
```

---

## Consideraciones Importantes

1. **Claves únicas**:
   - Las claves deben ser únicas en un diccionario; si añades una clave existente, su valor será sobrescrito.

2. **Tipo `Hashable`**:
   - Las claves deben conformar al protocolo `Hashable`. Los tipos básicos como `String`, `Int`, `Double` y `Bool` son hashables por defecto.

3. **Uso ideal**:
   - Los diccionarios son ideales para buscar datos rápidamente basados en una clave única.
