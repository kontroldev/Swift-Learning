# Observadores de Propiedades en Swift

Los *observadores de propiedades* permiten ejecutar código cuando cambia el valor de una propiedad. Se pueden usar en propiedades almacenadas de clases y estructuras.

## Tipos de Observadores

Swift ofrece dos tipos de observadores:
- `willSet`: Se ejecuta antes de que cambie el valor.
- `didSet`: Se ejecuta después de que cambie el valor.

## Uso de `willSet` y `didSet`

```swift
struct Counter {
    var value: Int = 0 {
        willSet {
            print("El valor cambiará de \(value) a \(newValue)")
        }
        didSet {
            print("El valor cambió de \(oldValue) a \(value)")
        }
    }
}

var counter = Counter()
counter.value = 10
```

### Salida esperada:
```
El valor cambiará de 0 a 10
El valor cambió de 0 a 10
```

## Restricciones de los Observadores de Propiedades

- No se pueden usar en **propiedades computadas**.
- No se activan al inicializar una propiedad, solo cuando cambia después de la inicialización.

```swift
struct Example {
    var number: Int = 5 {
        didSet {
            print("Número actualizado a \(number)")
        }
    }
}

var example = Example() // No activa `didSet`
example.number = 10 // ✅ Activa `didSet`
```

## Cuándo Usar Observadores de Propiedades

| **Situación** | **Usar Observadores de Propiedades** |
|--------------|---------------------------------|
| Se necesita realizar acciones en cambios de valor | ✅ |
| Se requiere validar valores antes de asignarlos | ✅ |
| Se necesita modificar el valor dentro del observador | ❌ (Usar una propiedad computada) |

---

Este documento explica cómo usar *observadores de propiedades* en Swift para ejecutar acciones al modificar valores almacenados.
