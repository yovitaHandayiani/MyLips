//
//  History.swift
//  NanoChallenge2
//
//  Created by Yovita Handayiani on 15/01/24.
//

import SwiftUI

struct History: View {
    @Binding var history: [String]
    @ObservedObject var modelData: ModelData
    @State private var showAlert = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                HStack{
                    Text("History").font(.largeTitle).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Spacer()
                    if !modelData.history.isEmpty {
                        Button {
                            showAlert = true
                        } label: {
                            Image(systemName: "trash.fill")
                                .resizable()
                                .foregroundStyle(.pink)
                                .frame(width: 28, height: 30)
                        }
                        .alert("Delete all history?", isPresented: $showAlert) {
                            Button("Delete", role: .destructive) {
                                modelData.history.removeAll()
                            }
                            Button("Cancel", role: .cancel) { }
                        } message: {
                            Text("This action cannot be undone.")
                        }
                    }
                    
//                    if(!modelData.history.isEmpty){
//                        Button{
//                            modelData.history.removeAll()
//                        }label: {
//                            Image(systemName: "trash.fill")
//                                .resizable()
//                                .foregroundStyle(.pink)
//                                .frame(width: 28, height: 30)
//                        }
//                    }
                }.padding(EdgeInsets(top: 48, leading: 16, bottom: 0, trailing: 24))
                
                VStack(alignment: .leading){
                    if(!modelData.history.isEmpty){
                        Text(Date.now.formatted(date: .complete, time: .omitted)).font(.body)
                    }else{
                        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/){
                            Image(systemName: "clock.arrow.circlepath")
                                .resizable()
                                .frame(width: 110, height: 100)
                                .bold(false)
                                .foregroundColor(.gray)
                                .padding(.bottom)
                            Text("You'll find your history here").font(.callout).bold().padding(.bottom)
                            Text("You can see the color you've tried or delete them from your history").font(.caption).multilineTextAlignment(.center)
                        }.padding(EdgeInsets(top: UIScreen.main.bounds.height/4.5, leading: 24, bottom: 0, trailing: 0))
                    }
                    ScrollView(.vertical, showsIndicators: false, content: {
                        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())]){
                            
                            ForEach(modelData.history.reversed(), id: \.self){ item in
                                //Text(item)
                                ForEach(OMBRELLA){OMBRELLA in
                                    if(OMBRELLA.name.contains(item)){
                                        NavigationLink(destination: ContentView(obj: OMBRELLA.name, brand: "OMBRELLA", index: OMBRELLA.id)){
                                            ColorCart(redd: OMBRELLA.redC, greenn: OMBRELLA.greenC, bluee: OMBRELLA.blueC, fav: OMBRELLA.fav, brand: "OMBRELLA", color: OMBRELLA.name, index: OMBRELLA.id)
                                        }
                                    }
                                }.padding(13)
                                
                                ForEach(EtudeHouse){EtudeHouse in
                                    if(EtudeHouse.name.contains(item)){
                                        NavigationLink(destination: ContentView(obj: EtudeHouse.name, brand: "Etude House", index: EtudeHouse.id/*, history: []*/)){
                                            ColorCart(redd: EtudeHouse.redC, greenn: EtudeHouse.greenC, bluee: EtudeHouse.blueC, fav: EtudeHouse.fav, brand: "Etude House", color: EtudeHouse.name, index: EtudeHouse.id)
                                        }
                                    }
                                }.padding(13)
                            }
                        }
                        
                    })
                    
                }
                .padding()
                
            }
            .toolbar(.visible, for: .tabBar)
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
    History(history: .constant(ModelData().history), modelData: ModelData())
}
