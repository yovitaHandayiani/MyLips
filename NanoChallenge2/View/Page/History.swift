//
//  History.swift
//  NanoChallenge2
//
//  Created by Yovita Handayiani on 15/01/24.
//

import SwiftUI

struct History: View {
    
    var body: some View {
        NavigationView {
            ScrollView {
                HStack{
                    Text("History").font(.largeTitle).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Spacer()
                    Button{
                        history.removeAll()
                    }label: {
                        Image(systemName: "trash.fill")
                            .resizable()
                            .foregroundStyle(.pink)
                            .frame(width: 28, height: 30)
                    }
                }.padding(EdgeInsets(top: 48, leading: 16, bottom: 0, trailing: 24))
                
                VStack(alignment: .leading){
                    Text(Date.now.formatted(date: .complete, time: .omitted)).font(.body)
                    
                    ScrollView(.horizontal, showsIndicators: true, content: {
                        HStack(alignment: .top){
                            
                            ForEach(history, id: \.self){ item in
                                Text(item)
                                //print(item)
                            }
                            //                            ForEach(datavm.lipTint) { lipTint in
                            //                                lipTintView(entity: lipTint)
                        }
                    })
                }
                .padding()
                
            }
            //.navigationBarTitle("History")
//            .toolbar{
//                Button{
//                    print("About tapped!")
//                }label: {
//                    Image(systemName: "trash.fill")
//                        .resizable()
//                        .foregroundStyle(.pink)
//                        .frame(width: 20, height: 22)
//                }
//            }
            
        }
    }
}

#Preview {
    History()
}
