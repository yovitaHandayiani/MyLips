//
//  ColorCart.swift
//  NanoChallenge2
//
//  Created by Yovita Handayiani on 15/01/24.
//

import SwiftUI

struct ColorCart: View {
    var redd : Double
    var greenn : Double
    var bluee : Double
    var fav : Bool
    var brand : String
    var color : String
    var index : Int
    @State private var isFav: Bool = true
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 20)
                .fill(Color(red: redd/255, green: greenn/255, blue: bluee/255))
                .frame(width: 150, height: 91)
            Spacer()
            HStack{
                VStack(alignment: .leading){
                    Text(brand).font(.body).foregroundColor(.black)
                    Text(color).font(.caption).foregroundColor(.black)
                }
                Spacer()
                
                if(brand=="OMBRELLA"){
                    Image(systemName: isFav && modelData.OMBRELLA[index].fav ? "heart.fill" : "heart")
                        .resizable()
                        .foregroundStyle(.pink)
                        .frame(width: 22, height: 20)
                        .onTapGesture {
                            modelData.OMBRELLA[index].fav.toggle()
                            isFav = modelData.OMBRELLA[index].fav
                            print(modelData.OMBRELLA[index].fav)
                            if(isFav){
                                favCount = favCount - 1
                                print(favCount)
                            }
                            if(!isFav){
                                favCount = favCount + 1
                                print(favCount)
                            }
                        }
                        .onChange(of: modelData.OMBRELLA[index].fav) { newValue in
                            isFav = newValue
                        }
                }else if(brand=="Etude House"){
                    Image(systemName: isFav && modelData.EtudeHouse[index].fav ? "heart.fill" : "heart")
                        .resizable()
                        .foregroundStyle(.pink)
                        .frame(width: 22, height: 20)
                        .onTapGesture {
                            modelData.EtudeHouse[index].fav.toggle()
                            isFav = modelData.EtudeHouse[index].fav
                            print(modelData.EtudeHouse[index].fav)
                            if(isFav){
                                favCount = favCount - 1
                                print(favCount)
                            }
                            if(!isFav){
                                favCount = favCount + 1
                                print(favCount)
                            }
                        }
                        .onChange(of: modelData.EtudeHouse[index].fav) { newValue in
                            isFav = newValue
                        }
                }
//                Button{
//                    if(brand=="OMBRELLA"){
//                        OMBRELLA[index].fav.toggle()
//                        print(OMBRELLA[index].name)
//                        print(OMBRELLA[index].fav)
//                    }else if(brand=="Etude House"){
//                        EtudeHouse[index].fav.toggle()
//                        print(EtudeHouse[index].name)
//                        print(EtudeHouse[index].fav)
//                    }
//                }label: {
//                    if(fav == true){
//                        Image(systemName: "heart.fill")
//                            .resizable()
//                            .foregroundStyle(.pink)
//                            .frame(width: 22, height: 20)
//                    }else{
//                        Image(systemName: "heart")
//                            .resizable()
//                            .foregroundStyle(.pink)
//                            .frame(width: 22, height: 20)
//                    }
//                }
                
            }.frame(width: 142)
            
        }.frame(height: 151)
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .strokeBorder(Color("SecondaryColor"), lineWidth: 2)
                .frame(width: 166, height: 171)
        )
    }
}

//#Preview {
//    ColorCart(redd : 208, greenn: 80, bluee: 74, fav: false, brand: "OMBRELLA", color: "Crush", index: 0)
//}
