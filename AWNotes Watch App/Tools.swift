//
//  Tools.swift
//  AWNotes Watch App
//
//  Created by Kevin Morales on 9/29/22.
//

import Foundation

final class Tools {
    private let defaults = UserDefaults.standard
    private let KEY = "NOTES_DATA"
    
    static var shared: Tools {
        return Tools()
    }
    
    private init() {}
    
    func saveNotes(notes: [Note]) {
        let data = notes.map { try? JSONEncoder().encode($0) }
        defaults.set(data, forKey: KEY)
    }
    
    func retrieveNotes() -> [Note] {
        guard let savedData = defaults.array(forKey: KEY) as? [Data] else { return [] }
        let notes = savedData.map { try! JSONDecoder().decode(Note.self, from: $0) }
        return notes
    }
}
