//
//  DataController.swift
//  NanoChallenge2
//
//  Created by Yovita Handayiani on 08/01/24.
//

import Foundation
import CoreData

class DataViewModel: ObservableObject {
    let manager = DataManager.instance
    @Published var brand: [BrandEntity] = []
    @Published var colorDetail: [ColorDetailEntity] = []
    @Published var lipTint: [LipTintEntity] = []
    @Published var history: [HistoryEntity] = []
    
    init(){
        
    }
    
    func addHistory(){
        
    }
    
    func addLipTint(color_id: String, brand_name: String){
        let lipTint = Lip_Tint(context: manager.context)
        //isi relationship
        //https://www.youtube.com/watch?v=huRKU-TAD3g&t=2748s&pp=ugMICgJpZBABGAHKBQljb3JlIGRhdGE%3D
        //https://medium.com/@meggsila/core-data-relationship-in-swift-5-made-simple-f51e19b28326
        save()
    }
    
    func addBrand(color_id: String, brand_name: String){
        let lipTint = Lip_Tint(context: manager.context)
        
    }
    
    
    func getBrand(){
        let request = NSFetchRequest<Brand>(entityName: "Brand")
        
        do{
            brand = try manager.context.fetch(request)
        }catch let error {
            print("Failed to fetch data || \(error.localizedDescription)")
        }
        
        if(brand.isEmpty){
            
        }
    }
    
    func getLipTint(){
        
    }
    
    func getColorDetail(){
        
    }
    
    func save(){
        manager.saveData()
    }
        
//    func editData(lipTint: LipTint, color_id: String, brand_name: String, context: NSManagedObjectContext){
//        lipTint.date = Date()
//        lipTint.color_id = color_id
//        lipTint.brand_name = brand_name
//        saveData(context: context)
//    }
    
}
