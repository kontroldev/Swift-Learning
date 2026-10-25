import SwiftUI

struct ContentView: View {
    @State private var contador = 0

    var body: some View {
        VStack(spacing: 20) {
            Text("Contador")
                .font(.title)
            Text("\(contador)")
                .font(.largeTitle)
                .accessibilityLabel("Valor: \(contador)")
            Button("Incrementar") {
                contador += 1
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
