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
    @Binding var Swift22:Int
    @ObservedObject var model = ViewModel()
    @State var wi = UserDefaults.standard.string(forKey: "W")
    @State var hi = UserDefaults.standard.string(forKey: "H")
    @State var na = UserDefaults.standard.string(forKey: "na")
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
                            TextField("Ivanov", text: $nam).frame(width: 260, height: 50, alignment: .center).foregroundColor(Color("tt"))
//                            CustNam(place: Text("Ivanov"), nam: $nam)
                        }.frame(width: 312, height: 50, alignment: .center)
                    }
                        ZStack{
                            RoundedRectangle(cornerRadius: 25.0).foregroundColor(.white).frame(width: 312, height: 50, alignment: .center)
                            HStack(spacing:0){
                                Image("z").padding()
                                Divider()
                                    .frame(width:1, height: 50, alignment: .center)
//                                CustNamPass(place: Text("●●●●●●"), pass: $pass)
                                SecureField("●●●●●●", text: $pass).frame(width: 260, height: 50, alignment: .center).foregroundColor(Color("tt"))
                            }.frame(width: 312, height: 50, alignment: .center)
                        }
                    }
                    Button(action: {
                        if nam != "" && pass != "" {
                            model.SignIn(pass: pass, nam: nam)
                            DispatchQueue.main.asyncAfter(deadline: .now()+2){
                                if model.perehod == 2{
                                    Swift22 = 3
                                    UserDefaults.standard.set(nam, forKey: "na")
                                } else if model.perehod == 3{
                                    erro.toggle()
                                    mess = "Error username or password"
                                }
                            }
                        }else{
                            erro.toggle()
                            mess = "Enter all fields"
                        }
                    }, label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 25.0).foregroundColor(.white).frame(width: 312, height: 50, alignment: .center)
                            Text("Sign In").font(.custom("ND Astroneer", size: 24)).foregroundColor(Color("tt"))
                        }
                    }).padding(.top,40).alert(isPresented: $erro, content: {
                        Alert(title: Text("Error"), message: Text("\(mess)"), dismissButton: .default(Text("Ok")))
                    })
                    VStack(spacing:0){
                    Button(action: {
                        Swift22 = 2
                    }, label: {
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
        }.edgesIgnoringSafeArea(.all).onTapGesture {
            UIApplication.shared.windows.forEach{$0.endEditing(true)}
        }
    }
}

struct LogIn_Previews: PreviewProvider {
    static var previews: some View {
        LogIn( Swift22: .constant(6))
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
