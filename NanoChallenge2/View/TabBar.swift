//
//  Store.swift
//  NanoChallenge2
//
//  Created by Yovita Handayiani on 11/01/24.
//

import SwiftUI


struct TabBar: View {
    @State private var selectedTab = 0
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Store()
                .tabItem {
                    Image(systemName: "swatchpalette.fill")
                    Text("Store")
                }
                .tag(0)
            
            Favourite()
                .tabItem {
                    Image(systemName: "heart.fill")
                    //.symbolRenderingMode(.palette)
                    //.foregroundStyle(.pink)
                    Text("Favourite")
                }
                .tag(1)
            
            History(history: $modelData.history, modelData: modelData)
                .tabItem {
                    Image(systemName: "clock.arrow.circlepath")
                    Text("History")
                }
                .tag(2)
        }
    }
}

#Preview {
    TabBar()
}
