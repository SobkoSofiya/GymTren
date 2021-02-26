//
//  HandDe.swift
//  GymTren
//
//  Created by Sofi on 26.02.2021.
//

import SwiftUI
import SSSwiftUIGIFView
struct a2:View {
    @State var item = 0
    @Binding var Swift22:Int
    var body: some View{
        TabView(selection:$item){
           
            HandDe(Swift22: $Swift22).tabItem { VStack{
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
struct HandDe: View {
    @State var c = UserDefaults.standard.integer(forKey: "ContHand")
    @State var timer = Timer.publish(every: 1, on: .main, in: .tracking)
   
    @Binding var Swift22:Int
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.clear)
                .background(LinearGradient(gradient: Gradient(colors: [Color("le"), Color("tr")]), startPoint: .leading, endPoint: .trailing))
            VStack(spacing:0){
                Group{
                Text("Trunk inclinations").font(.custom("ND Astroneer", size: 24)).foregroundColor(.white)
                HStack(spacing:110){
                    VStack{
                        Text("\(c)").foregroundColor(.white )
                        Text("Scores").foregroundColor(.white)
                    }
                    VStack{
                        Text("0").foregroundColor(.white )
                        Text("Minutes").foregroundColor(.white)
                    }
                    VStack{
                        Text("0").foregroundColor(.white )
                        Text("Kcal").foregroundColor(.white)
                    }
                }.font(.custom("ND Astroneer", size: 18))
                }.offset( y: -5)
                ZStack{
                    Color.white
                    VStack{
                        SwiftUIGIFPlayerView(gifName: "hand").frame(width: 269, height: 229, alignment: .center).padding(.top,30)
                        ZStack{
                        Button(action: {
                            if c != 0{
                            c -= 1
                            }
                        }, label: {
                            ZStack{
                            Circle()
                                .strokeBorder(Color("ci") )
                                .frame(width: 317, height: 317, alignment: .center)
                                .foregroundColor(.clear)
                            Text("Tap").font(.custom("ND Astroneer", size: 75)).foregroundColor(Color("ci"))
                            }
                        }).hidden()
                            Image("e").offset( y: -50)
                        }
                        Button(action: {
                            Swift22 = 14
                        }, label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 25.0) .strokeBorder(Color("ci") )
                                    .frame(width: 312, height: 50, alignment: .center)
                                    .foregroundColor(.clear)
                                Text("Stop").font(.custom("ND Astroneer", size: 24)).foregroundColor(Color("ci"))
                                
                            }
                        }).padding()
                        Spacer()
                    }
                }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height-100, alignment: .center)
               Spacer()
            }.offset( y: 45)
        }.edgesIgnoringSafeArea(.all)
    }
}

struct HandDe_Previews: PreviewProvider {
    static var previews: some View {
        HandDe( Swift22: .constant(1))
    }
}
