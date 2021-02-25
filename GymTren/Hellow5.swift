//
//  Hellow5.swift
//  GymTren
//
//  Created by Sofi on 25.02.2021.
//

import SwiftUI

struct Hellow5: View {
    @Binding var Swift22:Int
    @State var clr = 1
  
    @State var w = ""
    @State var h = ""
    @State var mess = ""
    @State var erro = false
    @State var wi = UserDefaults.standard.string(forKey: "W")
    @State var hi = UserDefaults.standard.string(forKey: "H")
    @State var l = UserDefaults.standard.bool(forKey: "l")
    var body: some View {
        ZStack{
            Color("for")
           
            VStack{
                Text("Step 5/5").font(.custom("ND Astroneer", size: 50)).foregroundColor(.white).offset(y: -100)
                Text("What’s your height and weight?").font(.custom("ND Astroneer", size: 18)).foregroundColor(.white).offset(y: -50)
                Spacer()
                
            }.offset( y: 300)
            VStack{
                VStack(spacing:20){
                ZStack{
                    RoundedRectangle(cornerRadius: 25.0).frame(width: 312, height: 50, alignment: .center)
                        .foregroundColor(.white)
                    Cust(place: Text("Height"), w: $w).padding(.leading).keyboardType(.numberPad)
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 25.0).frame(width: 312, height: 50, alignment: .center)
                        .foregroundColor(.white)
                    CustH(place: Text("Weight"), h: $h).padding(.leading).keyboardType(.numberPad)
                }
                }
                Button(action: {
                    if w != "" && h != ""{
                    clr = 2
                        Swift22 = 6
                        UserDefaults.standard.setValue(w, forKey: "W")
                        UserDefaults.standard.setValue(h, forKey: "H")
                        UserDefaults.standard.set(true, forKey: "l")
                    }
                    
                }, label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 39).strokeBorder(Color.black,lineWidth: 1 ).frame(width: 284, height: 77, alignment: .center).background(RoundedRectangle(cornerRadius: 39   ).foregroundColor(clr == 2 ?  Color("be") : .white))
                    VStack{
                        Text("Next").font(.custom("ND Astroneer", size: 24)).foregroundColor(Color("tt"))
                    
                    }
                }
                }).padding(.top,140)
            }.offset( y: 150)
        }.edgesIgnoringSafeArea(.all).onAppear(perform: {
        })
    }
}

struct Hellow5_Previews: PreviewProvider {
    static var previews: some View {
        Hellow5(Swift22: .constant(5))
    }
}



struct Cust:View {
    @State var place:Text
    @Binding var w:String
    @State var edit:(Bool) -> () = {_ in}
    @State var com: ()  -> () = {}
    var body: some View{
        ZStack(alignment:.leading){
            if w.isEmpty{
                place.padding(.horizontal).font(.custom("ND Astroneer", size: 24)).foregroundColor(.gray)
            }
            TextField("", text: $w, onEditingChanged: edit, onCommit: com).frame(width: 312, height: 50, alignment: .center)
        }.frame(width: 312, height: 50, alignment: .center)
    }
}


struct CustH:View {
    @State var place:Text
    @Binding var h:String
    @State var edit:(Bool) -> () = {_ in}
    @State var com: ()  -> () = {}
    var body: some View{
        ZStack(alignment:.leading){
            if h.isEmpty{
                place.padding(.horizontal).font(.custom("ND Astroneer", size: 24)).foregroundColor(.gray)
            }
            TextField("", text: $h, onEditingChanged: edit, onCommit: com).frame(width: 312, height: 50, alignment: .center)
        }.frame(width: 312, height: 50, alignment: .center)
    }
}
