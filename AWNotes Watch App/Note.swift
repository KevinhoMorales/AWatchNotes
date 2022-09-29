//
//  Note.swift
//  AWNotes Watch App
//
//  Created by Kevin Morales on 9/28/22.
//

import SwiftUI

struct Note: Identifiable {
    var id: UUID
    var title: String
    var createdAt: String!
    
    init(title: String) {
        self.id = UUID()
        self.title = title
        self.createdAt = currentDateToSring()
    }
    
    private func currentDateToSring() -> String {
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .medium
        return dateFormatter.string(from: date)
    }
}
