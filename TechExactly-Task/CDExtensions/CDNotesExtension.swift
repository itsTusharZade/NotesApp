//
//  CDNotesExtension.swift
//  TechExactly-Task
//
//  Created by Tushar Zade on 28/02/24.
//

import Foundation
extension Notes{
    func convertToNotes() -> NotesModel
    {
        print(self.id!)
        print(self.title!)
        print(self.note!)
        print(self.created!)
        print(self.modified!)
        
        return NotesModel(
            _id: self.id!,
            _title: self.title!,
            _note: self.note!,
            _created: self.created!,
            _modified: self.modified!
        )
    }
}
