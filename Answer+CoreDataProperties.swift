//
//  Answer+CoreDataProperties.swift
//  flipapp
//
//  Created by Edward Falcon on 5/16/24.
//
//

import Foundation
import CoreData


extension Answer {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Answer> {
        return NSFetchRequest<Answer>(entityName: "Answer")
    }

    @NSManaged public var answer: String?

}

extension Answer : Identifiable {

}
