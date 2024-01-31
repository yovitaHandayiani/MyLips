//
//  LipTintStruct.swift
//  NanoChallenge2
//
//  Created by Yovita Handayiani on 17/01/24.
//

import Foundation
import SwiftUI

struct LipTintColor: Identifiable{
    let id : Int
    var branNtype: String
    var name: String
    var redC: Double
    var greenC: Double
    var blueC: Double
    var fav: Bool
}

//struct allBrand: Identifiable{
//    var id = UUID().uuidString
//    var name: String
//}

//var ListOfSearch = [
//    allBrand(name: "OMBRELLA Lip Totem Tint"),
//    allBrand(name: "Etude House Dear My Wish Lips Talk")
//]

var OMBRELLA = [
    LipTintColor(id: 0,
                 branNtype: "OMBRELLA Lip Totem Tint",
                 name: "Crush",
                 redC: 208,
                 greenC: 80,
                 blueC: 74,
                 fav: false),
    LipTintColor(id: 1, branNtype: "OMBRELLA Lip Totem Tint", name: "Soul", redC: 211, greenC: 83, blueC: 67, fav: false),
    LipTintColor(id: 2, branNtype: "OMBRELLA Lip Totem Tint", name: "Bond", redC: 239, greenC: 115, blueC: 86, fav: false),
    LipTintColor(id: 3, branNtype: "OMBRELLA Lip Totem Tint", name: "Hottie", redC: 210, greenC: 31, blueC: 67, fav: false),
    LipTintColor(id: 4, branNtype: "OMBRELLA Lip Totem Tint", name: "Underground", redC: 197, greenC: 119, blueC: 107, fav: false),
    LipTintColor(id: 5, branNtype: "OMBRELLA Lip Totem Tint", name: "Undercover", redC: 173, greenC: 87, blueC: 90, fav: false),
    LipTintColor(id: 6, branNtype: "OMBRELLA Lip Totem Tint", name: "High", redC: 225, greenC: 15, blueC: 74, fav: false),
    LipTintColor(id: 7, branNtype: "OMBRELLA Lip Totem Tint", name: "Doze", redC: 191, greenC: 49, blueC: 39, fav: false),
    LipTintColor(id: 8, branNtype: "OMBRELLA Lip Totem Tint", name: "HAYG", redC: 183, greenC: 111, blueC: 120, fav: false),
    LipTintColor(id: 9, branNtype: "OMBRELLA Lip Totem Tint", name: "Lurve", redC: 172, greenC: 28, blueC: 64, fav: false),
    LipTintColor(id: 10, branNtype: "OMBRELLA Lip Totem Tint", name: "Renee", redC: 204, greenC: 16, blueC: 33, fav: false),
    LipTintColor(id: 11, branNtype: "OMBRELLA Lip Totem Tint", name: "SAVAGE", redC: 193, greenC: 97, blueC: 93, fav: false),
    LipTintColor(id: 12, branNtype: "OMBRELLA Lip Totem Tint", name: "WUCU", redC: 167, greenC: 27, blueC: 20, fav: false),
    LipTintColor(id: 13, branNtype: "OMBRELLA Lip Totem Tint", name: "Nikola", redC: 201, greenC: 92, blueC: 92, fav: false)
]

var EtudeHouse = [
    LipTintColor(id: 0, branNtype: "Etude House Dear My Wish Lips Talk", name: "pit-a-pat", redC: 241, greenC: 62, blueC: 92, fav: false),
    LipTintColor(id: 1, branNtype: "Etude House Dear My Wish Lips Talk", name: "Breaking", redC: 165, greenC: 27, blueC: 34, fav: false),
    LipTintColor(id: 2, branNtype: "Etude House Dear My Wish Lips Talk", name: "Burgundy", redC: 100, greenC: 13, blueC: 34, fav: false),
]

var notAvai = [
    LipTintColor(id: 3, branNtype: "Etude House Dear My Wish Lips Talk", name: "Secret\nDate", redC: 151, greenC: 151, blueC: 151, fav: false),
    LipTintColor(id: 4, branNtype: "Etude House Dear My Wish Lips Talk", name: "Sexy\nStar", redC: 151, greenC: 151, blueC: 151, fav: false),
    LipTintColor(id: 5, branNtype: "Etude House Dear My Wish Lips Talk", name: "City\nGirl", redC: 151, greenC: 151, blueC: 151, fav: false),
    LipTintColor(id: 6, branNtype: "Etude House Dear My Wish Lips Talk", name: "Hidden\nCoral", redC: 151, greenC: 151, blueC: 151, fav: false),
    LipTintColor(id: 7, branNtype: "Etude House Dear My Wish Lips Talk", name: "Dream", redC: 151, greenC: 151, blueC: 151, fav: false),
    LipTintColor(id: 8, branNtype: "Etude House Dear My Wish Lips Talk", name: "Beige", redC: 151, greenC: 151, blueC: 151, fav: false),
    LipTintColor(id: 9, branNtype: "Etude House Dear My Wish Lips Talk", name: "Enchan\nted", redC: 151, greenC: 151, blueC: 151, fav: false)
]
