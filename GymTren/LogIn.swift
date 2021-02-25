//
//  LogIn.swift
//  GymTren
//
//  Created by Sofi on 25.02.2021.
//

import SwiftUI

struct LogIn: View {
    @State var nam = ""
    @State var pass = ""
    @State var mess = ""
    @State var erro = false
    var body: some View {
        ZStack{
            Color("for")
            VStack{
                Image("icc")
                Group{
                    Text("Home").font(.custom("ND Astroneer", size: 50)).foregroundColor(Color.white)
                    Text("Gym").font(.custom("ND Astroneer", size: 50)).foregroundColor(Color.white)
                    VStack(spacing:20){
                    ZStack{
                        RoundedRectangle(cornerRadius: 25.0).foregroundColor(.white).frame(width: 312, height: 50, alignment: .center)
                        HStack(spacing:0){
                            Image("pro").padding()
                            Divider()
                                .frame(width:1, height: 50, alignment: .center)
                            CustNam(place: Text("Ivanov"), nam: $nam)
                        }.frame(width: 312, height: 50, alignment: .center)
                    }
                        ZStack{
                            RoundedRectangle(cornerRadius: 25.0).foregroundColor(.white).frame(width: 312, height: 50, alignment: .center)
                            HStack(spacing:0){
                                Image("z").padding()
                                Divider()
                                    .frame(width:1, height: 50, alignment: .center)
                                CustNamPass(place: Text("Ivanov"), pass: $pass)
                            }.frame(width: 312, height: 50, alignment: .center)
                        }
                    }
                    Button(action: {
                        
                    }, label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 25.0).foregroundColor(.white).frame(width: 312, height: 50, alignment: .center)
                            Text("Sign In").font(.custom("ND Astroneer", size: 24)).foregroundColor(Color("tt"))
                        }
                    }).padding(.top,40)
                    VStack(spacing:0){
                    Button(action: {}, label: {
                        Text("Sign Up").font(.custom("ND Astroneer", size: 24)).foregroundColor(Color.white)
                    })
                        Rectangle()
                            .frame(width: 65, height: 1, alignment: .center).foregroundColor(.white)
                    }
                    VStack(spacing:0){
                    Button(action: {}, label: {
                        Text("Skip").font(.custom("ND Astroneer", size: 16)).foregroundColor(Color.white)
                    })
                        Rectangle()
                            .frame(width: 25, height: 1, alignment: .center).foregroundColor(.white)
                    }.padding(.top,100)
                    
                    
                }.offset( y: -60)
                
                Spacer()
            }.offset( y: 160)
        }.edgesIgnoringSafeArea(.all)
    }
}

struct LogIn_Previews: PreviewProvider {
    static var previews: some View {
        LogIn()
    }
}





struct CustNam:View {
    @State var place:Text
    @Binding var nam:String
    @State var edit:(Bool) -> () = {_ in}
    @State var com: ()  -> () = {}
    var body: some View{
        ZStack(alignment:.leading){
            if nam.isEmpty{
                place.padding(.horizontal).font(.custom("ND Astroneer", size: 24)).foregroundColor(.gray)
            }
            TextField("", text: $nam, onEditingChanged: edit, onCommit: com).frame(width:260 , height: 50, alignment: .center)
        }.frame(width: 260, height: 50, alignment: .center)
    }
}

struct CustNamPass:View {
    @State var place:Text
    @Binding var pass:String
    @State var edit:(Bool) -> () = {_ in}
    @State var com: ()  -> () = {}
    var body: some View{
        ZStack(alignment:.leading){
            if pass.isEmpty{
                place.padding(.horizontal).font(.custom("ND Astroneer", size: 24)).foregroundColor(.gray)
            }
            SecureField("", text: $pass, onCommit: com).frame(width: 260, height: 50, alignment: .center)
        }.frame(width: 260, height: 50, alignment: .center)
    }
}
