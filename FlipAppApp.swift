import SwiftUI

@main
struct FlipAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            CreateFlashcardView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
