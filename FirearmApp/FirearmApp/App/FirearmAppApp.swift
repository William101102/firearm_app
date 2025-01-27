import SwiftUI

@main
struct FirearmAppApp: App {
    @StateObject private var appViewModel = AppViewModel()
    
    var body: some Scene {
        WindowGroup {
            MainTabView()
                .environmentObject(appViewModel)
        }
    }
}

class AppViewModel: ObservableObject {
    @Published var appTitle = "Firearm App"
}
