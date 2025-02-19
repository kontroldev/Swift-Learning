# Especificar el Tipo de Error

En Swift, los errores se representan utilizando tipos que conforman el protocolo `Error`. Puedes definir tus propios tipos de error creando una enumeración que adopte este protocolo.

## Declaración de un Tipo de Error

El protocolo `Error` no requiere ninguna implementación específica, por lo que las enumeraciones pueden definir diferentes casos de error según sea necesario.

### Ejemplo de Definición de un Tipo de Error

```swift
enum ErrorDeArchivo: Error {
    case archivoNoEncontrado
    case permisosInsuficientes
    case formatoInvalido
}
```

Este ejemplo define un tipo de error llamado `ErrorDeArchivo` con tres posibles casos de error.

## Uso de un Tipo de Error en una Función

Puedes utilizar un tipo de error en una función marcándola con `throws`, lo que indica que puede generar un error.

```swift
func leerArchivo(nombre: String) throws -> String {
    if nombre.isEmpty {
        throw ErrorDeArchivo.archivoNoEncontrado
    }
    return "Contenido del archivo"
}
```

## Manejo del Error con `do-catch`

Al llamar a una función que lanza errores, es necesario manejar el posible error utilizando `do-catch`.

```swift
do {
    let contenido = try leerArchivo(nombre: "")
    print(contenido)
} catch ErrorDeArchivo.archivoNoEncontrado {
    print("Error: El archivo no fue encontrado.")
} catch ErrorDeArchivo.permisosInsuficientes {
    print("Error: No tienes permisos suficientes.")
} catch ErrorDeArchivo.formatoInvalido {
    print("Error: El formato del archivo no es válido.")
} catch {
    print("Error desconocido: \(error)")
}
```

### Salida esperada:
```
Error: El archivo no fue encontrado.
```

## Conclusión
- Los errores en Swift se especifican mediante tipos que conforman el protocolo `Error`.
- Se recomienda usar enumeraciones para definir tipos de error claros y manejables.
- Al lanzar errores, se debe manejar su propagación con `do-catch`.
.
