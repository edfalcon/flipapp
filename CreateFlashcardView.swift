//
//  CreateFlashcardView.swift
//  flipapp
//
//  Created by Edward Falcon on 5/16/24.
//

import SwiftUI
import CoreData

struct CreateFlashcardView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @State private var question: String = ""
    @State private var answer: String = ""

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("New Flashcard")) {
                    TextField("Question", text: $question)
                    TextField("Answer", text: $answer)
                }
                Button(action: addFlashcard) {
                    Text("Save Flashcard")
                }
            }
            .navigationBarTitle("Create Flashcard")
        }
    }

    private func addFlashcard() {
        let newFlashcard = Flashcard(context: viewContext)
        newFlashcard.question = question
        newFlashcard.answer = answer
        newFlashcard.isKnown = false
        newFlashcard.lastReviewed = Date()
        
        do {
            try viewContext.save()
            question = ""
            answer = ""
        } catch {
            print("Failed to save flashcard: \(error.localizedDescription)")
        }
    }
}

struct CreateFlashcardView_Previews: PreviewProvider {
    static var previews: some View {
        CreateFlashcardView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}

