//
//  Question+CoreDataProperties.swift
//  flipapp
//
//  Created by Edward Falcon on 5/16/24.
//
//

import Foundation
import CoreData


extension Question {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Question> {
        return NSFetchRequest<Question>(entityName: "Question")
    }

    @NSManaged public var question: String?

}

extension Question : Identifiable {

}
