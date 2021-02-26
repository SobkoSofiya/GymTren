//
//  Add.swift
//  Sobo WatchKit Extension
//
//  Created by Sofi on 26.02.2021.
//

import SwiftUI

struct Add: View {
    @State var add = ""
    @Binding var Swift22:Int
    @State var dr = UserDefaults.standard.integer(forKey: "dr")
    var body: some View {
        ScrollView{
        ZStack{
            Color("be")
            VStack{
                HStack{
                    
                    Button(action: {
                       
                        Swift22 = 2
                    }, label: {
                        Text("Cancel").font(.custom("ND Astroneer", size: 18)).foregroundColor(Color("te")).padding(7)
                    }).buttonStyle(PlainButtonStyle())
                    Spacer()
                }
                HStack{
                    CustAdd(add: $add, place: Text("0"))
                    Text("ml").font(.custom("ND Astroneer", size: 27)).foregroundColor(Color("te"))
                }.padding(25).offset(x: -15)
                Button(action: {
                    UserDefaults.standard.set(dr+Int(add)!, forKey: "dr")
                    Swift22 = 2
                }, label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10).strokeBorder(Color("te") )
                            .frame(width: 160, height: 30, alignment: .center)
                            .foregroundColor(.clear)
                            .background(RoundedRectangle(cornerRadius: 10).foregroundColor(Color("te")))
                        HStack{
                            Text("Add").font(.custom("ND Astroneer", size: 16)).foregroundColor(.white)
                            
                        }  .frame(width: 160, height: 30, alignment: .center)
                        
                    }
                }).buttonStyle(PlainButtonStyle()).padding(.bottom)
            }
        }
        }
    }
}

struct Add_Previews: PreviewProvider {
    static var previews: some View {
        Add( Swift22: .constant(1))
    }
}


struct CustAdd:View {
    @Binding var add:String
    
    @State var place:Text
    @State var edit:(Bool) -> () = {_ in}
    @State var com:() -> () = {}
    var body: some View{
        ZStack(alignment:.trailing){
            if add.isEmpty{
                place.font(.custom("ND Astroneer", size: 30)).foregroundColor(Color("te"))
                
            }
            TextField("", text: $add, onEditingChanged: edit, onCommit: com).frame(width: 40, height: 18, alignment: .center).font(.custom("ND Astroneer", size: 30)).foregroundColor(Color("te"))
            
        }
    }
}
