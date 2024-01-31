//
//  ModelData.swift
//  NanoChallenge2
//
//  Created by Yovita Handayiani on 31/01/24.
//

import Foundation
import SwiftUI
import Combine

class ModelData: ObservableObject {
    @Published var history: [String] = []
}
