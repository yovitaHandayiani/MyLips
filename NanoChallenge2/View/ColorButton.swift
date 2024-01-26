//
//  ColorButton.swift
//  NanoChallenge2
//
//  Created by Yovita Handayiani on 21/05/23.
//

import SwiftUI

var isSelected : Bool = false

struct ColorButton: View {
    var redd : Double
    var greenn : Double
    var bluee : Double
    var textt : String
    var needText : Bool
    
    var body: some View {
        VStack{
            if isSelected{
                Circle()
                    .strokeBorder(Color.white,lineWidth: 2)
                    .background(Circle().foregroundColor(Color(red: redd/255, green: greenn/255, blue: bluee/255)))
                    .frame(width: 32, height: 32)
                    .padding(EdgeInsets(top: 3, leading: 3, bottom: 3, trailing: 3))
                    .overlay(
                        RoundedRectangle(cornerRadius: 100)
                            .stroke(Color(red: 255/255, green: 45/255, blue: 85/255), lineWidth: 2)
                    )
                
                if(needText == true){
                    Text(textt).font(.caption).foregroundColor(.black)
                }
            }else{
                Circle()
                    .strokeBorder(Color.white,lineWidth: 2)
                    .background(Circle().foregroundColor(Color(red: redd/255, green: greenn/255, blue: bluee/255)))
                    .frame(width: 32, height: 32)
                    .padding(EdgeInsets(top: 3, leading: 3, bottom: 3, trailing: 3))
                    .overlay(
                        RoundedRectangle(cornerRadius: 100)
                            .stroke(Color(red: 188/255, green: 188/255, blue: 192/255), lineWidth: 2)
                    )
                
                if(needText == true){
                    Text(textt).font(.caption).foregroundColor(.black)
                }
            }
        }
        .frame(width: UIScreen.main.bounds.width * 0.11)
        //        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 10))
    }
    
}

struct ColorButton_Previews: PreviewProvider {
    static var previews: some View {
        ColorButton(redd : 217, greenn: 217, bluee: 217, textt: "Color\nName", needText: true)
    }
}
