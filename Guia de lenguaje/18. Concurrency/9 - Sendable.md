# Tipos Sendable en Swift

En Swift, el protocolo `Sendable` garantiza que los valores de un tipo puedan ser usados de manera segura en entornos concurrentes. Esto es esencial para evitar condiciones de carrera cuando los datos se comparten entre tareas simultáneas.

## Declarar un Tipo `Sendable`

Para que un tipo personalizado sea seguro en concurrencia, debe conformarse al protocolo `Sendable`.

```swift
struct Usuario: Sendable {
    let nombre: String
    let edad: Int
}
```

Swift validará que todas sus propiedades sean inmutables o seguras para la concurrencia.

## Clases y `Sendable`

Las clases no son automáticamente `Sendable` debido a que permiten mutabilidad compartida. Para marcar una clase como `Sendable`, debe ser `final` y sus propiedades deben ser seguras.

```swift
final class Cuenta: Sendable {
    let saldo: Int
    init(saldo: Int) {
        self.saldo = saldo
    }
}
```

## `@unchecked Sendable`

Si el programador garantiza manualmente que un tipo es seguro para la concurrencia, se puede usar `@unchecked Sendable` para omitir las comprobaciones del compilador.

```swift
final class Configuracion: @unchecked Sendable {
    var modoOscuro: Bool
    init(modoOscuro: Bool) {
        self.modoOscuro = modoOscuro
    }
}
```

⚠️ **Precaución:** Usar `@unchecked Sendable` con mutabilidad puede causar condiciones de carrera si no se gestiona correctamente.

## Cuándo Usar `Sendable`
- Para asegurar que los datos compartidos entre tareas sean seguros.
- En estructuras inmutables que se pasen entre hilos.
- En clases que deben garantizar concurrencia sin bloqueos manuales.


