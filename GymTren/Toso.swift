//
//  Toso.swift
//  GymTren
//
//  Created by Sofi on 26.02.2021.
//

import SwiftUI
struct p:View {
    @State var item = 0
    @Binding var Swift22:Int
    var body: some View{
        TabView(selection:$item){
           
            Toso(Swift22: $Swift22).tabItem { VStack{
                Image("m")
                Text("Plan").font(.custom("ND Astroneer", size: 16)).foregroundColor(Color("tt"))
            } }.tag(0)
           
            Lesson().tabItem { VStack{
                Image("les")
                Text("Lessons").font(.custom("ND Astroneer", size: 16)).foregroundColor(Color("tt"))
            } }.tag(1)
            Profile( Swift22: $Swift22).tabItem { VStack{
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

struct Toso: View {
    @State var contDay1 = 1
    @State var c = UserDefaults.standard.integer(forKey: "ContPush")
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
                Text("Sit-up").font(.custom("ND Astroneer", size: 24)).foregroundColor(.white)
                ZStack(alignment:.top){
                    Color.white
                    VStack{
                    LazyVGrid(columns: colums, spacing:10){
                    
                        
                        ForEach(1...60, id:\.self){ item in
                        Button(action: {
                            if contDay1 == item {
                                Swift22 = 9
                                contDay1 += 1
                                UserDefaults.standard.set(contDay1, forKey: "ContPush")
                            } else if item > contDay1{
                                erro.toggle()
                                mess = "Вы еще не дошли до этой тренеровки"
                                
                            }else if item < contDay1 {
                                erro.toggle()
                                mess = "Тренеровка уже пройдена"
                            }
                        }, label: {
                            ZStack{
                                Circle().strokeBorder(Color("ci"),lineWidth: 1 )
                                    .frame(width: 42, height: 42, alignment: .center)
                                    .foregroundColor(.clear)
                                    .background(Circle().foregroundColor(item < contDay1 ?  Color("ci") : .white))
                                Text("\(item)").font(.custom("ND Astroneer", size: 24)).foregroundColor(item < contDay1 ? .white : Color("ci"))
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
                                .frame(width:contDay1 == 1 ? 0 : contDay1 <= 12 ? 73 : (326/60*CGFloat(contDay1)), height: 45, alignment: .center)
                                .foregroundColor(Color("ci"))
                            
                        }
                            Text("\( contDay1 == 1 ? 0 : 100/61*CGFloat(contDay1))%").font(.custom("ND Astroneer", size: 24)).foregroundColor(contDay1 <= 40 ?  Color("ci") :.white )
                        }
                    }
                }
                Spacer()
            }.offset( y: 50)
        }.edgesIgnoringSafeArea(.all).onAppear(perform: {
            if c == 0{
                contDay1 = 1
            }else {
                contDay1 = UserDefaults.standard.integer(forKey: "ContPush")
            }
            
        })
    }
}

struct Toso_Previews: PreviewProvider {
    static var previews: some View {
        Toso(Swift22: .constant(1))
    }
}
