//
//  Reports.swift
//  GymTren
//
//  Created by Sofi on 26.02.2021.
//

import SwiftUI

struct Reports: View {
//    @State var c = UserDefaults.standard.integer(forKey: "ContRun")
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
                    ZStack{
                    Text("Reports").font(.custom("ND Astroneer", size: 24)).foregroundColor(.white)
                       
                    }
                    
                HStack(spacing:110){
                    VStack{
                        Text("\(all)").foregroundColor(.white )
                        Text("Scores").foregroundColor(.white)
                    }
                    VStack{
                        Text("0").foregroundColor(.white )
                        Text("Kcal").foregroundColor(.white)
                    }
                    VStack{
                        Text("0").foregroundColor(.white )
                        Text("Minutes").foregroundColor(.white)
                    }
                }.font(.custom("ND Astroneer", size: 18))
                }.offset( y: -5)
                ZStack{
                    Color.white
                    VStack{
//                        SwiftUIGIFPlayerView(gifName: "run").frame(width: 330, height: 166, alignment: .center).padding(.top,80)
                        HStack{
                          
                            ZStack{
                                Rectangle()
                                    .strokeBorder(Color("ci"),lineWidth: 1 )
                                    .frame(width: UIScreen.main.bounds.width, height: 149, alignment: .center)
                                VStack{
                                HStack{
                                    Spacer()
                                    Text("Calendar").font(.custom("ND Astroneer", size: 18)).foregroundColor(Color("ci")).offset(x: -5, y: -25)
                                }
                                    HStack{
                                        VStack(spacing:5){
                                            Text("Sa").font(.custom("ND Astroneer", size: 18)).foregroundColor(Color("ci"))
                                            ZStack{
                                                Circle().strokeBorder(Color("ci") )
                                                    .frame(width: 37, height: 37, alignment: .center)
                                                    .foregroundColor(.clear)
                                                Text("12").font(.custom("ND Astroneer", size: 18)).foregroundColor(Color("ci"))
                                            }
                                        }
                                        VStack(spacing:5){
                                            Text("Su").font(.custom("ND Astroneer", size: 18)).foregroundColor(Color("ci"))
                                            ZStack{
                                                Circle().strokeBorder(Color("ci") )
                                                    .frame(width: 37, height: 37, alignment: .center)
                                                    .foregroundColor(.clear)
                                                Text("13").font(.custom("ND Astroneer", size: 18)).foregroundColor(Color("ci"))
                                            }
                                        }
                                        VStack(spacing:5){
                                            Text("Mo").font(.custom("ND Astroneer", size: 18)).foregroundColor(Color("ci"))
                                            ZStack{
                                                Circle().strokeBorder(Color("ci") )
                                                    .frame(width: 37, height: 37, alignment: .center)
                                                    .foregroundColor(.clear)
                                                Text("14").font(.custom("ND Astroneer", size: 18)).foregroundColor(Color("ci"))
                                            }
                                        }
                                        VStack(spacing:5){
                                            Text("Tu").font(.custom("ND Astroneer", size: 18)).foregroundColor(Color("ci"))
                                            ZStack{
                                                Circle().strokeBorder(Color("ci") )
                                                    .frame(width: 37, height: 37, alignment: .center)
                                                    .foregroundColor(.clear)
                                                Text("15").font(.custom("ND Astroneer", size: 18)).foregroundColor(Color("ci"))
                                            }
                                        }
                                        VStack(spacing:5){
                                            Text("We").font(.custom("ND Astroneer", size: 18)).foregroundColor(Color("ci"))
                                            ZStack{
                                                Circle().strokeBorder(Color("ci") )
                                                    .frame(width: 37, height: 37, alignment: .center)
                                                    .foregroundColor(.clear)
                                                Text("16").font(.custom("ND Astroneer", size: 18)).foregroundColor(Color("ci"))
                                            }
                                        }
                                        VStack(spacing:5){
                                            Text("Th").font(.custom("ND Astroneer", size: 18)).foregroundColor(Color("ci"))
                                            ZStack{
                                                Circle().strokeBorder(Color("ci") )
                                                    .frame(width: 37, height: 37, alignment: .center)
                                                    .foregroundColor(.clear)
                                                Text("17").font(.custom("ND Astroneer", size: 18)).foregroundColor(Color("ci"))
                                            }
                                        }
                                        VStack(spacing:5){
                                            Text("Fr").font(.custom("ND Astroneer", size: 18)).foregroundColor(Color("ci"))
                                            ZStack{
                                                Circle().strokeBorder(Color("ci") )
                                                    .frame(width: 37, height: 37, alignment: .center)
                                                    .foregroundColor(.clear)
                                                Text("18").font(.custom("ND Astroneer", size: 18)).foregroundColor(Color("ci"))
                                            }
                                        }
                                        
                                    }
                                }
                            }
                          
                          
                            
                        }
                        ScrollView{
                        ZStack{
                        HStack{
                            VStack(spacing:16){
                                Text("80").font(.custom("ND Astroneer", size: 6)).foregroundColor(Color("bu"))
                                Text("70").font(.custom("ND Astroneer", size: 6)).foregroundColor(Color("bu"))
                                Text("60").font(.custom("ND Astroneer", size: 6)).foregroundColor(Color("bu"))
                                Text("50").font(.custom("ND Astroneer", size: 6)).foregroundColor(Color("bu"))
                                Text("40").font(.custom("ND Astroneer", size: 6)).foregroundColor(Color("bu"))
                                Text("30").font(.custom("ND Astroneer", size: 6)).foregroundColor(Color("bu"))
                                Text("20").font(.custom("ND Astroneer", size: 6)).foregroundColor(Color("bu"))
                                Text("10").font(.custom("ND Astroneer", size: 6)).foregroundColor(Color("bu"))
                                Text("0").font(.custom("ND Astroneer", size: 6)).foregroundColor(Color("bu"))
                            }.offset( y: -10)
                            HStack( alignment:.bottom, spacing:10){
                                VStack{
                                    Rectangle()
                                        .frame(width: 24, height: 192, alignment: .center)
                                        .foregroundColor(Color("bu"))
                                    Text("12").font(.custom("ND Astroneer", size: 10)).foregroundColor(Color("bu"))
                                }
                                VStack{
                                    Rectangle()
                                        .frame(width: 24, height: 140, alignment: .center)
                                        .foregroundColor(Color("bu"))
                                    Text("13").font(.custom("ND Astroneer", size: 10)).foregroundColor(Color("bu"))
                                }.offset(x: 15)
                                VStack{
                                    Rectangle()
                                        .frame(width: 24, height: 128, alignment: .center)
                                        .foregroundColor(Color("bu"))
                                    Text("14").font(.custom("ND Astroneer", size: 10)).foregroundColor(Color("bu"))
                                }.offset(x: 30)
                                VStack{
                                    Rectangle()
                                        .frame(width: 24, height: 138, alignment: .center)
                                        .foregroundColor(Color("bu"))
                                    Text("15").font(.custom("ND Astroneer", size: 10)).foregroundColor(Color("bu"))
                                }.offset(x: 45)
                                VStack{
                                    Rectangle()
                                        .frame(width: 24, height: 105, alignment: .center)
                                        .foregroundColor(Color("bu"))
                                    Text("16").font(.custom("ND Astroneer", size: 10)).foregroundColor(Color("bu"))
                                }.offset(x: 60)
                                VStack{
                                    Rectangle()
                                        .frame(width: 24, height: 126, alignment: .center)
                                        .foregroundColor(Color("bu"))
                                    Text("17").font(.custom("ND Astroneer", size: 10)).foregroundColor(Color("bu"))
                                }.offset(x: 75)
                                VStack{
                                    Rectangle()
                                        .frame(width: 24, height: 110, alignment: .center)
                                        .foregroundColor(Color("bu"))
                                    Text("18").font(.custom("ND Astroneer", size: 10)).foregroundColor(Color("bu"))
                                }.offset(x: 90,y: 13)
                            }
                        }.offset(x: -50, y: 15)
                            HStack{
                                Spacer()
                                Text("Training").font(.custom("ND Astroneer", size: 18)).foregroundColor(Color("ci")).offset(x: -5, y: -25)
                            }.offset(x: -30 , y: -50)
                        }.padding(.vertical)
                            
                            ZStack{
                            HStack{
                                VStack(spacing:16){
                                    Text("80").font(.custom("ND Astroneer", size: 6)).foregroundColor(Color("bu"))
                                    Text("70").font(.custom("ND Astroneer", size: 6)).foregroundColor(Color("bu"))
                                    Text("60").font(.custom("ND Astroneer", size: 6)).foregroundColor(Color("bu"))
                                    Text("50").font(.custom("ND Astroneer", size: 6)).foregroundColor(Color("bu"))
                                    Text("40").font(.custom("ND Astroneer", size: 6)).foregroundColor(Color("bu"))
                                    Text("30").font(.custom("ND Astroneer", size: 6)).foregroundColor(Color("bu"))
                                    Text("20").font(.custom("ND Astroneer", size: 6)).foregroundColor(Color("bu"))
                                    Text("10").font(.custom("ND Astroneer", size: 6)).foregroundColor(Color("bu"))
                                    Text("0").font(.custom("ND Astroneer", size: 6)).foregroundColor(Color("bu"))
                                }.offset( y: -10)
                                HStack( alignment:.bottom, spacing:10){
                                    VStack{
                                        Rectangle()
                                            .frame(width: 24, height: 41, alignment: .center)
                                            .foregroundColor(Color("bu"))
                                        Text("12").font(.custom("ND Astroneer", size: 10)).foregroundColor(Color("bu"))
                                    }
                                    VStack{
                                        Rectangle()
                                            .frame(width: 24, height: 80, alignment: .center)
                                            .foregroundColor(Color("bu"))
                                        Text("13").font(.custom("ND Astroneer", size: 10)).foregroundColor(Color("bu"))
                                    }.offset(x: 15)
                                    VStack{
                                        Rectangle()
                                            .frame(width: 24, height: 197, alignment: .center)
                                            .foregroundColor(Color("bu"))
                                        Text("14").font(.custom("ND Astroneer", size: 10)).foregroundColor(Color("bu"))
                                    }.offset(x: 30)
                                    VStack{
                                        Rectangle()
                                            .frame(width: 24, height: 138, alignment: .center)
                                            .foregroundColor(Color("bu"))
                                        Text("15").font(.custom("ND Astroneer", size: 10)).foregroundColor(Color("bu"))
                                    }.offset(x: 45)
                                    VStack{
                                        Rectangle()
                                            .frame(width: 24, height: 105, alignment: .center)
                                            .foregroundColor(Color("bu"))
                                        Text("16").font(.custom("ND Astroneer", size: 10)).foregroundColor(Color("bu"))
                                    }.offset(x: 60)
                                    VStack{
                                        Rectangle()
                                            .frame(width: 24, height: 126, alignment: .center)
                                            .foregroundColor(Color("bu"))
                                        Text("17").font(.custom("ND Astroneer", size: 10)).foregroundColor(Color("bu"))
                                    }.offset(x: 75)
                                    VStack{
                                        Rectangle()
                                            .frame(width: 24, height: 110, alignment: .center)
                                            .foregroundColor(Color("bu"))
                                        Text("18").font(.custom("ND Astroneer", size: 10)).foregroundColor(Color("bu"))
                                    }.offset(x: 90,y: 13)
                                }
                            }.offset(x: -50, y: 15)
                                HStack{
                                    Spacer()
                                    Text("Minutes").font(.custom("ND Astroneer", size: 18)).foregroundColor(Color("ci")).offset(x: -5, y: -25)
                                }.offset(x: -30 , y: -50)
                            }.padding(.vertical)
                            ZStack{
                            HStack{
                                VStack(spacing:16){
                                    Text("80").font(.custom("ND Astroneer", size: 6)).foregroundColor(Color("bu"))
                                    Text("70").font(.custom("ND Astroneer", size: 6)).foregroundColor(Color("bu"))
                                    Text("60").font(.custom("ND Astroneer", size: 6)).foregroundColor(Color("bu"))
                                    Text("50").font(.custom("ND Astroneer", size: 6)).foregroundColor(Color("bu"))
                                    Text("40").font(.custom("ND Astroneer", size: 6)).foregroundColor(Color("bu"))
                                    Text("30").font(.custom("ND Astroneer", size: 6)).foregroundColor(Color("bu"))
                                    Text("20").font(.custom("ND Astroneer", size: 6)).foregroundColor(Color("bu"))
                                    Text("10").font(.custom("ND Astroneer", size: 6)).foregroundColor(Color("bu"))
                                    Text("0").font(.custom("ND Astroneer", size: 6)).foregroundColor(Color("bu"))
                                }.offset( y: -10)
                                HStack( alignment:.bottom, spacing:10){
                                    VStack{
                                        Rectangle()
                                            .frame(width: 24, height: 192, alignment: .center)
                                            .foregroundColor(Color("bu"))
                                        Text("12").font(.custom("ND Astroneer", size: 10)).foregroundColor(Color("bu"))
                                    }
                                    VStack{
                                        Rectangle()
                                            .frame(width: 24, height: 140, alignment: .center)
                                            .foregroundColor(Color("bu"))
                                        Text("13").font(.custom("ND Astroneer", size: 10)).foregroundColor(Color("bu"))
                                    }.offset(x: 15)
                                    VStack{
                                        Rectangle()
                                            .frame(width: 24, height: 128, alignment: .center)
                                            .foregroundColor(Color("bu"))
                                        Text("14").font(.custom("ND Astroneer", size: 10)).foregroundColor(Color("bu"))
                                    }.offset(x: 30)
                                    VStack{
                                        Rectangle()
                                            .frame(width: 24, height: 138, alignment: .center)
                                            .foregroundColor(Color("bu"))
                                        Text("15").font(.custom("ND Astroneer", size: 10)).foregroundColor(Color("bu"))
                                    }.offset(x: 45)
                                    VStack{
                                        Rectangle()
                                            .frame(width: 24, height: 105, alignment: .center)
                                            .foregroundColor(Color("bu"))
                                        Text("16").font(.custom("ND Astroneer", size: 10)).foregroundColor(Color("bu"))
                                    }.offset(x: 60)
                                    VStack{
                                        Rectangle()
                                            .frame(width: 24, height: 126, alignment: .center)
                                            .foregroundColor(Color("bu"))
                                        Text("17").font(.custom("ND Astroneer", size: 10)).foregroundColor(Color("bu"))
                                    }.offset(x: 75)
                                    VStack{
                                        Rectangle()
                                            .frame(width: 24, height: 110, alignment: .center)
                                            .foregroundColor(Color("bu"))
                                        Text("18").font(.custom("ND Astroneer", size: 10)).foregroundColor(Color("bu"))
                                    }.offset(x: 90,y: 13)
                                }
                            }.offset(x: -50, y: 15)
                                HStack{
                                    Spacer()
                                    Text("Kcal").font(.custom("ND Astroneer", size: 18)).foregroundColor(Color("ci")).offset(x: -5, y: -25)
                                }.offset(x: -30 , y: -50)
                            }.padding(.vertical)
                            
                            
                        }
                        Spacer()
                    }
                }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height-100, alignment: .center)
               Spacer()
            }.offset( y: 45)
        }.edgesIgnoringSafeArea(.all)
    }
}

struct Reports_Previews: PreviewProvider {
    static var previews: some View {
        Reports( Swift22: .constant(1))
    }
}
