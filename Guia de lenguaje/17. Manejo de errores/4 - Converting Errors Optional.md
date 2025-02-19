# Convertir errores en valores opcionales

Swift proporciona la palabra clave `try?` para convertir errores en valores opcionales. Si se lanza un error, la expresión evalúa a `nil` en lugar de propagar el error.

## Uso de `try?`

La palabra clave `try?` simplifica el manejo de errores al convertir el resultado de una función que puede lanzar errores en un valor opcional.

```swift
enum ErrorDeArchivo: Error {
    case archivoNoEncontrado
}

func leerArchivo(nombre: String) throws -> String {
    if nombre.isEmpty {
        throw ErrorDeArchivo.archivoNoEncontrado
    }
    return "Contenido del archivo"
}

let contenido = try? leerArchivo(nombre: "")
print(contenido ?? "No hay contenido disponible")
```

### Salida:
```
No hay contenido disponible
```

## Beneficios clave
- **Evita la propagación de errores**: En lugar de manejar errores con `do-catch`, se obtiene un valor opcional.
- **Simplifica el manejo de errores**: Si ocurre un error, el resultado es `nil`, evitando la necesidad de un manejo explícito de errores.

## Ejemplo: Uso de `try?` con Binding Opcional

Se puede utilizar el binding opcional (`if let`) para desenvolver el resultado de manera segura:

```swift
if let contenido = try? leerArchivo(nombre: "datos.txt") {
    print("Archivo leído correctamente: \(contenido)")
} else {
    print("Error al leer el archivo")
}
```

### Salida:
```
Error al leer el archivo
```

## Conclusiones clave
- `try?` convierte errores en `nil` en lugar de lanzarlos.
- Es útil cuando el fallo es un resultado aceptable.
- Funciona bien con el binding opcional (`if let`) para manejar el éxito o el fallo de manera elegante.

