//
//  ListNotes.swift
//  AWNotes Watch App
//
//  Created by Kevin Morales on 9/28/22.
//

import SwiftUI

struct ListNotes: View {
    @State private var notes = [Note]()
    var body: some View {
        VStack {
            Text("Notes \(notes.count)")
                .fontWeight(.bold)
            List {
                ForEach(notes) { note in
                    NavigationLink {
                        DetailNote(note: note)
                    } label: {
                        VStack (alignment: .leading) {
                            Text(note.title)
                                .fontWeight(.bold)
                                .lineLimit(1)
                            Text(note.createdAt)
                                .font(.system(size: 12))
                        }
                    }
                }
                .onDelete { offSets in
                    delete(offSets: offSets)
                }
            }
        }.onAppear {
            notes = Tools.shared.retrieveNotes()
        }
    }
    
    private func delete(offSets: IndexSet) {
        if notes.count - 1 == 0 {
            print("Not Yet")
            return
        }
        withAnimation {
            notes.remove(atOffsets: offSets)
        }
        Tools.shared.saveNotes(notes: notes)
    }
}

struct ListNotes_Previews: PreviewProvider {
    static var previews: some View {
        ListNotes()
    }
}
