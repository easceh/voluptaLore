import SwiftUI

struct EllipseView: View {
    var size: CGSize
    
    var body: some View {
        Path { path in
            path.addEllipse(in: CGRect(origin: .zero, size: size))
        }
        .stroke(Color.blue, lineWidth: 2)
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            EllipseView(size: CGSize(width: 100, height: 50))
                .frame(width: 100, height: 50)
                .padding()
            
            EllipseView(size: CGSize(width: 150, height: 100))
                .frame(width: 150, height: 100)
                .padding()
        }
    }
}

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
