En Swift, la **mutabilidad de las colecciones** (como arrays, sets y diccionarios) depende de cómo se declaren:

---

## Mutabilidad de Colecciones

### 1. **Colecciones Mutables**
- Si asignas una colección a una variable usando `var`, esta será **mutable**, lo que significa que puedes modificar su contenido después de la creación.
- Ejemplo:

```swift
var numeros = [1, 2, 3]
numeros.append(4) // Ahora 'numeros' es [1, 2, 3, 4]
numeros.remove(at: 0) // Ahora 'numeros' es [2, 3, 4]
```

En este caso:
- Puedes agregar o eliminar elementos.
- También puedes modificar los valores existentes.

---

### 2. **Colecciones Inmutables**
- Si asignas una colección a una constante usando `let`, esta será **inmutable**, lo que significa que no puedes cambiar su contenido después de la creación.
- Ejemplo:

```swift
let letras = ["a", "b", "c"]
// letras.append("d") // Error: no se puede modificar una colección inmutable
```

En este caso:
- No puedes agregar, eliminar ni modificar elementos.

---

## Consideraciones Clave

1. **Mutabilidad del Contenido vs. Tipo de Colección**:
   - La mutabilidad se refiere al contenido de la colección, no a su tipo o estructura subyacente.
   - Por ejemplo, aunque un array mutable puede cambiar su contenido, sigue siendo un array.

2. **Optimización y Seguridad**:
   - Usar colecciones inmutables (`let`) ayuda a prevenir errores accidentales y permite al compilador optimizar el rendimiento.

3. **Copias en Valor**:
   - Las colecciones en Swift son tipos por valor. Esto significa que cuando asignas una colección mutable a otra variable o pasas una colección a una función, se crea una copia independiente.

---

## Ejemplo Comparativo

### Mutable (`var`):

```swift
var frutas = ["manzana", "pera"]
frutas.append("naranja") // Ahora 'frutas' es ["manzana", "pera", "naranja"]
frutas[0] = "plátano"    // Ahora 'frutas' es ["plátano", "pera", "naranja"]
```

### Inmutable (`let`):

```swift
let frutas = ["manzana", "pera"]
// frutas.append("naranja") // Error: no se puede modificar una colección inmutable
// frutas[0] = "plátano"    // Error: no se puede modificar una colección inmutable
```

---

## Buenas Prácticas

1. **Usa `let` siempre que sea posible**:
   - Si sabes que la colección no cambiará durante el ciclo de vida del programa, declara la colección como inmutable para mejorar la seguridad y el rendimiento.

2. **Usa `var` solo si necesitas modificar la colección**:
   - Declara colecciones mutables únicamente cuando sea necesario para evitar errores accidentales.
