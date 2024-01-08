//
//  DataController.swift
//  NanoChallenge2
//
//  Created by Yovita Handayiani on 08/01/24.
//

import Foundation
import CoreData

class DataController: ObservableObject {
    let container = NSPersistentContainer(name:  "LipTintModel")
    
    init(){
        container.loadPersistentStores{desc, error in
            if let error = error {
                print("Failed to load the data || \(error.localizedDescription)")
            }
        }
    }
    
    func saveData(context: NSManagedObjectContext){
        do{
            try context.save()
            print("Successfully saved ")
        }catch{
            print("Failed to save data")
        }
    }
    
    func addData(color_id: String, brand_name: String, context: NSManagedObjectContext){
        let lipTint = LipTint(context: context)
        lipTint.id = UUID()
        lipTint.date = Date()
        lipTint.color_id = color_id
        lipTint.brand_name = brand_name
        saveData(context: context)
    }
    
    func editData(lipTint: LipTint, color_id: String, brand_name: String, context: NSManagedObjectContext){
        lipTint.date = Date()
        lipTint.color_id = color_id
        lipTint.brand_name = brand_name
        saveData(context: context)
    }
    
}
