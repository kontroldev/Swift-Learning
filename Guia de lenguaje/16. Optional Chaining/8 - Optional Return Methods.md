# Encadenamiento en Métodos con Valores de Retorno Opcionales en Swift

Swift permite encadenar llamadas a métodos que devuelven valores opcionales usando **encadenamiento opcional** (`optional chaining`). Esto evita la necesidad de desempaquetar valores opcionales de forma manual.

## Ejemplo de Encadenamiento en Métodos con Retorno Opcional

```swift
class Document {
    var title: String?
    
    func getTitle() -> String? {
        return title
    }
}

let document = Document()
let documentTitle = document.getTitle()?.uppercased()
print(documentTitle ?? "Título no disponible")
```

### Explicación del Código
- `getTitle()` devuelve un `String?` (opcional).
- `.uppercased()` solo se ejecuta si `getTitle()` no devuelve `nil`.
- Se usa `??` para proporcionar un valor predeterminado en caso de `nil`.

## Usando Métodos con Parámetros y Encadenamiento Opcional

También se pueden encadenar métodos con parámetros:

```swift
class User {
    func fetchUsername(for id: Int) -> String? {
        return id == 1 ? "Raúl" : nil
    }
}

let user = User()
let username = user.fetchUsername(for: 1)?.lowercased()
print(username ?? "Usuario no encontrado")
```

### Cuándo Usar Encadenamiento Opcional en Métodos

- Cuando un método puede devolver `nil` y se desea seguir operando sobre el resultado.
- Para evitar desempaquetar opcionales manualmente con `if let`.
- Para mejorar la seguridad y claridad del código.

---

Este documento explica cómo **usar encadenamiento opcional en métodos con valores de retorno opcionales en Swift**, evitando errores y mejorando la claridad del código.
