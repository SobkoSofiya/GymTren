//
//  SwiftUIView.swift
//  GymTren
//
//  Created by Sofi on 25.02.2021.
//

import SwiftUI

struct SwiftUIView: View {
    @Binding var Swift22:Int
    @ObservedObject var model = ViewModel()
    @State var na = UserDefaults.standard.string(forKey: "na")
    var body: some View {
        ZStack{
            Button(action: {
                model.SignOut(nam: na!)
                Swift22 = 1
            }, label: {
                Text("Back").font(.custom("ND Astroneer", size: 50)).foregroundColor(Color("tt"))
        
            })
               
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView(Swift22: .constant(9))
    }
}
