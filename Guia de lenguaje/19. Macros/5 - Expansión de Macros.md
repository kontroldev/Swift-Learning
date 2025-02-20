# Expansión de Macros en Swift

La **expansión de macros** en Swift es el proceso mediante el cual una macro es evaluada y reemplazada por su resultado en tiempo de compilación. Esto permite que el código generado por la macro se integre de manera eficiente en el programa sin necesidad de escribirlo manualmente.

## ¿Cómo Funciona la Expansión de Macros?

Cuando el compilador encuentra una macro en el código, evalúa su expansión utilizando la implementación especificada en el tipo de macro. Esto ocurre antes de la ejecución del programa, asegurando que el código resultante sea válido y optimizado.

### Ejemplo de Expansión de Macro

```swift
let (valor, representacion) = #stringify(1 + 2)
print(representacion)
```

Si `#stringify` está implementada correctamente, su expansión en tiempo de compilación generará un código equivalente a:

```swift
let (valor, representacion) = (3, "1 + 2")
print(representacion) // Imprime "1 + 2"
```

## Inspección de la Expansión de Macros

Xcode y otras herramientas permiten inspeccionar la expansión de macros para comprender su transformación exacta. Para ver el resultado de la expansión en Xcode, se puede utilizar la opción **Expand Macro** en el menú contextual.

También se puede inspeccionar la expansión manualmente con `swiftc -dump-macro-expansions` en la línea de comandos.

## Beneficios de la Expansión de Macros
- **Código más conciso y reutilizable**: Reduce la repetición de código al generar estructuras predefinidas automáticamente.
- **Ejecución más eficiente**: La expansión ocurre en tiempo de compilación, evitando cálculos innecesarios en tiempo de ejecución.
- **Menos errores humanos**: Garantiza que el código generado siga un patrón predefinido y sea menos propenso a errores.
- **Depuración facilitada**: Se puede inspeccionar la expansión para entender cómo la macro transforma el código.

