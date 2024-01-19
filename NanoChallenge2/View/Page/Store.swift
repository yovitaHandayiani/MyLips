//
//  Store.swift
//  NanoChallenge2
//
//  Created by Yovita Handayiani on 12/01/24.
//

import SwiftUI
import SwiftUI

struct Store: View {
//    @StateObject var datavm = DataViewModel()
    @State private var search: String = ""
    @State private var showingAlert = false
    
    var body: some View {
        
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
//                HStack{
//                    Image (systemName: "magnifyingglass")
//                        .padding (.leading)
//                    
//                    TextField( "Search for lip tint brand", text:$search)
//                        .padding(8)
//                }
//                .background (Color(red: 255/255, green: 235/255, blue: 239/255))
//                .cornerRadius (12)
//                .padding(EdgeInsets(top: 8, leading: 16, bottom: 24, trailing: 16))
                
                VStack(alignment: .leading){
                    if(!search.isEmpty){
                        ForEach(ListOfSearch){ ListOfSearch in
                            if(ListOfSearch.name.lowercased().contains(search.lowercased())){
                                if(search.lowercased().contains("ombrella")){
                                    Text(OMBRELLA[0].branNtype)
                                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 12, trailing: 0))
                                    ScrollView(.horizontal, showsIndicators: false, content: {
                                        HStack(alignment: .top){
                                            ForEach(OMBRELLA){OMBRELLA in
                                                NavigationLink(destination: ContentView(obj: OMBRELLA.name, brand: "OMBRELLA", index: OMBRELLA.id)){
                                                    ColorButton(redd: OMBRELLA.redC, greenn: OMBRELLA.greenC, bluee: OMBRELLA.blueC, textt: OMBRELLA.name)
                                                }
                                            }.padding(2.5)
                //                            ForEach(datavm.lipTint) { lipTint in
                //                                lipTintView(entity: lipTint)
                //                            }
                                        }.padding(17)
                                    }).overlay(
                                        RoundedRectangle(cornerRadius: 12)
                                            .strokeBorder(Color("SecondaryColor"), lineWidth: 2)
                                           // .frame(width: 166, height: 171)
                                    )
                                }else if(search.lowercased().contains("etude house")){
                                    Text(EtudeHouse[0].branNtype)
                                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 12, trailing: 0))
                                    ScrollView(.horizontal, showsIndicators: false, content: {
                                        HStack(alignment: .top){
                                            ForEach(EtudeHouse){EtudeHouse in
                                                
                                                NavigationLink(destination: ContentView(obj: EtudeHouse.name, brand: "Etude House", index: EtudeHouse.id)){
                                                    ColorButton(redd: EtudeHouse.redC, greenn: EtudeHouse.greenC, bluee: EtudeHouse.blueC, textt: EtudeHouse.name)
                                                }
                                            }.padding(2.5)
                                            ForEach(notAvai){notAvai in
                                                Button{
                                                    showingAlert = true
                                                }label: {
                                                    ColorButton(redd : notAvai.redC, greenn: notAvai.greenC, bluee: notAvai.blueC, textt: notAvai.name)
                                                }.alert("Subscribe MyLips Pro", isPresented: $showingAlert) {
                                                    Button("OK", role: .cancel) { }
                                                }message:{
                                                    Text("Subscribe MyLips Pro to explore more colors.")
                                                }
                                            }.padding(2.5)
                                        }.padding(17)
                                    }).overlay(
                                        RoundedRectangle(cornerRadius: 12)
                                            .strokeBorder(Color("SecondaryColor"), lineWidth: 2)
                                           // .frame(width: 166, height: 171)
                                    )
                                }
                                
                            }
                        }
                    }else{
                        Text(OMBRELLA[0].branNtype)
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 12, trailing: 0))
                        ScrollView(.horizontal, showsIndicators: false, content: {
                            HStack(alignment: .top){
                                ForEach(OMBRELLA){OMBRELLA in
                                    NavigationLink(destination: ContentView(obj: OMBRELLA.name, brand: "OMBRELLA", index: OMBRELLA.id)){
                                        ColorButton(redd: OMBRELLA.redC, greenn: OMBRELLA.greenC, bluee: OMBRELLA.blueC, textt: OMBRELLA.name)
                                    }
                                }.padding(2.5)
    //                            ForEach(datavm.lipTint) { lipTint in
    //                                lipTintView(entity: lipTint)
    //                            }
                            }.padding(17)
                        }).overlay(
                            RoundedRectangle(cornerRadius: 12)
                                .strokeBorder(Color("SecondaryColor"), lineWidth: 2)
                               // .frame(width: 166, height: 171)
                        ).padding(EdgeInsets(top: 0, leading: 0, bottom: 24, trailing: 0))
                        
                        Text(EtudeHouse[0].branNtype)
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 12, trailing: 0))
                        ScrollView(.horizontal, showsIndicators: false, content: {
                            HStack(alignment: .top){
                                ForEach(EtudeHouse){EtudeHouse in
                                    NavigationLink(destination: ContentView(obj: EtudeHouse.name, brand: "Etude House", index: EtudeHouse.id)){
                                        ColorButton(redd: EtudeHouse.redC, greenn: EtudeHouse.greenC, bluee: EtudeHouse.blueC, textt: EtudeHouse.name)
                                    }
                                }.padding(2.5)
                                ForEach(notAvai){notAvai in
                                    Button{
                                        showingAlert = true
                                    }label: {
                                        ColorButton(redd : notAvai.redC, greenn: notAvai.greenC, bluee: notAvai.blueC, textt: notAvai.name)
                                    }.alert("Subscribe MyLips Pro", isPresented: $showingAlert) {
                                        Button("OK", role: .cancel) { }
                                    }message:{
                                        Text("Subscribe MyLips Pro to explore more colors.")
                                    }
                                }.padding(2.5)
                            }.padding(17)
                        }).overlay(
                            RoundedRectangle(cornerRadius: 12)
                                .strokeBorder(Color("SecondaryColor"), lineWidth: 2)
                               // .frame(width: 166, height: 171)
                        )
                    }
                }
                .padding()
//                .onAppear{
//                    datavm.save()
//                    datavm.getColorDetail()
//                    datavm.getBrand()
//                    datavm.getLipTint()
//                    
////                    datavm.lipTint = []
////                    datavm.colorDetail = []
////                    datavm.brand = []
//                }
                
            }
            .navigationBarTitle("Store")
            //.navigationBarTitle("Store", displayMode: .inline)
            .searchable(text: $search, placement: .navigationBarDrawer(displayMode: .automatic), prompt: "Look for something")
        }
    }
}

//struct lipTintView: View{
//    let entity: LipTintEntity
//    
//    var body: some View{
//        VStack(){
//            Text("\(entity.lip_tint_name ?? "")")
//            
////            if let brands = entity.brand?.allObjects as? [BrandEntity]{
////                ForEach(brands){ brand in
////                    Text(brand.brand_name ?? "")
////
////                }
////            }
//            
//            if let colors = entity.color_details?.allObjects as? [ColorDetailEntity]{
//                ForEach(colors){ color in
//                    Text(color.color_name ?? "")
//                }
//                
//            }
//            
//            //if
//        }
//    }
//}
                               
#Preview {
    Store()
}
