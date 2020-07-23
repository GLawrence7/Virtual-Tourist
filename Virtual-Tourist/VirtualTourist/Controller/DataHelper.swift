//
//  DataHelper.swift
//  Virtual-Tourist
//
//  Created by George on 22/07/2020.
//  Copyright © 2020 Master. All rights reserved.
//

import CoreData

class DataHelper {
    static func fetchData(_ dataController: DataController, _ entity: String) -> [Any] {
        // Get view context
        let context = dataController.viewContext
        // Create the fetch request
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: entity)
        // Fetch the results
        let results = try! context.fetch(fetchRequest)
        
        return results
    }
    
    static func fetchDataWithPredicate(_ dataController: DataController, _ predicate: NSPredicate, _ entity: String) -> [Any] {
        // Get view context
        let context = dataController.viewContext
        // Create the fetch request
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: entity)
        fetchRequest.predicate = predicate
        // Fetch the results
        let results = try! context.fetch(fetchRequest)
        
        return results
    }
    
    static func saveData(_ dataController: DataController) {
        do {
            try dataController.viewContext.save()
        } catch {
            print("Failed to save data.")
        }
    }
}
