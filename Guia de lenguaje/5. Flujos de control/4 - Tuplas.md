# Tuplas en Swift

En Swift, las **tuplas** son estructuras que permiten agrupar múltiples valores en una sola entidad compuesta. Cada valor dentro de una tupla puede ser de un tipo diferente, lo que las hace útiles para combinar datos relacionados sin necesidad de crear una nueva estructura o clase.

---

## Creación de Tuplas

Puedes crear una tupla simplemente agrupando valores entre paréntesis:

```swift
let persona = ("Juan", 28)
```

En este ejemplo:
- `persona` es una tupla que contiene un `String` (`"Juan"`) y un `Int` (`28`).

---

## Acceso a los Elementos de una Tupla

### Usando índices numéricos
Los elementos de una tupla pueden ser accedidos mediante índices numéricos que comienzan desde `0`:

```swift
print(persona.0) // Imprime: Juan
print(persona.1) // Imprime: 28
```

### Usando nombres (Tuplas Nombradas)
Para mejorar la legibilidad del código, puedes asignar nombres a los elementos de una tupla:

```swift
let persona = (nombre: "Juan", edad: 28)
print(persona.nombre) // Imprime: Juan
print(persona.edad)   // Imprime: 28
```

Esto hace que el código sea más claro y fácil de entender.

---

## Uso de Tuplas en Sentencias `switch`

Las tuplas son especialmente útiles en las sentencias `switch` para evaluar múltiples valores simultáneamente.

### Ejemplo:

```swift
let coordenada = (x: 2, y: 0)

switch coordenada {
case (0, 0):
    print("El punto está en el origen.")
case (_, 0):
    print("El punto está sobre el eje X.")
case (0, _):
    print("El punto está sobre el eje Y.")
case (-2...2, -2...2):
    print("El punto está dentro del área de 4x4 alrededor del origen.")
default:
    print("El punto está fuera del área de 4x4 alrededor del origen.")
}
```

### Explicación:
1. **`case (0, 0)`**: Verifica si el punto está en el origen.
2. **`case (_, 0)`**: El guion bajo (`_`) actúa como un comodín y coincide con cualquier valor; este caso verifica si el punto está en cualquier posición del eje X.
3. **`case (0, _)`**: Similar al anterior, pero para el eje Y.
4. **`case (-2...2, -2...2)`**: Verifica si el punto está dentro de un área de `4x4` alrededor del origen.
5. **`default`**: Cubre cualquier otro caso no contemplado anteriormente.

---

## Modificación de Tuplas

Si defines una tupla como variable (`var`), puedes modificar sus elementos:

```swift
var producto = (nombre: "Laptop", precio: 999.99)
producto.precio = 899.99
print(producto) // Imprime: (nombre: "Laptop", precio: 899.99)
```

### Restricción:
No puedes agregar ni eliminar elementos de una tupla después de que se ha definido su estructura.

---

## Uso de Tuplas como Valores de Retorno en Funciones

Las tuplas son útiles para que las funciones devuelvan múltiples valores sin necesidad de crear una estructura personalizada.

### Ejemplo:

```swift
func dividir(_ a: Int, entre b: Int) -> (cociente: Int, residuo: Int) {
    let cociente = a / b
    let residuo = a % b
    return (cociente, residuo)
}

let resultado = dividir(10, entre: 3)
print("Cociente: \(resultado.cociente), Residuo: \(resultado.residuo)")
// Imprime: Cociente: 3, Residuo: 1
```

En este ejemplo:
- La función `dividir` devuelve una tupla que contiene el cociente y el residuo de la división.

---

## Descomposición de Tuplas

Puedes descomponer los valores de una tupla en variables o constantes individuales:

```swift
let persona = ("Juan", 28)
let (nombre, edad) = persona

print(nombre) // Imprime: Juan
print(edad)   // Imprime: 28
```

Si no necesitas todos los valores, puedes ignorar los no deseados usando un guion bajo (`_`):

```swift
let (_, edad) = persona
print(edad) // Imprime: 28
```

---

## Comparación con Diccionarios

Aunque las tuplas y los diccionarios pueden parecer similares porque ambos agrupan datos:
- **Tuplas** son ideales para agrupar un número fijo y conocido de valores relacionados.
- **Diccionarios** son más adecuados para almacenar pares clave-valor con claves únicas y un tamaño dinámico.

---

## Casos Útiles para Tuplas

1. **Agrupar datos temporales**:
   - Úsalas cuando solo necesitas combinar datos relacionados sin crear estructuras complejas.
   
2. **Retorno múltiple en funciones**:
   - Devuelve varios valores agrupados.

3. **Evaluaciones complejas con `switch`**:
   - Simplifica la lógica al evaluar múltiples condiciones simultáneamente.

---
