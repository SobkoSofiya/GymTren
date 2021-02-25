//
//  ellow.swift
//  GymTren
//
//  Created by Sofi on 25.02.2021.
//

import SwiftUI

struct ellow: View {
    @State var clr = 1
    @Binding var Swift22:Int
    @State var clr2 = 1
    var body: some View {
        ZStack{
            Color("for")
           
            VStack{
                Text("Step 4/5").font(.custom("ND Astroneer", size: 50)).foregroundColor(.white).offset(y: -100)
                Text("How often do you exercise?").font(.custom("ND Astroneer", size: 18)).foregroundColor(.white).offset(y: -50)
                Spacer()
                
            }.offset( y: 300)
            VStack{
                Button(action: {
                    clr = 2
                }, label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 39).strokeBorder(Color.black,lineWidth: 1 ).frame(width: 284, height: 77, alignment: .center).background(RoundedRectangle(cornerRadius: 39   ).foregroundColor(clr == 2 ?  Color("be") : .white))
                    VStack{
                        Text("Newbie").font(.custom("ND Astroneer", size: 24)).foregroundColor(Color("tt"))
                        Text("Just getting started").font(.custom("ND Astroneer", size: 18)).foregroundColor(Color("tt"))
                    }
                }
                })
                Button(action: {
                    clr = 4
                }, label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 39).strokeBorder(Color.black,lineWidth: 1 ).frame(width: 284, height: 77, alignment: .center).background(RoundedRectangle(cornerRadius: 39   ).foregroundColor(clr == 4 ?  Color("be") : .white))
                    VStack{
                        Text("Keep on").font(.custom("ND Astroneer", size: 24)).foregroundColor(Color("tt"))
                        Text("1-2 times a week").font(.custom("ND Astroneer", size: 18)).foregroundColor(Color("tt"))
                    }
                }
                })
                Button(action: {
                    clr = 3
                }, label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 39).strokeBorder(Color.black,lineWidth: 1 ).frame(width: 284, height: 77, alignment: .center).background(RoundedRectangle(cornerRadius: 39   ).foregroundColor(clr == 3 ?  Color("be") : .white))
                    VStack{
                        Text("Advanced").font(.custom("ND Astroneer", size: 24)).foregroundColor(Color("tt"))
                        Text("More than 3 times a week").font(.custom("ND Astroneer", size: 18)).foregroundColor(Color("tt"))
                    }
                }
                })
             
                Button(action: {
                    if clr != 1{
                    clr2 = 2
                        Swift22 = 5
                    }
                }, label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 39).strokeBorder(Color.black,lineWidth: 1 ).frame(width: 284, height: 77, alignment: .center).background(RoundedRectangle(cornerRadius: 39   ).foregroundColor(clr2 == 2 ?  Color("be") : .white))
                    VStack{
                        Text("Next").font(.custom("ND Astroneer", size: 24)).foregroundColor(Color("tt"))
                    
                    }
                }
                }).padding(.top,60)
            }.offset( y: 130)
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ellow_Previews: PreviewProvider {
    static var previews: some View {
        ellow(Swift22: .constant(4))
    }
}
