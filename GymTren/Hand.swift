//
//  Hand.swift
//  GymTren
//
//  Created by Sofi on 26.02.2021.
//

import SwiftUI
struct a:View {
    @State var item = 0
    @Binding var Swift22:Int
    var body: some View{
        TabView(selection:$item){
           
            HandView(Swift22: $Swift22).tabItem { VStack{
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


struct HandView: View {
    @State var contDay2 = 1
    @State var c = UserDefaults.standard.integer(forKey: "ContHand")
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
                Text("Trunk inclinations").font(.custom("ND Astroneer", size: 24)).foregroundColor(.white)
                ZStack(alignment:.top){
                    Color.white
                    VStack{
                    LazyVGrid(columns: colums, spacing:10){
                    
                        
                        ForEach(1...60, id:\.self){ item in
                        Button(action: {
                            if contDay2 == item {
                                Swift22 = 13
                                contDay2 += 1
                                UserDefaults.standard.set(contDay2, forKey: "ContHand")
                            } else if item > contDay2{
                                erro.toggle()
                                mess = "Вы еще не дошли до этой тренеровки"
                                
                            }else if item < contDay2 {
                                erro.toggle()
                                mess = "Тренеровка уже пройдена"
                            }
                        }, label: {
                            ZStack{
                                Circle().strokeBorder(Color("ci"),lineWidth: 1 )
                                    .frame(width: 42, height: 42, alignment: .center)
                                    .foregroundColor(.clear)
                                    .background(Circle().foregroundColor(item < contDay2 ?  Color("ci") : .white))
                                Text("\(item)").font(.custom("ND Astroneer", size: 24)).foregroundColor(item < contDay2 ? .white : Color("ci"))
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
                                .frame(width:contDay2 == 1 ? 0 : contDay2 <= 12 ? 73 : (326/60*CGFloat(contDay2)), height: 45, alignment: .center)
                                .foregroundColor(Color("ci"))
                            
                        }
                            Text("\( contDay2 == 1 ? 0 : 100/61*CGFloat(contDay2))%").font(.custom("ND Astroneer", size: 24)).foregroundColor(contDay2 <= 40 ?  Color("ci") :.white )
                        }
                    }
                }
                Spacer()
            }.offset( y: 50)
        }.edgesIgnoringSafeArea(.all).onAppear(perform: {
            if c == 0{
                contDay2 = 1
            }else {
                contDay2 = UserDefaults.standard.integer(forKey: "ContHand")
            }
            
        })
    }
}

struct Hand_Previews: PreviewProvider {
    static var previews: some View {
        HandView( Swift22: .constant(1))
    }
}
