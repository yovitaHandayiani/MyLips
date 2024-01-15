//
//  ColorPage.swift
//  NanoChallenge2
//
//  Created by Yovita Handayiani on 19/05/23.
//

import SwiftUI

struct ColorPage: View {
    @State private var showingAlert = false
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading){
                Text("Color Palette")
                    .font(.system(size: 34))
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: UIScreen.main.bounds.width * 0.075, trailing: 0))
                
                //BRAND #1
                //\(entity.brand?.brand_name ?? "")
                VStack(alignment: .leading){
                    Text("OMBRELLA Lip Totem Tint")
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: UIScreen.main.bounds.width * 0.02, trailing: 0))
                    HStack(alignment: .top){
                        NavigationLink(destination: ContentView(obj: "Crush")){
                            ColorButton(redd : 208, greenn: 80, bluee: 74, textt: "Crush")
                        }
                        
                        NavigationLink(destination:
                                        ContentView(obj: "Soul")){ColorButton(redd : 211, greenn: 83, bluee: 67, textt: "Soul")
                        }
                        
                        NavigationLink(destination:
                                        ContentView(obj: "Bond")){ColorButton(redd : 239, greenn: 115, bluee: 86, textt: "Bond")
                        }
                        
                        NavigationLink(destination:
                                        ContentView(obj: "Hottie")){ColorButton(redd : 210, greenn: 31, bluee: 67, textt: "Hottie")
                        }
                        
                        NavigationLink(destination:
                                        ContentView(obj: "Underground")){ColorButton(redd : 197, greenn: 119, bluee: 107, textt: "Under\nground")
                        }
                        
                        NavigationLink(destination:
                                        ContentView(obj: "Undercover")){ColorButton(redd : 173, greenn: 87, bluee: 90, textt: "Under\ncover")
                        }
                        
                        NavigationLink(destination:
                                        ContentView(obj: "High")){ColorButton(redd : 225, greenn: 15, bluee: 74, textt: "High")
                        }                    }
                    
                    HStack(alignment: .top){
                        NavigationLink(destination:
                                        ContentView(obj: "Doze")){ColorButton(redd : 191, greenn: 49, bluee: 39, textt: "Doze")
                        }
                        
                        NavigationLink(destination:
                                        ContentView(obj: "HAYG")){ColorButton(redd : 183, greenn: 111, bluee: 120, textt: "HAYG")
                        }
                        
                        NavigationLink(destination:
                                        ContentView(obj: "Lurve")){ColorButton(redd : 172, greenn: 28, bluee: 64, textt: "Lurve")
                        }
                        
                        NavigationLink(destination:
                                        ContentView(obj: "Renee")){ColorButton(redd : 204, greenn: 16, bluee: 33, textt: "Renee")
                        }
                        
                        NavigationLink(destination:
                                        ContentView(obj: "SAVAGE")){ColorButton(redd : 193, greenn: 97, bluee: 93, textt: "SAVAGE")
                        }
                        
                        NavigationLink(destination:
                                        ContentView(obj: "WUCU")){ColorButton(redd : 167, greenn: 27, bluee: 20, textt: "WUCU")
                        }
                        
                        NavigationLink(destination:
                                        ContentView(obj: "Nikola")){ColorButton(redd : 201, greenn: 92, bluee: 92, textt: "Nikola")
                        }
                        
                    }
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: UIScreen.main.bounds.width * 0.07, trailing: 0))
                
                
                //BRAND #2
                VStack(alignment: .leading){
                    Text("Etude House Dear My Wish Lips Talk")
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: UIScreen.main.bounds.width * 0.02, trailing: 0))
                    HStack(alignment: .top){
                        NavigationLink(destination:
                                        ContentView(obj: "pitApat")){
                            ColorButton(redd : 241, greenn: 62, bluee: 92, textt: "First\nKiss")
                        }
                        
                        NavigationLink(destination:
                                        ContentView(obj: "Breaking")){
                            ColorButton(redd : 165, greenn: 27, bluee: 34, textt: "Breaking\nOut")
                        }
                        
                        NavigationLink(destination:
                                        ContentView(obj: "Burgundy")){
                            ColorButton(redd : 100, greenn: 13, bluee: 34, textt: "Run\nAway")
                        }
                        
                        Button{
                            showingAlert = true
                        }label: {
                            ColorButton(redd : 217, greenn: 217, bluee: 217, textt: "Secret\nDate")
                        }.alert("Subscribe MyLips Pro!", isPresented: $showingAlert) {
                            Button("OK", role: .cancel) { }
                        }
                        
                        Button{
                            showingAlert = true
                        }label: {
                            ColorButton(redd : 217, greenn: 217, bluee: 217, textt: "Sexy\nStar")
                        }
                        Button{
                            showingAlert = true
                        }label: {
                            ColorButton(redd : 217, greenn: 217, bluee: 217, textt: "City\nGirl")
                        }
                        Button{
                            showingAlert = true
                        }label: {
                            ColorButton(redd : 217, greenn: 217, bluee: 217, textt: "Hidden\nCoral")
                        }
                    }
                    
                    HStack(alignment: .top){
                        Button{
                            showingAlert = true
                        }label: {
                            ColorButton(redd : 217, greenn: 217, bluee: 217, textt: "Dreamy\nPropose")
                        }
                        Button{
                            showingAlert = true
                        }label: {
                            ColorButton(redd : 217, greenn: 217, bluee: 217, textt: "Chic\nBeige")
                        }
                        
                        Button{
                            showingAlert = true
                        }label: {
                            ColorButton(redd : 217, greenn: 217, bluee: 217, textt: "Enchanted\nGoddess")
                        }
                    }
                    
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: UIScreen.main.bounds.width * 0.07, trailing: 0))
                
            }
        }
    }
}

struct ColorPage_Previews: PreviewProvider {
    static var previews: some View {
        ColorPage()
    }
}
