//
//  LegDetail.swift
//  GymTren
//
//  Created by Sofi on 26.02.2021.
//

import SwiftUI
import SSSwiftUIGIFView
struct l2:View {
    @State var item = 0
    @Binding var Swift22:Int
    var body: some View{
        TabView(selection:$item){
           
            LegDetail(Swift22: $Swift22).tabItem { VStack{
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
struct LegDetail: View {
    @State var c = UserDefaults.standard.integer(forKey: "ContRun")
    @State var timer = Timer.publish(every: 1, on: .main, in: .tracking)
   
    @Binding var Swift22:Int
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.clear)
                .background(LinearGradient(gradient: Gradient(colors: [Color("le"), Color("tr")]), startPoint: .leading, endPoint: .trailing))
            VStack(spacing:0){
                Group{
                    ZStack{
                    Text("Run").font(.custom("ND Astroneer", size: 24)).foregroundColor(.white).offset( y: 20)
                        HStack{
                            Spacer()
                            Image("m").resizable().frame(width: 30, height: 30, alignment: .center).offset(x: -10, y: 20)
                           
                        }
                    }
                    
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
                        SwiftUIGIFPlayerView(gifName: "run").frame(width: 330, height: 166, alignment: .center).padding(.top,80)
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
                            VStack{
                            ZStack{
                                RoundedRectangle(cornerRadius: 33) .strokeBorder(Color("ci") )
                                    .frame(width: 267, height: 66, alignment: .center)
                                    .foregroundColor(.clear)
                                HStack{
                                    Text("Distance").font(.custom("ND Astroneer", size: 24)).foregroundColor(Color("ci"))
                                    Text("0 km").font(.custom("ND Astroneer", size: 24)).foregroundColor(Color("ci")).padding(.leading,50)
                                    
                                }
                               
                                
                            }
                                ZStack{
                                    RoundedRectangle(cornerRadius: 33) .strokeBorder(Color("ci") )
                                        .frame(width: 267, height: 66, alignment: .center)
                                        .foregroundColor(.clear)
                                    HStack{
                                        Text("Timer").font(.custom("ND Astroneer", size: 24)).foregroundColor(Color("ci"))
                                        Text("00:00:00").font(.custom("ND Astroneer", size: 24)).foregroundColor(Color("ci")).padding(.leading,40)
                                    }
                                   
                                    
                                }
                            }
                            
                        }
                        Button(action: {
                            Swift22 = 17
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

struct LegDetail_Previews: PreviewProvider {
    static var previews: some View {
        LegDetail( Swift22: .constant(1))
    }
}
