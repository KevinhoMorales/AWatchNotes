//
//  DetailNote.swift
//  AWNotes Watch App
//
//  Created by Kevin Morales on 9/28/22.
//

import SwiftUI

struct DetailNote: View {
    let note: Note
    
    var body: some View {
        VStack (alignment: .center) {
            Text(note.title)
                .fontWeight(.bold)
                .font(.system(size: 30))
                .padding([.bottom], 20)
            Text(note.createdAt)
                .font(.system(size: 14))
        }
    }
}

struct DetailNote_Previews: PreviewProvider {
    static var previews: some View {
        DetailNote(note: Note(title: "DETAIL"))
    }
}
