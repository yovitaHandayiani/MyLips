//
//  ContentView.swift
//  NanoChallenge2
//
//  Created by Yovita Handayiani on 18/05/23.
//

import SwiftUI
import RealityKit
import ARKit

var arView = ARView(frame: .zero)
var history: [String] = []

struct ContentView : View {
    @State var obj: String
    @State var brand: String
    @State var index: Int
   
   // @StateObject private var viewModel = HistoryViewModel()
    
    var body: some View {
        NavigationView{
            ZStack(){
                ARViewContainer(obj: obj)
                    .edgesIgnoringSafeArea(.all)
                    .onAppear {
                        // This code will be executed when the view appears
                        history.append(obj) // Replace "YourObject" with the actual object you want to append
                        //print(history)
                    }
                HStack(alignment: .top){
                    VStack(alignment: .leading){
                        ScrollView(.vertical, showsIndicators: false, content: {
                            VStack{
                                if(brand == "OMBRELLA"){
                                    //history.append(contentsOf: [obj])
                                    //OMBRELLA[index].history.toggle()
                                    ForEach(OMBRELLA){OMBRELLA in
                                        Button{
                                            ARViewContainer(obj: OMBRELLA.name)
                                                .edgesIgnoringSafeArea(.all)
                                            print(obj)
                                            print(OMBRELLA.name)
                                            index = OMBRELLA.id
                                            
                                            DispatchQueue.main.async {
                                                history.append(OMBRELLA.name)
                                                print(history)
                                            }
                                            //OMBRELLA.history.toggle()
                                            //print(history)
                                        }label: {
                                            ColorButton(redd: OMBRELLA.redC, greenn: OMBRELLA.greenC, bluee: OMBRELLA.blueC, textt: OMBRELLA.name)
                                        }
                                    }.padding(2.5)
                                }else if(brand == "Etude House"){
                                    //EtudeHouse[index].history.toggle()
                                    ForEach(EtudeHouse){EtudeHouse in
                                        Button{
                                            ARViewContainer(obj: EtudeHouse.name)
                                                .edgesIgnoringSafeArea(.all)
                                            print(EtudeHouse.name)
                                            index = EtudeHouse.id
                                            history.append(EtudeHouse.name)
                                            DispatchQueue.main.async {
                                                history.append(EtudeHouse.name)
                                                print(history)
                                            }
                                            //EtudeHouse.history.toggle()
                                        }label: {
                                            ColorButton(redd: EtudeHouse.redC, greenn: EtudeHouse.greenC, bluee: EtudeHouse.blueC, textt: EtudeHouse.name)
                                        }
                                    }.padding(2.5)
                                }
                                
                            }.padding(2)
                        }).frame(height: 340)
                    }
                    .padding(10)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    //.background(Color(.red))
                }.frame(maxHeight: .infinity, alignment: .top)
                    .padding(EdgeInsets(top: 160, leading: 0, bottom: 0, trailing: 0))
                //.background(Color(.red))
                
                VStack{
                    Color(red: 31/255, green: 31/255, blue: 31/255).edgesIgnoringSafeArea(.all).frame(height: 0)
                    Spacer()
                    HStack{
                        Button{
                            UIApplication.shared.open(URL(string:"photos-redirect://")!)
                        }label: {
                            Image(systemName: "photo.fill.on.rectangle.fill")
                                .resizable()
                                .foregroundStyle(.pink)
                                .frame(width: 26, height: 24)
                                .padding(15)
                                .background(Color(red: 40/255, green: 40/255, blue: 40/255))
                                .clipShape(Circle())
                        }
                        Spacer()
                        Button{
                            arView.snapshot(saveToHDR: false){ (image) in
                                
                                //compress image
                                let cImage = UIImage(data: (image?.pngData())!)
                                
                                //save to gallery
                                UIImageWriteToSavedPhotosAlbum(cImage!, nil, nil, nil)
                            }
                        }label: {
                            Circle()                        .strokeBorder(Color.black,lineWidth: 5)
                                .background(Circle().foregroundColor(Color.white))
                                .frame(width: 80, height: 80)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 100)
                                        .stroke(Color.white, lineWidth: 5)
                                )
                        }
                        Spacer()
                        if(brand=="OMBRELLA"){
                            Button{
                                OMBRELLA[index].fav.toggle()
                                print(OMBRELLA[index].fav)
                            }label: {
                                if(OMBRELLA[index].fav == true){
                                    Image(systemName: "heart.fill")
                                        .resizable()
                                        .foregroundStyle(.pink)
                                        .frame(width: 22, height: 20)
                                        .padding(15)
                                        .background(Color(red: 40/255, green: 40/255, blue: 40/255))
                                        .clipShape(Circle())
                                }else if (OMBRELLA[index].fav == false){
                                    Image(systemName: "heart")
                                        .resizable()
                                        .foregroundStyle(.pink)
                                        .frame(width: 22, height: 20)
                                        .padding(15)
                                        .background(Color(red: 40/255, green: 40/255, blue: 40/255))
                                        .clipShape(Circle())
                                }
                                
                            }
                        }else if(brand=="Etude House"){
                            Button{
                                EtudeHouse[index].fav.toggle()
                                print(EtudeHouse[index].fav)
                            }label: {
                                if(EtudeHouse[index].fav == true){
                                    Image(systemName: "heart.fill")
                                        .resizable()
                                        .foregroundStyle(.pink)
                                        .frame(width: 22, height: 20)
                                        .padding(15)
                                        .background(Color(red: 40/255, green: 40/255, blue: 40/255))
                                        .clipShape(Circle())
                                }else if (EtudeHouse[index].fav == false){
                                    Image(systemName: "heart")
                                        .resizable()
                                        .foregroundStyle(.pink)
                                        .frame(width: 22, height: 20)
                                        .padding(15)
                                        .background(Color(red: 40/255, green: 40/255, blue: 40/255))
                                        .clipShape(Circle())
                                }
                                
                            }
                        }
                    }
                    .ignoresSafeArea()
                    .frame(maxWidth: .infinity)
                    .padding(30)
                    .background(Color(red: 31/255, green: 31/255, blue: 31/255))
                }
            }
            .toolbar(.hidden, for: .tabBar)
        }
        
    }
}

struct ARViewContainer: UIViewRepresentable{
    @State var obj: String
    
    func makeUIView(context: Context) -> ARView {
        
        arView = ARView(frame: .zero)
        
        let config = ARFaceTrackingConfiguration()
        if #available(iOS 13.0, *){
            config.maximumNumberOfTrackedFaces = ARFaceTrackingConfiguration.supportedNumberOfTrackedFaces
        }
        config.isLightEstimationEnabled = true
        arView.session.run(config, options: [.resetTracking, .removeExistingAnchors])
        
        // Add the box anchor to the scene
        switch obj {
        case "Crush":
            arView.scene.anchors.append(try! Experience.loadCrush())
        case "Soul":
            arView.scene.anchors.append(try! Experience.loadSoul())
        case "Bond":
            arView.scene.anchors.append(try! Experience.loadBond())
        case "Hottie":
            arView.scene.anchors.append(try! Experience.loadHottie())
        case "Underground":
            arView.scene.anchors.append(try! Experience.loadUnderground())
        case "Undercover":
            arView.scene.anchors.append(try! Experience.loadUndercover())
        case "High":
            arView.scene.anchors.append(try! Experience.loadHigh())
        case "Doze":
            arView.scene.anchors.append(try! Experience.loadDoze())
        case "HAYG":
            arView.scene.anchors.append(try! Experience.loadHAYG())
        case "Lurve":
            arView.scene.anchors.append(try! Experience.loadLurve())
        case "Renee":
            arView.scene.anchors.append(try! Experience.loadRenee())
        case "SAVAGE":
            arView.scene.anchors.append(try! Experience.loadSAVAGE())
        case "WUCU":
            arView.scene.anchors.append(try! Experience.loadWUCU())
        case "Nikola":
            arView.scene.anchors.append(try! Experience.loadNikola())
        case "pitApat":
            arView.scene.anchors.append(try! Experience.loadPitApat())
            
        case "Breaking":
            arView.scene.anchors.append(try! Experience.loadBreaking())
            
        case "Burgundy":
            arView.scene.anchors.append(try! Experience.loadBurgundy())
            
        default:
            print("loh kok error")
        }
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView(obj: "Crush", brand: "OMBRELLA", index: 0 /*,history: ["Crush"]*/)
    }
}
#endif
