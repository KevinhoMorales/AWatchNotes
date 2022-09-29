//
//  ContentView.swift
//  AWNotes Watch App
//
//  Created by Kevin Morales on 9/28/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        var note = Note(title: "Una nota")
        VStack {
            Image(systemName: "note")
                .imageScale(.large)
                .foregroundColor(.accentColor)
                .padding(16)
            Text("\(note.title) - \(note.createdAt)")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
