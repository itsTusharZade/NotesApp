//
//  NotesManager.swift
//  TechExactly-Task
//
//  Created by Tushar Zade on 28/02/24.
//

import Foundation

struct NotesManager{
    private let _notesDataRepository = NotesDataRepository()
    
    func createNote(record: NotesModel, onSuccess: (_ note: NotesModel) -> Void) {
        _notesDataRepository.create(record: record)
        if let note = fetchNote(byIdentifier: record.id) {
            onSuccess(note)
        }
    }

    func fetchNotes() -> [NotesModel]? {
        return _notesDataRepository.getAll()
    }

    func fetchNote(byIdentifier id: UUID) -> NotesModel?{
        return _notesDataRepository.get(byIdentifier: id)
    }

    func updateNote(product: NotesModel) -> Bool {
        return _notesDataRepository.update(record: product)
    }

    func deleteProduct(id: UUID) -> Bool {
        return _notesDataRepository.delete(byIdentifier: id)
    }
}
