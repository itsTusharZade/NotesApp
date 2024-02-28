//
//  Notes+CoreDataProperties.swift
//  TechExactly-Task
//
//  Created by Tushar Zade on 28/02/24.
//
//

import Foundation
import CoreData


extension Notes {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Notes> {
        return NSFetchRequest<Notes>(entityName: "Notes")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var title: String?
    @NSManaged public var note: String?
    @NSManaged public var created: Date?
    @NSManaged public var modified: Date?

}

extension Notes : Identifiable {

}
