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
    @State var Swift22 = 1
    var body: some View{
        if l{
            Swift4( Swift22: $Swift22)
        }else{
            Swift2( Swift22: $Swift22)
        }
    }
}

struct Swift2: View {
    @State var wi = UserDefaults.standard.string(forKey: "W")
    @Binding var Swift22:Int
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
            LogIn(Swift22: $Swift22)
        }else if Swift22 == 7{
            Hellow3_2(Swift22: $Swift22)
        }else if Swift22 == 8{
            Swift3()
        }
        }
    }
struct Swift4: View {
    @State var wi = UserDefaults.standard.string(forKey: "W")
    @Binding var Swift22:Int
    var body: some View {
        
        if Swift22 == 1{
           LogIn(Swift22: $Swift22)
        } else if Swift22 == 2{
            SignUp(Swift22: $Swift22)
        } else if Swift22 == 3{
            B(Swift22: $Swift22)
        } else if Swift22 == 4{
            Profile(Swift22: $Swift22)
        }else if Swift22 == 5{
           Swift3()
        }
        else if Swift22 == 6{
            v( Swift22: $Swift22)
         
    }else if Swift22 == 7{
        v1( Swift22: $Swift22)
     }
    else if Swift22 == 8{
        p( Swift22: $Swift22)
     }
    else if Swift22 == 9{
        p2( Swift22: $Swift22)
     }
    else if Swift22 == 10{
        v2( Swift22: $Swift22)
     }
    else if Swift22 == 11{
        p3( Swift22: $Swift22)
     } else if Swift22 == 12{
        a( Swift22: $Swift22)
     } else if Swift22 == 13{
        a2( Swift22: $Swift22)
     } else if Swift22 == 14{
        a3( Swift22: $Swift22)
     } else if Swift22 == 15{
        l( Swift22: $Swift22)
     } else if Swift22 == 16{
        l2( Swift22: $Swift22)
     } else if Swift22 == 17{
        l3( Swift22: $Swift22)
     } 
    
        }
    }
    



struct Swift2_Previews: PreviewProvider {
    static var previews: some View {
        Swift2( Swift22: .constant(1))
    }
}
