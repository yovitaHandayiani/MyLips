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
                                    NavigationLink(destination: ContentView(obj: OMBRELLA.name, brand: "OMBRELLA")){
                                        ColorCart(redd: OMBRELLA.redC, greenn: OMBRELLA.greenC, bluee: OMBRELLA.blueC, fav: OMBRELLA.fav, brand: "OMBRELLA", color: OMBRELLA.name)
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
