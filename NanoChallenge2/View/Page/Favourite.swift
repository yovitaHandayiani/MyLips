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
                VStack() {
                    ScrollView(.horizontal, showsIndicators: true, content: {
                        HStack(alignment: .top){
                            
                            //                            ForEach(datavm.lipTint) { lipTint in
                            //                                lipTintView(entity: lipTint)
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
