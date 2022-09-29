//
//  AddNote.swift
//  AWNotes Watch App
//
//  Created by Kevin Morales on 9/28/22.
//

import SwiftUI

struct AddNote: View {
    @State private var notes = [Note]()
    @State private var text = ""
    
    var body: some View {
        VStack {
            TextField("note", text: $text)
                .padding([.bottom], 16)
            Button("ADD NOTE") {
                guard text.isEmpty == false else { return }
                let note = Note(title: text)
                notes.append(note)
                text.removeAll()
            }
        }
    }
}

struct AddNote_Previews: PreviewProvider {
    static var previews: some View {
        AddNote()
    }
}
