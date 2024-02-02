//
//  Favourite.swift
//  NanoChallenge2
//
//  Created by Yovita Handayiani on 15/01/24.
//

import SwiftUI

var favCount : Int = 17

struct Favourite: View {
    @EnvironmentObject var modelData: ModelData
    //@State private var favCount = 17
        
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack{
                    ScrollView(.vertical, showsIndicators: false, content: {
                        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())]){
                            ForEach(modelData.OMBRELLA){OMBRELLA in
                                if(OMBRELLA.fav == true){
                                    NavigationLink(destination: ContentView(obj: OMBRELLA.name, brand: "OMBRELLA", index: OMBRELLA.id)){
                                        ColorCart(redd: OMBRELLA.redC, greenn: OMBRELLA.greenC, bluee: OMBRELLA.blueC, fav: OMBRELLA.fav, brand: "OMBRELLA", color: OMBRELLA.name, index: OMBRELLA.id)
                                    }
                                }
                                    
                            }.padding(13)
                            
                            ForEach(modelData.EtudeHouse){EtudeHouse in
                                if(EtudeHouse.fav == true){
                                    NavigationLink(destination: ContentView(obj: EtudeHouse.name, brand: "Etude House", index: EtudeHouse.id/*, history: []*/)){
                                        ColorCart(redd: EtudeHouse.redC, greenn: EtudeHouse.greenC, bluee: EtudeHouse.blueC, fav: EtudeHouse.fav, brand: "Etude House", color: EtudeHouse.name, index: EtudeHouse.id)
                                    }
                                }
                            }.padding(13)
                        }
                        
                        if favCount == 17 {
                            VStack(alignment: .center){
                                Image(systemName: "heart.fill")
                                    .resizable()
                                    .frame(width: 110, height: 100)
                                    .bold(false)
                                    .foregroundColor(.gray)
                                    .padding(.bottom)
                                Text("You'll find your favourite color here").font(.callout).bold().padding(.bottom)
                                Text("You can see the color you favourite or unfavourite it by clicking the love button").font(.caption).multilineTextAlignment(.center)
                            }.padding(EdgeInsets(top: UIScreen.main.bounds.height/5.8, leading: 4, bottom: 0, trailing: 0))
                        }
                        
                    })
                }
                .padding()
                
            }.navigationBarTitle("Favourite")
        }
        .toolbar(.visible, for: .tabBar)
    }
}

//#Preview {
//    Favourite()
//}
