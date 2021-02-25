//
//  Swift2.swift
//  GymTren
//
//  Created by Sofi on 25.02.2021.
//

import SwiftUI


struct Swift3:View {
    @State var swi = 1
   @State var l =  UserDefaults.standard.bool(forKey: "l")
    var body: some View{
        if l{
            LogIn()
        }else{
            Swift2()
        }
    }
}

struct Swift2: View {
    @State var wi = UserDefaults.standard.string(forKey: "W")
    @State var Swift22 = 1
    var body: some View {
        
        if Swift22 == 1{
           Hellow(Swift22: $Swift22)
        } else if Swift22 == 2{
            Hellow2(Swift22: $Swift22)
        }else if Swift22 == 3{
            Hellow3(Swift22: $Swift22)
        }else if Swift22 == 4{
            ellow(Swift22: $Swift22)
        }else if Swift22 == 5{
            Hellow5(Swift22: $Swift22)
        }else if Swift22 == 6{
            LogIn()
        }else if Swift22 == 7{
            Hellow3_2(Swift22: $Swift22)
        }
        }
    }
   
    



struct Swift2_Previews: PreviewProvider {
    static var previews: some View {
        Swift2()
    }
}
