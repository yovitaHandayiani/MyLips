//
//  ContentView.swift
//  NanoChallenge2
//
//  Created by Yovita Handayiani on 18/05/23.
//

import SwiftUI
import RealityKit
import ARKit
import Combine

var arView = ARView(frame: .zero)
//var history: [String] = []
//var isFav: Bool = false

struct ContentView : View {
    @State var obj: String
    @State var brand: String
    @State var index: Int
    @State private var isFav: Bool = false
    //@State private var history: [String] = []
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        //NavigationView{
            //History(history: $history)
            ZStack(){
                ARViewContainer(obj: obj)
                    .edgesIgnoringSafeArea(.all)
                    .onAppear {
                        print(modelData.history)
                        if(brand == "OMBRELLA"){
                            isFav = modelData.OMBRELLA[index].fav
                            
                            if let idx = modelData.history.firstIndex(of: modelData.OMBRELLA[index].name) {
                                modelData.history.remove(at: idx)
                                modelData.history.append(obj)
                            }
                            else if !modelData.history.contains(modelData.OMBRELLA[index].name) {
                                modelData.history.append(modelData.OMBRELLA[index].name)
                            }
                        }else{
                            isFav = modelData.EtudeHouse[index].fav
                            if let idx = modelData.history.firstIndex(of: modelData.EtudeHouse[index].name) {
                                modelData.history.remove(at: idx)
                                modelData.history.append(obj)
                            }
                            else if !modelData.history.contains(modelData.EtudeHouse[index].name) {
                                modelData.history.append(modelData.EtudeHouse[index].name)
                            }
                        }
                        print(modelData.history)
                    }
                HStack(alignment: .top){
                    VStack(alignment: .leading){
                        ScrollView(.vertical, showsIndicators: false, content: {
                            VStack{
                                if(brand == "OMBRELLA"){
                                    //history.append(contentsOf: [obj])
                                    //OMBRELLA[index].history.toggle()
                                    ForEach(modelData.OMBRELLA){OMBRELLA in
                                        Button{
                                            ARViewContainer(obj: OMBRELLA.name)
                                                .edgesIgnoringSafeArea(.all)
                                            obj = OMBRELLA.name
                                            print(obj)
                                            print(OMBRELLA.name)
                                            index = OMBRELLA.id
                                            
                                            DispatchQueue.main.async {
                                                if let idx = modelData.history.firstIndex(of: OMBRELLA.name) {
                                                    modelData.history.remove(at: idx)
                                                    modelData.history.append(OMBRELLA.name)
                                                }
                                                if !modelData.history.contains(OMBRELLA.name) {
                                                    modelData.history.append(OMBRELLA.name)
                                                }
                                                print(modelData.history)
                                            }
                                            //OMBRELLA.history.toggle()
                                            //print(history)
                                        }label: {
                                            if(obj.contains(OMBRELLA.name)){
                                                ColorButton(redd: OMBRELLA.redC, greenn: OMBRELLA.greenC, bluee: OMBRELLA.blueC, textt: OMBRELLA.name, needText: false, isSelected: true)
                                            }else{
                                                ColorButton(redd: OMBRELLA.redC, greenn: OMBRELLA.greenC, bluee: OMBRELLA.blueC, textt: OMBRELLA.name, needText: false, isSelected: false)
                                            }
                                        }
                                    }.padding(4)
                                        .onAppear{
                                            isFav = modelData.OMBRELLA[index].fav
                                        }
                                }else if(brand == "Etude House"){
                                    //EtudeHouse[index].history.toggle()
                                    ForEach(modelData.EtudeHouse){EtudeHouse in
                                        Button{
                                            ARViewContainer(obj: EtudeHouse.name)
                                                .edgesIgnoringSafeArea(.all)
                                            obj = EtudeHouse.name
                                            print(EtudeHouse.name)
                                            index = EtudeHouse.id
                                            
                                            DispatchQueue.main.async {
                                                if let idx = modelData.history.firstIndex(of: EtudeHouse.name) {
                                                    modelData.history.remove(at: idx)
                                                    modelData.history.append(EtudeHouse.name)
                                                }
                                                if !modelData.history.contains(EtudeHouse.name) {
                                                    modelData.history.append(EtudeHouse.name)
                                                }
                                                print(modelData.history)
                                            }
                                            //EtudeHouse.history.toggle()
                                        }label: {
                                            if(obj.contains(EtudeHouse.name)){
                                                ColorButton(redd: EtudeHouse.redC, greenn: EtudeHouse.greenC, bluee: EtudeHouse.blueC, textt: EtudeHouse.name, needText: false, isSelected: true)
                                            }else{
                                                ColorButton(redd: EtudeHouse.redC, greenn: EtudeHouse.greenC, bluee: EtudeHouse.blueC, textt: EtudeHouse.name, needText: false, isSelected: false)
                                            }
                                        }
                                    }.padding(4)
                                        .onAppear{
                                            isFav = modelData.EtudeHouse[index].fav
                                        }
                                }
                                
                            }.padding(2)
                        }).frame(height: 270)
                    }
                    .padding(10)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    //.background(Color(.red))
                }.frame(maxHeight: .infinity, alignment: .top)
                    .padding(EdgeInsets(top: 140, leading: 0, bottom: 0, trailing: 0))
                //.background(Color(.red))
                
                VStack{
                    Color(red: 31/255, green: 31/255, blue: 31/255).edgesIgnoringSafeArea(.all).frame(height: 0).offset(y: -45)
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
                            Image(systemName: isFav && modelData.OMBRELLA[index].fav ? "heart.fill" : "heart")
                                .resizable()
                                .foregroundStyle(.pink)
                                .frame(width: 22, height: 20)
                                .padding(15)
                                .background(Color(red: 40/255, green: 40/255, blue: 40/255))
                                .clipShape(Circle())
                                .onTapGesture {
                                    modelData.OMBRELLA[index].fav.toggle()
                                    isFav = modelData.OMBRELLA[index].fav
                                    print(modelData.OMBRELLA[index].fav)
                                    if(isFav){
                                        favCount = favCount - 1
                                        print(favCount)
                                    }
                                    if(!isFav){
                                        favCount = favCount + 1
                                        print(favCount)
                                    }
                                }
                                .onChange(of: modelData.OMBRELLA[index].fav) { newValue in
                                    isFav = newValue
                                }
                        }else if(brand=="Etude House"){
                            Image(systemName: isFav && modelData.EtudeHouse[index].fav ? "heart.fill" : "heart")
                                .resizable()
                                .foregroundStyle(.pink)
                                .frame(width: 22, height: 20)
                                .padding(15)
                                .background(Color(red: 40/255, green: 40/255, blue: 40/255))
                                .clipShape(Circle())
                                .onTapGesture {
                                    modelData.EtudeHouse[index].fav.toggle()
                                    isFav = modelData.EtudeHouse[index].fav
                                    print(modelData.EtudeHouse[index].fav)
                                    if(isFav){
                                        favCount = favCount - 1
                                        print(favCount)
                                    }
                                    if(!isFav){
                                        favCount = favCount + 1
                                        print(favCount)
                                    }
                                }
                                .onChange(of: modelData.EtudeHouse[index].fav) { newValue in
                                    isFav = newValue
                                }
                        }
//                        if(brand=="OMBRELLA"){
//                            Button{
//                                OMBRELLA[index].fav.toggle()
//                                print(OMBRELLA[index].fav)
//                            }label: {
//                                if(OMBRELLA[index].fav == true){
//                                    Image(systemName: "heart.fill")
//                                        .resizable()
//                                        .foregroundStyle(.pink)
//                                        .frame(width: 22, height: 20)
//                                        .padding(15)
//                                        .background(Color(red: 40/255, green: 40/255, blue: 40/255))
//                                        .clipShape(Circle())
//                                }else if (OMBRELLA[index].fav == false){
//                                    Image(systemName: "heart")
//                                        .resizable()
//                                        .foregroundStyle(.pink)
//                                        .frame(width: 22, height: 20)
//                                        .padding(15)
//                                        .background(Color(red: 40/255, green: 40/255, blue: 40/255))
//                                        .clipShape(Circle())
//                                }
//                                
//                            }.onChange(of: OMBRELLA[index].fav) { newValue in
//                                isFav = newValue
//                            }
//                        }else if(brand=="Etude House"){
//                            Button{
//                                EtudeHouse[index].fav.toggle()
//                                print(EtudeHouse[index].fav)
//                            }label: {
//                                if EtudeHouse[index].fav{
//                                    Image(systemName: "heart.fill")
//                                        .resizable()
//                                        .foregroundStyle(.pink)
//                                        .frame(width: 22, height: 20)
//                                        .padding(15)
//                                        .background(Color(red: 40/255, green: 40/255, blue: 40/255))
//                                        .clipShape(Circle())
//                                }else{
//                                    Image(systemName: "heart")
//                                        .resizable()
//                                        .foregroundStyle(.pink)
//                                        .frame(width: 22, height: 20)
//                                        .padding(15)
//                                        .background(Color(red: 40/255, green: 40/255, blue: 40/255))
//                                        .clipShape(Circle())
//                                }
//                                
//                            }.onChange(of: EtudeHouse[index].fav) { newValue in
//                                    isFav = newValue
//                                }
//                        }
                    }
                    .ignoresSafeArea()
                    .frame(maxWidth: .infinity)
                    .padding(30)
                    .background(Color(red: 31/255, green: 31/255, blue: 31/255))
                }
            }
            .toolbar(.hidden, for: .tabBar)
            .onAppear{
                UIApplication.shared.windows.first?.rootViewController?.navigationController?.popToRootViewController(animated: true)
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
        case "pit-a-pat":
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

//#if DEBUG
//struct ContentView_Previews : PreviewProvider {
//    static var previews: some View {
//        ContentView(obj: "Crush", brand: "OMBRELLA", index: 0)
//    }
//}
//#endif
