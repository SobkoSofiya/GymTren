//
//  RunList.swift
//  GymTren
//
//  Created by Sofi on 26.02.2021.
//

import SwiftUI

struct l3:View {
    @State var item = 0
    @Binding var Swift22:Int
    var body: some View{
        TabView(selection:$item){
           
            RunList(Swift22: $Swift22).tabItem { VStack{
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

struct RunList: View {
    @State var c = UserDefaults.standard.integer(forKey: "ContHand")
    @State var timer = Timer.publish(every: 1, on: .main, in: .tracking)
   @State var all = UserDefaults.standard.integer(forKey: "All")
    @Binding var Swift22:Int
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.clear)
                .background(LinearGradient(gradient: Gradient(colors: [Color("le"), Color("tr")]), startPoint: .leading, endPoint: .trailing))
            VStack(spacing:0){
                Group{
                    Text("My run list").font(.custom("ND Astroneer", size: 24)).foregroundColor(.white).offset( y: 20)
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
                }.font(.custom("ND Astroneer", size: 18)).hidden()
                }.offset( y: -5)
                ZStack{
                    Color.white
                    VStack{
                        List{
                            HStack{
                                Text("Distance: 0 km").font(.custom("ND Astroneer", size: 17)).foregroundColor(Color("ci"))
                                Spacer()
                                Text("Time: 00:00:00").font(.custom("ND Astroneer", size: 17)).foregroundColor(Color("ci"))
                            }
                            
                            
                        }
                        
                     
                     
                      Spacer()
                    }
                }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height-100, alignment: .center)
               Spacer()
            }.offset( y: 45)
        }.edgesIgnoringSafeArea(.all)
    }
}

struct RunList_Previews: PreviewProvider {
    static var previews: some View {
        RunList( Swift22: .constant(1))
    }
}
