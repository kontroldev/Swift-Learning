# Inicializadores Predeterminados en Swift

Swift proporciona un **inicializador predeterminado** para estructuras y clases que no definen uno propio, siempre que todas sus propiedades tengan valores por defecto.

## Uso del Inicializador Predeterminado

Si todas las propiedades tienen un valor por defecto, Swift genera automáticamente un inicializador sin parámetros:

```swift
struct User {
    var username: String = "Guest"
    var age: Int = 18
}

let newUser = User()
print(newUser.username) // "Guest"
print(newUser.age)      // 18
```

En este caso, `User` puede instanciarse sin necesidad de definir un `init` explícito.

## Inicializador Predeterminado en Clases

Si una clase no define un inicializador y todas sus propiedades tienen valores predeterminados, Swift genera un inicializador automático:

```swift
class Animal {
    var species: String = "Unknown"
}

let someAnimal = Animal()
print(someAnimal.species) // "Unknown"
```

## Cuándo se Genera un Inicializador Predeterminado

- Cuando **todas** las propiedades almacenadas tienen valores por defecto.
- Si no se define un `init` personalizado.
- Se aplica a **estructuras y clases** de manera automática.

---

Este documento explica cómo funcionan los **inicializadores predeterminados** en Swift y cuándo se generan automáticamente.