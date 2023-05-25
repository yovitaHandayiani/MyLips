//
//  ColorButton.swift
//  NanoChallenge2
//
//  Created by Yovita Handayiani on 21/05/23.
//

import SwiftUI

struct ColorButton: View {
    var redd : Double
    var greenn : Double
    var bluee : Double
    var textt : String
    var colour : String
    
    var body: some View {
        VStack{
            Circle()
                .strokeBorder(Color.white,lineWidth: 2)
                .background(Circle().foregroundColor(Color(red: redd/255, green: greenn/255, blue: bluee/255)))
                .frame(width: 31, height: 31)
                .padding(EdgeInsets(top: 3, leading: 3, bottom: 3, trailing: 3))
                .overlay(
                    RoundedRectangle(cornerRadius: 100)
                        .stroke(Color(red: 151/255, green: 151/255, blue: 151/255), lineWidth: 2)
                )
            
            if(colour == "Black"){
                Text(textt)
                    .font(.system(size: 11))
                    .foregroundColor(Color.black)
                    .fixedSize()
            }else{
                Text(textt)
                    .font(.system(size: 11))
                    .foregroundColor(Color(red: 151/255, green: 151/255, blue: 151/255))
                    .fixedSize()
            }
            
            
        }
        .frame(width: UIScreen.main.bounds.width * 0.11)
        //        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 10))
    }
}

struct ColorButton_Previews: PreviewProvider {
    static var previews: some View {
        ColorButton(redd : 208, greenn: 80, bluee: 74, textt: "Crush", colour: "Black")
    }
}
