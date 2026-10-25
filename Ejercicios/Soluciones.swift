func saludo(nombre: String?) -> String {
    "Hola, \(nombre ?? "invitado")"
}

func aprobados(_ notas: [Int]) -> [Int] {
    notas.filter { $0 >= 5 }.sorted()
}

struct Contador {
    private(set) var valor = 0

    mutating func incrementar() {
        valor += 1
    }
}

assert(saludo(nombre: "Ana") == "Hola, Ana")
assert(saludo(nombre: nil) == "Hola, invitado")
assert(aprobados([8, 3, 5]) == [5, 8])
assert(aprobados([]).isEmpty)
var contador = Contador()
contador.incrementar()
assert(contador.valor == 1)
print("Ejercicios: comprobaciones superadas")
