//
//  ListNotes.swift
//  AWNotes Watch App
//
//  Created by Kevin Morales on 9/28/22.
//

import SwiftUI

struct ListNotes: View {
    @State private var notes = [Note(title: "Make a course"),
                                Note(title: "Have a lunch"),
                                Note(title: "Buy PS5")]
    var body: some View {
        List {
            ForEach(notes) { note in
                NavigationLink {
                    DetailNote(note: note)
                } label: {
                    VStack (alignment: .leading) {
                        Text(note.title)
                            .fontWeight(.bold)
                        Text(note.createdAt)
                            .font(.system(size: 12))
                    }
                }
            }
            .onDelete { offSets in
                delete(offSets: offSets)
            }
        }
    }
    
    private func delete(offSets: IndexSet) {
        if notes.count - 1 == 0 {
            print("Not Yet")
            return
        }
        print("Delete")
        withAnimation {
            notes.remove(atOffsets: offSets)
        }
    }
}

struct ListNotes_Previews: PreviewProvider {
    static var previews: some View {
        ListNotes()
    }
}
