//
//  Swift2.swift
//  Sobo WatchKit Extension
//
//  Created by Sofi on 26.02.2021.
//

import SwiftUI

struct Swift2: View {
    @State var Swift22 = 1
    var body: some View {
        if Swift22 == 1{
            ContentView(Swift22: $Swift22)
        } else if Swift22 == 2{
            Main(Swift22: $Swift22)
            
        }else if Swift22 == 3{
            Add(Swift22: $Swift22)
            
        }
    }
}

struct Swift2_Previews: PreviewProvider {
    static var previews: some View {
        Swift2()
    }
}
