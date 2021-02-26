//
//  PushUpsHand.swift
//  GymTren
//
//  Created by Sofi on 26.02.2021.
//

import SwiftUI

struct v:View {
    @State var item = 0
    @Binding var Swift22:Int
    var body: some View{
        TabView(selection:$item){
           
            PushUpsHand(Swift22: $Swift22).tabItem { VStack{
                Image("m")
                Text("Plan").font(.custom("ND Astroneer", size: 16)).foregroundColor(Color("tt"))
            } }.tag(0)
           
            Lesson().tabItem { VStack{
                Image("les")
                Text("Lessons").font(.custom("ND Astroneer", size: 16)).foregroundColor(Color("tt"))
            } }.tag(1)
            Reports( Swift22: $Swift22).tabItem { VStack{
                Image("re")
                Text("Reports").font(.custom("ND Astroneer", size: 16)).foregroundColor(Color("tt"))
            } }.tag(2)
            Profile(Swift22: $Swift22).tabItem { VStack{
                Image("pr")
                Text("Profile").font(.custom("ND Astroneer", size: 16)).foregroundColor(Color("tt"))
            } }.tag(3)
            
        }
    }
}


struct PushUpsHand: View {
    @State var contDay = 1
    @State var c = UserDefaults.standard.integer(forKey: "Cont")
    
    let colums = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    @State var erro = false
    @State var mess = ""
    @Binding var Swift22:Int
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.clear)
                .background(LinearGradient(gradient: Gradient(colors: [Color("le"), Color("tr")]), startPoint: .leading, endPoint: .trailing))
            VStack{
                Text("Push ups").font(.custom("ND Astroneer", size: 24)).foregroundColor(.white)
                ZStack(alignment:.top){
                    Color.white
                    VStack{
                    LazyVGrid(columns: colums, spacing:10){
                    
                        
                        ForEach(1...60, id:\.self){ item in
                        Button(action: {
                            if contDay == item {
                                Swift22 = 7
                                contDay += 1
                                UserDefaults.standard.set(contDay, forKey: "Cont")
                            } else if item > contDay{
                                erro.toggle()
                                mess = "Вы еще не дошли до этой тренеровки"
                                
                            }else if item < contDay {
                                erro.toggle()
                                mess = "Тренеровка уже пройдена"
                            }
                        }, label: {
                            ZStack{
                                Circle().strokeBorder(Color("ci"),lineWidth: 1 )
                                    .frame(width: 42, height: 42, alignment: .center)
                                    .foregroundColor(.clear)
                                    .background(Circle().foregroundColor(item < contDay ?  Color("ci") : .white))
                                Text("\(item)").font(.custom("ND Astroneer", size: 24)).foregroundColor(item < contDay ? .white : Color("ci"))
                            }
                        }).alert(isPresented: $erro, content: {
                            Alert(title: Text("Error"), message: Text("\(mess)"), dismissButton: .default(Text("Ok")))
                        })
                      
                    }
                    }.padding(.vertical,30).padding(.horizontal,30)
                        ZStack{
                        ZStack(alignment:.leading){
                            RoundedRectangle(cornerRadius: 23).strokeBorder(Color("ci"),lineWidth: 1 )
                                .frame(width: 326, height: 45, alignment: .center)
                                .foregroundColor(.clear)
                            RoundedRectangle(cornerRadius: 23)
                                .frame(width:contDay == 1 ? 0 : contDay <= 12 ? 73 : (326/60*CGFloat(contDay)), height: 45, alignment: .center)
                                .foregroundColor(Color("ci"))
                            
                        }
                            Text("\( contDay == 1 ? 0 : 100/61*CGFloat(contDay))%").font(.custom("ND Astroneer", size: 24)).foregroundColor(contDay <= 40 ?  Color("ci") :.white )
                        }
                    }
                }
                Spacer()
            }.offset( y: 50)
        }.edgesIgnoringSafeArea(.all).onAppear(perform: {
            if c == 0{
            contDay = 1
            }else {
                contDay = UserDefaults.standard.integer(forKey: "Cont")
            }
            
        })
    }
}

struct PushUpsHand_Previews: PreviewProvider {
    static var previews: some View {
        PushUpsHand( Swift22: .constant(1))
    }
}
