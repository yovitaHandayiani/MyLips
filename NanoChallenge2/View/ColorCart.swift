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
                Button{
                    if(brand=="OMBRELLA"){
                        OMBRELLA[index].fav.toggle()
                        print(OMBRELLA[index].fav)
                    }else if(brand=="Etude House"){
                        EtudeHouse[index].fav.toggle()
                    }
                }label: {
                    if(fav == true){
                        Image(systemName: "heart.fill")
                            .resizable()
                            .foregroundStyle(.pink)
                            .frame(width: 22, height: 20)
                    }else{
                        Image(systemName: "heart")
                            .resizable()
                            .foregroundStyle(.pink)
                            .frame(width: 22, height: 20)
                    }
                }
            }.frame(width: 142)
            
        }.frame(height: 151)
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .strokeBorder(Color("SecondaryColor"), lineWidth: 2)
                .frame(width: 166, height: 171)
        )
    }
}

#Preview {
    ColorCart(redd : 208, greenn: 80, bluee: 74, fav: false, brand: "Brand", color: "Color", index: 0)
}
