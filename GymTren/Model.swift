//
//  Model.swift
//  GymTren
//
//  Created by Sofi on 25.02.2021.
//

import Foundation
import  SwiftUI

struct Model:Hashable {
    var nam, pass, wh, hg, ema:String
}



struct ModelYou:Hashable {
    var url, category:String
}


struct GetProfile:Hashable {
    var token, wh, hi:String
}
struct GProfile:Hashable {
    var token:String
}
