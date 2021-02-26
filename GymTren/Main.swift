//
//  Main.swift
//  GymTren
//
//  Created by Sofi on 25.02.2021.
//

import SwiftUI


struct B:View {
    @State var item = 0
    @Binding var Swift22:Int
    var body: some View{
        TabView(selection:$item){
           
            Main(Swift22: $Swift22).tabItem { VStack{
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

struct Main: View {
    @Binding var Swift22:Int
    @State var of:CGFloat = 0
    @State var all = UserDefaults.standard.integer(forKey: "All")
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.clear)
                .background(LinearGradient(gradient: Gradient(colors: [Color("le"), Color("tr")]), startPoint: .leading, endPoint: .trailing))
            ZStack{
            RoundedRectangle(cornerRadius: 49).foregroundColor(.white).frame(width: 345, height: 659, alignment: .center)
                VStack{
                    HStack(spacing:70){
                        VStack{
                            Text("\(all)").foregroundColor(of == -110 ? .white : Color("tt"))
                            Text("Training").foregroundColor(of == -110 ? .white : Color("tt"))
                        }.offset(x: of == -110 ? -40 : 0, y: of == -110 ? -100 : 0)
                        VStack{
                            Text("0").foregroundColor(of == -110 ? .white : Color("tt"))
                            Text("Kcal").foregroundColor(of == -110 ? .white : Color("tt"))
                        }.offset( y: of == -110 ? -100 : 0)
                        VStack{
                            Text("0").foregroundColor(of == -110 ? .white : Color("tt"))
                            Text("Minutes").foregroundColor(of == -110 ? .white : Color("tt"))
                        }.offset(x: of == -110 ? 40 : 0, y: of == -110 ? -100 : 0)
                       
                    }.font(.custom("ND Astroneer", size: of == -110 ? 18 : 16))
                    Spacer()
                   
                }.frame(width: 345, height: 659, alignment: .center).offset( y: 50)
            }
            VStack{
                Text("Home Gym").font(.custom("ND Astroneer", size: 24)).foregroundColor(.white)
                    .offset(x: of == -110 ? -130 : 0, y:  of == -110 ? -20 : 0)
                Spacer()
            }.offset( y: 60)
            ZStack(alignment:.top){
                Color.white
              
                    VStack(spacing:20){
                Button(action: {
                    Swift22 = 6
                }, label: {
                    Image("hand")
                })
                Button(action: {
                   
                }, label: {
                    Image("sp")
                })
                Button(action: {
                    Swift22 = 8
                }, label: {
                    ZStack{
                    Image("tors")
                        Text("Torso").font(.custom("ND Astroneer", size: 18)).foregroundColor(Color("tt")).offset(x: -130, y: 50)
                    }
                })
                Button(action: {
                    
                }, label: {
                    ZStack{
                    Image("leg")
                        Text("Torso").font(.custom("ND Astroneer", size: 18)).foregroundColor(Color("tt")).offset(x: -130, y: 50)
                    }
                })
                    }
                    .offset(y:10)
                
            }.frame(width: UIScreen.main.bounds.width, height: 700, alignment: .center).offset( y: 120).offset(y:10).offset( y: of)
            .animation(.linear)
            .gesture(DragGesture()
                        .onEnded({ (value) in
                            if -value.translation.height > 50{
                                of = -110
                            }
                            if value.translation.height > 50{
                                of = 0
                            }
                        })
            )
        }.edgesIgnoringSafeArea(.all)
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main(Swift22: .constant(1))
    }
}
