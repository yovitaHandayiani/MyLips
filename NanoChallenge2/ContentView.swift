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

struct ContentView : View {
    @State var obj: String
    
    var body: some View {
        ZStack{
            ARViewContainer(obj: obj)
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading){
//                call color button list
            }
            .padding(10)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
            //.background(Color(.red))
            
            VStack{
                Color.blue.ignoresSafeArea().frame(height: 44)
                Spacer()
                HStack{
                    Button{
                        UIApplication.shared.open(URL(string:"photos-redirect://")!)
                    }label: {
                        Image(systemName: "photo.fill.on.rectangle.fill")
                            .resizable()
                            .foregroundStyle(.pink)
                            .frame(width: 22, height: 20)
                            .padding(15)
                            .background(Color.gray)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
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
                        Circle()                        .strokeBorder(Color.black,lineWidth: 2)
                            .background(Circle().foregroundColor(Color.white))
                            .frame(width: 80, height: 80)
                            .overlay(
                                RoundedRectangle(cornerRadius: 100)
                                    .stroke(Color.white, lineWidth: 2)
                            )
                    }
                    Spacer()
                    Button{
                        
                    }label: {
//                        if(fav == true){
//                            Image(systemName: "heart.fill")
//                                .resizable()
//                                .foregroundStyle(.pink)
//                                .frame(width: 22, height: 20)
//                        }else{
//                            Image(systemName: "heart")
//                                .resizable()
//                                .foregroundStyle(.pink)
//                                .frame(width: 22, height: 20)
//                        }
                        Image(systemName: "heart")
                            .resizable()
                            .foregroundStyle(.pink)
                            .frame(width: 22, height: 20)
                            .padding(15)
                            .background(Color.gray)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            
                    }
                }
                .ignoresSafeArea()
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .padding(30)
                .background(Color(.blue))
            }
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
    //@StateObject private var dataController = DataController()
    
    static var previews: some View {
        ContentView(obj: "Crush")
            //.environment(\.managedObjectContext, dataController.container.viewContext)
    }
}
#endif
