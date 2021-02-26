//
//  Hellow2.swift
//  GymTren
//
//  Created by Sofi on 25.02.2021.
//

import SwiftUI

struct Hellow2: View {
    @Binding var Swift22:Int
    @State var clr = 1
    @State var clr2 = 1
    var body: some View {
        ZStack{
            Color("for")
            VStack{
                Text("Step 2/5").font(.custom("ND Astroneer", size: 50)).foregroundColor(.white).offset(y: -100)
                Text("What is your gender?").font(.custom("ND Astroneer", size: 18)).foregroundColor(.white).offset(y: -50)
                Spacer()
            }.offset( y: 300)
            VStack{
                HStack(spacing:100){
                    Button(action: {
                       
                        clr = 2
                    }, label: {
                        VStack(spacing:20){
                            ZStack{
                               
                                Circle().strokeBorder(Color.black,lineWidth: 1 )
                                    .frame(width: 92, height: 92, alignment: .center)
                                    .background(Circle().foregroundColor(clr == 2 ? Color("be") : .white))
                                Image("wom")

                            }
                            Text("Female").font(.custom("ND Astroneer", size: 24)).foregroundColor(.white)
                        }
                    })
                    Button(action: {
                        clr = 3
                    }, label: {
                        VStack(spacing:20){
                            ZStack{
                               
                                Circle().strokeBorder(Color.black,lineWidth: 1 )
                                    .frame(width: 92, height: 92, alignment: .center)
                                    .background(Circle().foregroundColor(clr == 3 ? Color("be") : .white))
                                Image("men")

                            }
                            Text("Male").font(.custom("ND Astroneer", size: 24)).foregroundColor(.white)
                        }
                    })
                  
                }
                Button(action: {
                    if clr != 1{
                    clr2 = 4
                    if clr == 3 {
                        Swift22 = 3
                    } else if clr == 2{
                        Swift22 = 7
                    }
                    }
                   
                }, label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 39).strokeBorder(Color.black,lineWidth: 1 ).frame(width: 284, height: 77, alignment: .center).background(RoundedRectangle(cornerRadius: 39   ).foregroundColor(clr == 4 ?  Color("be") : .white))
                    HStack{
                       
                        Text("Next").font(.custom("ND Astroneer", size: 24)).foregroundColor(Color("tt"))
                    }
                }
                }).padding(.top,120)
            }.offset( y: 120)
        }.edgesIgnoringSafeArea(.all)
    }
}

struct Hellow2_Previews: PreviewProvider {
    static var previews: some View {
        Hellow2(Swift22: .constant(2))
    }
}
