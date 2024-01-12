//
//  Store.swift
//  NanoChallenge2
//
//  Created by Yovita Handayiani on 11/01/24.
//

import SwiftUI

struct TabBar: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
                    Store()
                        .tabItem {
                            Image(systemName: "1.circle")
                            Text("First")
                        }
                        .tag(0)
                    
                    SecondView()
                        .tabItem {
                            Image(systemName: "2.circle")
                            Text("Second")
                        }
                        .tag(1)
                    
                    ThirdView()
                        .tabItem {
                            Image(systemName: "3.circle")
                            Text("Third")
                        }
                        .tag(2)
                }
    }
}

struct SecondView: View {
    var body: some View {
        Text("Second View")
            .padding()
    }
}

struct ThirdView: View {
    var body: some View {
        Text("Third View")
            .padding()
    }
}

#Preview {
    TabBar()
}
