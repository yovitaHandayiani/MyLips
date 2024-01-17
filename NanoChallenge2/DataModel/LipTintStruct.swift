//
//  LipTintStruct.swift
//  NanoChallenge2
//
//  Created by Yovita Handayiani on 17/01/24.
//

import Foundation
import SwiftUI

struct LipTintColor: Identifiable{
    var id = UUID().uuidString
    var branNtype: String
    var name: String
    var redC: Double
    var greenC: Double
    var blueC: Double
    var fav: Bool
}

var OMBRELLA = [
    LipTintColor(branNtype: "OMBRELLA Lip Totem Tint", name: "Crush", redC: 208, greenC: 80, blueC: 74, fav: false),
    LipTintColor(branNtype: "OMBRELLA Lip Totem Tint", name: "Soul", redC: 211, greenC: 83, blueC: 67, fav: false),
    LipTintColor(branNtype: "OMBRELLA Lip Totem Tint", name: "Bond", redC: 239, greenC: 115, blueC: 86, fav: false),
    LipTintColor(branNtype: "OMBRELLA Lip Totem Tint", name: "Hottie", redC: 210, greenC: 31, blueC: 67, fav: false),
    LipTintColor(branNtype: "OMBRELLA Lip Totem Tint", name: "Under\nground", redC: 197, greenC: 119, blueC: 107, fav: false),
    LipTintColor(branNtype: "OMBRELLA Lip Totem Tint", name: "Under\ncover", redC: 173, greenC: 87, blueC: 90, fav: false),
    LipTintColor(branNtype: "OMBRELLA Lip Totem Tint", name: "High", redC: 225, greenC: 15, blueC: 74, fav: false),
    LipTintColor(branNtype: "OMBRELLA Lip Totem Tint", name: "Doze", redC: 191, greenC: 49, blueC: 39, fav: false),
    LipTintColor(branNtype: "OMBRELLA Lip Totem Tint", name: "HAYG", redC: 183, greenC: 111, blueC: 120, fav: false),
    LipTintColor(branNtype: "OMBRELLA Lip Totem Tint", name: "Lurve", redC: 172, greenC: 28, blueC: 64, fav: false),
    LipTintColor(branNtype: "OMBRELLA Lip Totem Tint", name: "Renee", redC: 204, greenC: 16, blueC: 33, fav: false),
    LipTintColor(branNtype: "OMBRELLA Lip Totem Tint", name: "Savage", redC: 193, greenC: 97, blueC: 93, fav: false),
    LipTintColor(branNtype: "OMBRELLA Lip Totem Tint", name: "WUCU", redC: 167, greenC: 27, blueC: 20, fav: false),
    LipTintColor(branNtype: "OMBRELLA Lip Totem Tint", name: "Nikola", redC: 201, greenC: 92, blueC: 92, fav: false)
]

var EtudeHouse = [
    LipTintColor(branNtype: "Etude House Dear My Wish Lips Talk", name: "PitAPat", redC: 241, greenC: 62, blueC: 92, fav: false),
    LipTintColor(branNtype: "Etude House Dear My Wish Lips Talk", name: "Breaking", redC: 165, greenC: 27, blueC: 34, fav: false),
    LipTintColor(branNtype: "Etude House Dear My Wish Lips Talk", name: "Burgundy", redC: 100, greenC: 13, blueC: 34, fav: false),
    LipTintColor(branNtype: "Etude House Dear My Wish Lips Talk", name: "Secret\nDate", redC: 151, greenC: 151, blueC: 151, fav: false),
    LipTintColor(branNtype: "Etude House Dear My Wish Lips Talk", name: "Sexy\nStar", redC: 151, greenC: 151, blueC: 151, fav: false),
    LipTintColor(branNtype: "Etude House Dear My Wish Lips Talk", name: "City\nGirl", redC: 151, greenC: 151, blueC: 151, fav: false),
    LipTintColor(branNtype: "Etude House Dear My Wish Lips Talk", name: "Hidden\nCoral", redC: 151, greenC: 151, blueC: 151, fav: false),
    LipTintColor(branNtype: "Etude House Dear My Wish Lips Talk", name: "Dream", redC: 151, greenC: 151, blueC: 151, fav: false),
    LipTintColor(branNtype: "Etude House Dear My Wish Lips Talk", name: "Beige", redC: 151, greenC: 151, blueC: 151, fav: false),
    LipTintColor(branNtype: "Etude House Dear My Wish Lips Talk", name: "Enchan\nted", redC: 151, greenC: 151, blueC: 151, fav: false)
]
