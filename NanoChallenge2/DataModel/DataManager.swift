//
//  DataManager.swift
//  NanoChallenge2
//
//  Created by Yovita Handayiani on 08/01/24.
//

import Foundation
import CoreData

class DataManager{
    
    let container:NSPersistentContainer
    let context:NSManagedObjectContext
    
    static let instance = DataManager()
    
    init(){
        container = NSPersistentContainer(name:  "LipTintContainer")
        container.loadPersistentStores{desc, error in
            if let error = error {
                print("Failed to load the data || \(error.localizedDescription)")
            }
        }
        context = container.viewContext
    }
    
    func saveData(){
        do{
            try context.save()
            print("Successfully saved ")
        }catch{
            print("Failed to save data || \(error.localizedDescription)")
        }
    }
}
