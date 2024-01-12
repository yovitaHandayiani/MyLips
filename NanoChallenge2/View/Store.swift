//
//  Store.swift
//  NanoChallenge2
//
//  Created by Yovita Handayiani on 12/01/24.
//

import SwiftUI
import SwiftUI

struct Store: View {
    @StateObject var datavm = DataViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack() {
                    ScrollView(.horizontal, showsIndicators: true, content: {
                        HStack(alignment: .top){
                            ForEach(datavm.lipTint) { lipTint in
                                lipTintView(entity: lipTint)
                            }
                        }
                    })
                }
                .padding()
                .onAppear{
                    datavm.save()
                    datavm.getColorDetail()
                    datavm.getBrand()
                    datavm.getLipTint()
                    
//                    datavm.lipTint = []
//                    datavm.colorDetail = []
//                    datavm.brand = []
                }
            }
            .navigationBarTitle("Store")
            //.navigationBarTitle("Store", displayMode: .inline)
        }
    }
}

struct lipTintView: View{
    let entity: LipTintEntity
    
    var body: some View{
        VStack(){
            //Text("\(entity.lip_tint_name ?? "")")
            
//            if let brands = entity.brand?.allObjects as? [BrandEntity]{
//                ForEach(brands){ brand in
//                    Text(brand.brand_name ?? "")
//
//                }
//            }
            
            if let colors = entity.color_details?.allObjects as? [ColorDetailEntity]{
                ForEach(colors){ color in
                    Text(color.color_name ?? "")
                }
                
            }
            
            //if
        }
    }
}
                               
#Preview {
    Store()
}
