//
//  NotesModel.swift
//  TechExactly-Task
//
//  Created by Tushar Zade on 28/02/24.
//

import Foundation

class NotesModel{
    let id: UUID
    let title: String
    let note: String
    let created: Date
    let modified: Date


    init(_id: UUID, _title: String,_note : String, _created: Date,_modified: Date){
        self.id = _id
        self.title = _title
        self.note = _note
        self.created = _created
        self.modified = _modified
    }
}
