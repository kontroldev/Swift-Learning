# Representación y Lanzamiento de Errores en Swift

Swift proporciona un sistema robusto para manejar errores usando tipos personalizados y la palabra clave `throw`.

## Definiendo Tipos de Errores

Los errores en Swift se representan con tipos que conforman el protocolo `Error`.

```swift
enum FileError: Error {
    case notFound
    case noPermission
    case unknown
}
```

## Lanzando Errores (`throw`)

Para indicar que ocurre un error, se usa `throw` junto con un valor del tipo de error definido.

```swift
func readFile(named fileName: String) throws {
    throw FileError.notFound
}
```

### Explicación del Código
- `enum FileError` define posibles errores relacionados con archivos.
- `throws` en la función indica que puede lanzar errores.
- `throw FileError.notFound` lanza un error cuando la función se ejecuta.

## Cuándo Usar `throw`

- Para manejar errores en operaciones que pueden fallar (leer archivos, conexiones de red, etc.).
- Para mejorar la claridad del código separando los flujos de éxito y fallo.
- Para evitar el uso de valores especiales como `nil` para indicar errores.

---

Este documento explica cómo **representar y lanzar errores en Swift**, asegurando un código más seguro y estructurado.
