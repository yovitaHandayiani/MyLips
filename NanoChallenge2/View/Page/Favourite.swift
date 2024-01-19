//
//  Favourite.swift
//  NanoChallenge2
//
//  Created by Yovita Handayiani on 15/01/24.
//

import SwiftUI

struct Favourite: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack{
                    ScrollView(.vertical, showsIndicators: false, content: {
                        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())]){
                            ForEach(OMBRELLA){OMBRELLA in
                                if(OMBRELLA.fav == true){
                                    NavigationLink(destination: ContentView(obj: OMBRELLA.name, brand: "OMBRELLA", index: OMBRELLA.id)){
                                        ColorCart(redd: OMBRELLA.redC, greenn: OMBRELLA.greenC, bluee: OMBRELLA.blueC, fav: OMBRELLA.fav, brand: "OMBRELLA", color: OMBRELLA.name, index: OMBRELLA.id)
                                    }
                                }
                            }.padding(13)
                            
                            ForEach(EtudeHouse){EtudeHouse in
                                if(EtudeHouse.fav == true){
                                    NavigationLink(destination: ContentView(obj: EtudeHouse.name, brand: "Etude House", index: EtudeHouse.id)){
                                        ColorCart(redd: EtudeHouse.redC, greenn: EtudeHouse.greenC, bluee: EtudeHouse.blueC, fav: EtudeHouse.fav, brand: "OMBRELLA", color: EtudeHouse.name, index: EtudeHouse.id)
                                    }
                                }
                            }.padding(13)
                        }
                    })
                }
                .padding()
                
            }.navigationBarTitle("Favourite")
        }
    }
}

#Preview {
    Favourite()
}
