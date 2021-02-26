//
//  ContentView.swift
//  Sobo WatchKit Extension
//
//  Created by Sofi on 26.02.2021.
//

import SwiftUI

struct ContentView: View {
    @Binding var Swift22:Int
    @State var nam = ""
    @State var pass = ""
    @ObservedObject var model = ViewModel()
    @State var erro = false
    @State var mess = ""
    @State var n = UserDefaults.standard.string(forKey: "na")
    var body: some View {
        ScrollView{
        ZStack{
            Color.white
            Color("for")
            VStack(){
                Image("ic").resizable().frame(width: 40, height: 40, alignment: .center)
                Cust(nam: $nam, place: Text("username")).background(RoundedRectangle(cornerRadius: 20).frame(width: 170, height: 30, alignment: .center).foregroundColor(.white)).frame(width: 160, height: 30, alignment: .center).padding(.bottom,10)
                CustPass(pass: $pass, place: Text("●●●●●●")).background(RoundedRectangle(cornerRadius: 20).frame(width: 170, height: 30, alignment: .center).foregroundColor(.white)).frame(width: 160, height: 30, alignment: .center).padding(.bottom,20)
                Button(action: {
                    if nam != "" && pass != "" {
                        model.SignIn(pass: pass, nam: nam)
                        DispatchQueue.main.asyncAfter(deadline: .now()+2){
                            if model.perehod == 2{
                               Swift22 = 2
                                UserDefaults.standard.set(nam, forKey: "na")
                            } else if model.perehod == 3{
                                erro.toggle()
                                mess = "Error username or password"
                            }else if model.perehod == 4{
                                erro.toggle()
                                mess = "User is active"
                            }
                        }
                    }else{
                        erro.toggle()
                        mess = "Enter all fields"
                    }
                }, label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 18)
                            
                            .frame(width: 160, height: 35, alignment: .center)
                        Text("Sign In").font(.custom("ND Astroneer", size: 14)).foregroundColor(Color("te"))
                    }
                }).buttonStyle(PlainButtonStyle()).padding(.bottom).alert(isPresented: $erro, content: {
                    Alert(title: Text("Error"), message: Text("\(mess)"), dismissButton: .default(Text("Ok")))
                })
            }
        }.edgesIgnoringSafeArea(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(Swift22: .constant(1))
    }
}



struct Cust:View {
    @Binding var nam:String
    
    @State var place:Text
    @State var edit:(Bool) -> () = {_ in}
    @State var com:() -> () = {}
    var body: some View{
        ZStack(alignment:.leading){
            if nam.isEmpty{
                place.font(.custom("ND Astroneer", size: 10)).foregroundColor(.gray)
                
            }
            TextField("", text: $nam, onEditingChanged: edit, onCommit: com).font(.custom("ND Astroneer", size: 10)).foregroundColor(.gray)
            
        }
    }
}
struct CustPass:View {
    @Binding var pass:String
    
    @State var place:Text
    @State var edit:(Bool) -> () = {_ in}
    @State var com:() -> () = {}
    var body: some View{
        ZStack(alignment:.leading){
            if pass.isEmpty{
                place.font(.custom("ND Astroneer", size: 10)).foregroundColor(.gray)
                
            }
            SecureField("", text: $pass, onCommit: com).font(.custom("ND Astroneer", size: 10)).foregroundColor(.gray)
            
        }
    }
}
