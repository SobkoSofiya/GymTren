//
//  SignUp.swift
//  GymTren
//
//  Created by Sofi on 25.02.2021.
//

import SwiftUI

struct SignUp: View {
    @State var name = ""
    @State var pas = ""
    @State var repass = ""
    @State var email = ""
    @State var mess = ""
    @State var erro = false
    @ObservedObject var model = ViewModel()
    @State var wi = UserDefaults.standard.string(forKey: "W")
    @State var hi = UserDefaults.standard.string(forKey: "H")
    @Binding var Swift22:Int
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
                            TextField("Ivanov", text: $name).frame(width: 260, height: 50, alignment: .center).foregroundColor(Color("tt"))
//                            CustNam1(place: Text("Ivanov"), name: $name)
                        }.frame(width: 312, height: 50, alignment: .center)
                    }
                        ZStack{
                            RoundedRectangle(cornerRadius: 25.0).foregroundColor(.white).frame(width: 312, height: 50, alignment: .center)
                            HStack(spacing:0){
                                Image("em").padding()
                                Divider()
                                    .frame(width:1, height: 50, alignment: .center)
//                                CustEm(place: Text("Ivanov@mail.com"), email: $email)
                                TextField("Ivanov@mail.com", text: $email).frame(width: 260, height: 50, alignment: .center).foregroundColor(Color("tt"))
                            }.frame(width: 312, height: 50, alignment: .center)
                        }
                        ZStack{
                            RoundedRectangle(cornerRadius: 25.0).foregroundColor(.white).frame(width: 312, height: 50, alignment: .center)
                            HStack(spacing:0){
                                Image("z").padding()
                                Divider()
                                    .frame(width:1, height: 50, alignment: .center)
//                                CustNamPass1(place: Text("●●●●●●"), pas: $pas)
                                SecureField("●●●●●●", text: $pas).frame(width: 260, height: 50, alignment: .center).foregroundColor(Color("tt"))
                            }.frame(width: 312, height: 50, alignment: .center)
                        }
                        ZStack{
                            RoundedRectangle(cornerRadius: 25.0).foregroundColor(.white).frame(width: 312, height: 50, alignment: .center)
                            HStack(spacing:0){
                                Image("z").padding()
                                Divider()
                                    .frame(width:1, height: 50, alignment: .center)
//                                CustNamrePass(place: Text("●●●●●●"), repass: $repass)
                                SecureField("●●●●●●", text: $repass).frame(width: 260, height: 50, alignment: .center).foregroundColor(Color("tt"))
                            }.frame(width: 312, height: 50, alignment: .center)
                        }
                    }
                    Button(action: {
                        if name != "" && pas != "" && repass != "" && email != "" {
                            if email.contains("@"){
                                if pas == repass{
                                    model.SignUp(pass: pas, nam: name, wh: wi!, hg: hi!, ema: email)
                                    Swift22 = 1
                                }else{
                                    erro.toggle()
                                    mess = "Passwords do not match"
                                }
                            }else{
                                erro.toggle()
                                mess = "Incorrect email"
                            }
                        }else{
                            erro.toggle()
                            mess = "Enter all fields"
                        }
                    }, label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 25.0).foregroundColor(.white).frame(width: 312, height: 50, alignment: .center)
                            Text("Sign Up").font(.custom("ND Astroneer", size: 24)).foregroundColor(Color("tt"))
                        }
                    }).padding(.top,40).alert(isPresented: $erro, content: {
                        Alert(title: Text("Error"), message: Text("\(mess)"), dismissButton: .default(Text("Ok")))
                    })
                   
                    VStack(spacing:0){
                    Button(action: {
                        Swift22 = 1
                    }, label: {
                        Text("Back").font(.custom("ND Astroneer", size: 16)).foregroundColor(Color.white)
                    })
                        Rectangle()
                            .frame(width: 25, height: 1, alignment: .center).foregroundColor(.white)
                    }.padding(.top,100)
                    
                    
                }.offset( y: -60)
                
                Spacer()
            }.offset( y: 60)
        }.edgesIgnoringSafeArea(.all).onTapGesture {
            UIApplication.shared.windows.forEach{$0.endEditing(true)}
        }
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp( Swift22: .constant(8))
    }
}




struct CustNam1:View {
    @State var place:Text
    @Binding var name:String
    @State var edit:(Bool) -> () = {_ in}
    @State var com: ()  -> () = {}
    var body: some View{
        ZStack(alignment:.leading){
            
            TextField("", text: $name, onEditingChanged: edit, onCommit: com).frame(width:260 , height: 50, alignment: .center)
            if name.isEmpty{
                place.padding(.horizontal).font(.custom("ND Astroneer", size: 24)).foregroundColor(.gray)
            }
        }.frame(width: 260, height: 50, alignment: .center)
    }
}

struct CustNamPass1:View {
    @State var place:Text
    @Binding var pas:String
    @State var edit:(Bool) -> () = {_ in}
    @State var com: ()  -> () = {}
    var body: some View{
        ZStack(alignment:.leading){
            if pas.isEmpty{
                place.padding(.horizontal).font(.custom("ND Astroneer", size: 24)).foregroundColor(.gray)
            }
            SecureField("", text: $pas, onCommit: com).frame(width: 260, height: 50, alignment: .center)
        }.frame(width: 260, height: 50, alignment: .center)
    }
}
struct CustEm:View {
    @State var place:Text
    @Binding var email:String
    @State var edit:(Bool) -> () = {_ in}
    @State var com: ()  -> () = {}
    var body: some View{
        ZStack(alignment:.leading){
            if email.isEmpty{
                place.padding(.horizontal).font(.custom("ND Astroneer", size: 24)).foregroundColor(.gray)
            }
            TextField("", text: $email, onEditingChanged: edit, onCommit: com).frame(width:260 , height: 50, alignment: .center)
        }.frame(width: 260, height: 50, alignment: .center)
    }
}

struct CustNamrePass:View {
    @State var place:Text
    @Binding var repass:String
    @State var edit:(Bool) -> () = {_ in}
    @State var com: ()  -> () = {}
    var body: some View{
        ZStack(alignment:.leading){
            if repass.isEmpty{
                place.padding(.horizontal).font(.custom("ND Astroneer", size: 24)).foregroundColor(.gray)
            }
            SecureField("", text: $repass, onCommit: com).frame(width: 260, height: 50, alignment: .center)
        }.frame(width: 260, height: 50, alignment: .center)
    }
}
