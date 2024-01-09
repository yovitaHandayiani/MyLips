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
        getBrand()
        getColorDetail()
    }
    
    func clearHistory(){
        history.removeAll()
        manager.context.delete(history)
        save()
    }
    
    func addHistory(){
        
    }
    
    func getHistory(){
        
    }
    
    func addLipTint(lip_tint_name: String, start: Int, end: Int, brandPosition: Int){
        let newLipTint = LipTintEntity(context: manager.context)
        newLipTint.lip_tint_name = lip_tint_name
        for i in start...end {
            newLipTint.color_details = [colorDetail[i]]
        }
        newLipTint.brand = brand[brandPosition]
        //isi relationship
        save()
    }
    
    func getLipTint(){
        let request = NSFetchRequest<LipTintEntity>(entityName: "LipTintEntity")
        
        do{
            lipTint = try manager.context.fetch(request)
        }catch let error {
            print("Failed to fetch data || \(error.localizedDescription)")
        }
        
        if(lipTint.isEmpty){
            addLipTint(lip_tint_name: "Lip Totem Tint", start: 0, end: 13, brandPosition: 0)
            addLipTint(lip_tint_name: "Dear My Wish Lips Talk", start: 14, end: 23, brandPosition: 1)
        }
        
//        newLipTint.lip_tint_name = "Lip Totem Tint"
//        for i in 0...13 {
//            newLipTint.color_details = [colorDetail[i]]
//        }
//        newLipTint.brand = brand[0]
//       
//        newLipTint.lip_tint_name = "Dear My Wish Lips Talk"
//        for i in 14...23{
//            newLipTint.color_details = [colorDetail[i]]
//        }
//        newLipTint.brand = brand[1]
       
    }
    
    func addBrand(brand_name: String){
        let newBrand = BrandEntity(context: manager.context)
        newBrand.id = UUID()
        newBrand.brand_name = brand_name
        save()
    }
    
    func getBrand(){
        let request = NSFetchRequest<BrandEntity>(entityName: "BrandEntity")
        
        do{
            brand = try manager.context.fetch(request)
        }catch let error {
            print("Failed to fetch data || \(error.localizedDescription)")
        }
        
        if(brand.isEmpty){
            addBrand(brand_name: "OMBRELLA")
            addBrand(brand_name: "Etude House")
        }
    }
    
    func addColorDetail(color_name: String, red: Int64, green: Int64, blue: Int64){
        let newColorDetail = ColorDetailEntity(context: manager.context)
        newColorDetail.id = UUID()
        newColorDetail.color_name = color_name
        newColorDetail.red = red
        newColorDetail.green = green
        newColorDetail.blue = blue
        save()
    }
    
    func getColorDetail(){
        let request = NSFetchRequest<ColorDetailEntity>(entityName: "ColorDetailEntity")
        
        do{
            colorDetail = try manager.context.fetch(request)
        }catch let error {
            print("Failed to fetch data || \(error.localizedDescription)")
        }
        
        if(colorDetail.isEmpty){
            addColorDetail(color_name: "Crush", red: 208, green: 80, blue: 74)
            addColorDetail(color_name: "Soul", red: 211, green: 83, blue: 67)
            addColorDetail(color_name: "Bond", red: 239, green: 115, blue: 86)
            addColorDetail(color_name: "Hottie", red: 210, green: 31, blue: 67)
            addColorDetail(color_name: "Underground", red: 197, green: 119, blue: 107)
            addColorDetail(color_name: "Undercover", red: 173, green: 87, blue: 90)
            addColorDetail(color_name: "High", red: 225, green: 15, blue: 74)
            addColorDetail(color_name: "Doze", red: 191, green: 49, blue: 39)
            addColorDetail(color_name: "HAYG", red: 183, green: 111, blue: 120)
            addColorDetail(color_name: "Lurve", red: 172, green: 28, blue: 64)
            addColorDetail(color_name: "Renee", red: 204, green: 16, blue: 33)
            addColorDetail(color_name: "SAVAGE", red: 193, green: 97, blue: 93)
            addColorDetail(color_name: "WUCU", red: 167, green: 27, blue: 20)
            addColorDetail(color_name: "Nikola", red: 201, green: 92, blue: 92)
            addColorDetail(color_name: "PitAPat", red: 241, green: 62, blue: 92)
            addColorDetail(color_name: "Breaking", red: 165, green: 27, blue: 34)
            addColorDetail(color_name: "Burgundy", red: 100, green: 13, blue: 34)
            addColorDetail(color_name: "Secret\nDate", red: 151, green: 151, blue: 151)
            addColorDetail(color_name: "Sexy\nStar", red: 151, green: 151, blue: 151)
            addColorDetail(color_name: "City\nGirl", red: 151, green: 151, blue: 151)
            addColorDetail(color_name: "Hidden\nCoral", red: 151, green: 151, blue: 151)
            addColorDetail(color_name: "Dreamy\nPropose", red: 151, green: 151, blue: 151)
            addColorDetail(color_name: "Chic\nBeige", red: 151, green: 151, blue: 151)
            addColorDetail(color_name: "Enchanted\nGoddess", red: 151, green: 151, blue: 151)
        }
    }
    
    func save(){
        manager.saveData()
    }
    
}
