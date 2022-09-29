//
//  WelcomeView.swift
//  AWNotes Watch App
//
//  Created by Kevin Morales on 9/28/22.
//

import SwiftUI

struct WelcomeView: View {
    @State private var isActiveAddNote = false

    var body: some View {
        VStack {
            NavigationLink {
                AddNote()
            } label: {
                Text("ADD NOTE")
            }
            .padding([.bottom], 16)
            NavigationLink {
                ListNotes()
            } label: {
                Text("MY NOTES")
            }
        }.navigationTitle("Welcome")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
