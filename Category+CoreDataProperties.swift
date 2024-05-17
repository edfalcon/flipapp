//
//  Category+CoreDataProperties.swift
//  flipapp
//
//  Created by Edward Falcon on 5/16/24.
//
//

import Foundation
import CoreData


extension Category {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Category> {
        return NSFetchRequest<Category>(entityName: "Category")
    }

    @NSManaged public var category: String?

}

extension Category : Identifiable {

}
