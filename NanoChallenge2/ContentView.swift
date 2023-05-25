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
            
            VStack{
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
    static var previews: some View {
        ContentView(obj: "Crush")
    }
}
#endif
