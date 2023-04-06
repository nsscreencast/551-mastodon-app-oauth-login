import SwiftUI

struct ContentView: View {
    @State var selectedServer: String?
    var body: some View {
        if let selectedServer {
            ZStack {
                Color.yellow
                Text("timeline of \(selectedServer)")
            }
            .onTapGesture {
                withAnimation(.oliphaunt) {
                    self.selectedServer = nil
                }
            }
        } else {
            OnboardingView()
                .transition(
                    .move(edge: .bottom)
                )
                .zIndex(100)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
