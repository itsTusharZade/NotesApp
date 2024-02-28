//
//  NotesRepository.swift
//  TechExactly-Task
//
//  Created by Tushar Zade on 28/02/24.
//

import Foundation
import CoreData
protocol NotesRepository : BaseRepository {

}

struct NotesDataRepository : NotesRepository {
    
    
    typealias T = NotesModel
    
    

    func create(record: NotesModel) {

        let notes = Notes(context: PersistentStorage.shared.context)
        notes.id = record.id
        notes.title = record.title
        notes.note = record.note
        notes.created = Date()
        notes.modified = Date()
        PersistentStorage.shared.saveContext()

    }

    func getAll() -> [NotesModel]? {

        let records = PersistentStorage.shared.fetchManagedObject(managedObject: Notes.self)
        guard records != nil && records?.count != 0 else {return nil}

        var results: [NotesModel] = []
        records!.forEach({ (cdNotes) in
            results.append(cdNotes.convertToNotes())
        })

        return results
    }

    func get(byIdentifier id: UUID) -> NotesModel? {

        let note = getCdNote(byId: id)
        guard note != nil else {return nil}

        return (note?.convertToNotes())!
    }

    func update(record: NotesModel) -> Bool {

        let note = getCdNote(byId: record.id)
        guard note != nil else {return false}
        
        note!.id = record.id
        note!.title = record.title
        note!.note = record.note
        note!.created = record.created
        note!.modified = Date()

        PersistentStorage.shared.saveContext()
        return true
    }

    func delete(byIdentifier id: UUID) -> Bool {

        let note = getCdNote(byId: id)
        guard note != nil else {return false}

        PersistentStorage.shared.context.delete(note!)
        PersistentStorage.shared.saveContext()

        return true
    }

    private func getCdNote(byId id: UUID) -> Notes?{
        let fetchRequest = NSFetchRequest<Notes>(entityName: "Notes")
        let fetchById = NSPredicate(format: "id==%@", id as CVarArg)
        fetchRequest.predicate = fetchById

        let result = try! PersistentStorage.shared.context.fetch(fetchRequest)
        guard result.count != 0 else {return nil}

        return result.first
    }




}
