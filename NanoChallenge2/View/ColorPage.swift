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
                VStack(alignment: .leading){
                    Text("OMBRELLA Lip Totem Tint")
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: UIScreen.main.bounds.width * 0.02, trailing: 0))
                    HStack(alignment: .top){
                        NavigationLink(destination: ContentView(obj: "Crush")){
                            ColorButton(redd : 208, greenn: 80, bluee: 74, textt: "Crush", colour: "Black")
                        }
                        
                        NavigationLink(destination:
                                        ContentView(obj: "Soul")){ColorButton(redd : 211, greenn: 83, bluee: 67, textt: "Soul", colour: "Black")
                        }
                        
                        NavigationLink(destination:
                                        ContentView(obj: "Bond")){ColorButton(redd : 239, greenn: 115, bluee: 86, textt: "Bond", colour: "Black")
                        }
                        
                        NavigationLink(destination:
                                        ContentView(obj: "Hottie")){ColorButton(redd : 210, greenn: 31, bluee: 67, textt: "Hottie", colour: "Black")
                        }
                        
                        NavigationLink(destination:
                                        ContentView(obj: "Underground")){ColorButton(redd : 197, greenn: 119, bluee: 107, textt: "Under\nground", colour: "Black")
                        }
                        
                        NavigationLink(destination:
                                        ContentView(obj: "Undercover")){ColorButton(redd : 173, greenn: 87, bluee: 90, textt: "Under\ncover", colour: "Black")
                        }
                        
                        NavigationLink(destination:
                                        ContentView(obj: "High")){ColorButton(redd : 225, greenn: 15, bluee: 74, textt: "High", colour: "Black")
                        }                    }
                    
                    HStack(alignment: .top){
                        NavigationLink(destination:
                                        ContentView(obj: "Doze")){ColorButton(redd : 191, greenn: 49, bluee: 39, textt: "Doze", colour: "Black")
                        }
                        
                        NavigationLink(destination:
                                        ContentView(obj: "HAYG")){ColorButton(redd : 183, greenn: 111, bluee: 120, textt: "HAYG", colour: "Black")
                        }
                        
                        NavigationLink(destination:
                                        ContentView(obj: "Lurve")){ColorButton(redd : 172, greenn: 28, bluee: 64, textt: "Lurve", colour: "Black")
                        }
                        
                        NavigationLink(destination:
                                        ContentView(obj: "Renee")){ColorButton(redd : 204, greenn: 16, bluee: 33, textt: "Renee", colour: "Black")
                        }
                        
                        NavigationLink(destination:
                                        ContentView(obj: "SAVAGE")){ColorButton(redd : 193, greenn: 97, bluee: 93, textt: "SAVAGE", colour: "Black")
                        }
                        
                        NavigationLink(destination:
                                        ContentView(obj: "WUCU")){ColorButton(redd : 167, greenn: 27, bluee: 20, textt: "WUCU", colour: "Black")
                        }
                        
                        NavigationLink(destination:
                                        ContentView(obj: "Nikola")){ColorButton(redd : 201, greenn: 92, bluee: 92, textt: "Nikola", colour: "Black")
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
                            ColorButton(redd : 241, greenn: 62, bluee: 92, textt: "First\nKiss", colour: "Black")
                        }
                        
                        NavigationLink(destination:
                                        ContentView(obj: "Breaking")){
                            ColorButton(redd : 165, greenn: 27, bluee: 34, textt: "Breaking\nOut", colour: "Black")
                        }
                        
                        NavigationLink(destination:
                                        ContentView(obj: "Burgundy")){
                            ColorButton(redd : 100, greenn: 13, bluee: 34, textt: "Run\nAway", colour: "Black")
                        }
                        
                        Button{
                            showingAlert = true
                        }label: {
                            ColorButton(redd : 151, greenn: 151, bluee: 151, textt: "Secret\nDate", colour: "hidden")
                        }.alert("Subscribe MyLips Pro!", isPresented: $showingAlert) {
                            Button("OK", role: .cancel) { }
                        }
                        
                        Button{
                            showingAlert = true
                        }label: {
                            ColorButton(redd : 151, greenn: 151, bluee: 151, textt: "Sexy\nStar", colour: "hidden")
                        }
                        Button{
                            showingAlert = true
                        }label: {
                            ColorButton(redd : 151, greenn: 151, bluee: 151, textt: "City\nGirl", colour: "hidden")
                        }
                        Button{
                            showingAlert = true
                        }label: {
                            ColorButton(redd : 151, greenn: 151, bluee: 151, textt: "Hidden\nCoral", colour: "hidden")
                        }
                    }
                    
                    HStack(alignment: .top){
                        Button{
                            showingAlert = true
                        }label: {
                            ColorButton(redd : 151, greenn: 151, bluee: 151, textt: "Dreamy\nPropose", colour: "hidden")
                        }
                        Button{
                            showingAlert = true
                        }label: {
                            ColorButton(redd : 151, greenn: 151, bluee: 151, textt: "Chic\nBeige", colour: "hidden")
                        }
                        
                        Button{
                            showingAlert = true
                        }label: {
                            ColorButton(redd : 151, greenn: 151, bluee: 151, textt: "Enchanted\nGoddess", colour: "hidden")
                        }
                    }
                    
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: UIScreen.main.bounds.width * 0.07, trailing: 0))
                
                //BRAND #3
                VStack(alignment: .leading){
                    Text("DIOR Addict Lip Glow Lip Balm")
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: UIScreen.main.bounds.width * 0.02, trailing: 0))
                    
                    HStack(alignment: .top){
                        Button{
                            showingAlert = true
                        } label: {
                            ColorButton(redd : 151, greenn: 151, bluee: 151, textt: "Universal\n Clear", colour: "hidden")
                        }
                        
                        Button{
                            showingAlert = true
                        }label: {
                            ColorButton(redd : 151, greenn: 151, bluee: 151, textt: "Dior 8", colour: "hidden")
                        }
                        
                        Button{
                            showingAlert = true
                        }label: {
                            ColorButton(redd : 151, greenn: 151, bluee: 151, textt: "Straw-\nberry", colour: "hidden")
                        }
                        
                        Button{
                            showingAlert = true
                        }label: {
                            ColorButton(redd : 151, greenn: 151, bluee: 151, textt: "Pink", colour: "hidden")
                        }
                        
                        Button{
                            showingAlert = true
                        }label: {
                            ColorButton(redd : 151, greenn: 151, bluee: 151, textt: "Coral", colour: "hidden")
                        }
                        
                        Button{
                            showingAlert = true
                        }label: {
                            ColorButton(redd : 151, greenn: 151, bluee: 151, textt: "Berry", colour: "hidden")
                        }
                        
                        Button{
                            showingAlert = true
                        }label: {
                            ColorButton(redd : 151, greenn: 151, bluee: 151, textt: "Rasp-\nberry", colour: "hidden")
                        }
                    }
        
                    HStack(alignment: .top){
                        Button{
                            showingAlert = true
                        }label: {
                            ColorButton(redd : 151, greenn: 151, bluee: 151, textt: "Ultra\nPink", colour: "hidden")
                        }
                        
                        Button{
                            showingAlert = true
                        }label: {
                            ColorButton(redd : 151, greenn: 151, bluee: 151, textt: "Rose-\nwood", colour: "hidden")
                        }
                        
                        Button{
                            showingAlert = true
                        }label: {
                            ColorButton(redd : 151, greenn: 151, bluee: 151, textt: "Cherry", colour: "hidden")
                        }
                        
                        Button{
                            showingAlert = true
                        }label: {
                            ColorButton(redd : 151, greenn: 151, bluee: 151, textt: "Ultra\nCoral", colour: "hidden")
                        }
                        
                        Button{
                            showingAlert = true
                        }label: {
                            ColorButton(redd : 151, greenn: 151, bluee: 151, textt: "Seoul\nScarlet", colour: "hidden")
                        }
                    }
                }
            }
        }
    }
}

struct ColorPage_Previews: PreviewProvider {
    static var previews: some View {
        ColorPage()
    }
}
