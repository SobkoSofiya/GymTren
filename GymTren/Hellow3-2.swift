//
//  Hellow3-2.swift
//  GymTren
//
//  Created by Sofi on 25.02.2021.
//

import SwiftUI

struct Hellow3_2: View {
    @State var clr = 1
    @Binding var Swift22:Int
    var body: some View {
        ZStack{
            Color("for")
            Image("wo").offset(x: 190, y: 160)
            VStack{
                Text("Step 3/5").font(.custom("ND Astroneer", size: 50)).foregroundColor(.white).offset(y: -100)
                Text("What do you want to work on?").font(.custom("ND Astroneer", size: 18)).foregroundColor(.white).offset(y: -50)
                Spacer()
            }.offset( y: 300)
            VStack(spacing:15){
                HStack(spacing:0){
                Button(action: {
                    Swift22 = 4
                    clr = 2
                }, label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 39).frame(width: 172, height: 46, alignment: .center).foregroundColor(clr == 2 ?  Color("be") : .white)
                    HStack{
                     
                        Text("Hands").font(.custom("ND Astroneer", size: 14)).foregroundColor(Color("tt"))
                    }
                }
                })
                    Rectangle()
                        .frame(width: 111, height: 1, alignment: .center).foregroundColor(.white)
                    Circle().strokeBorder(Color("tt"),lineWidth: 2 )
                        .frame(width: 15, height: 15, alignment: .center)
                        .background(Circle().foregroundColor(.white))
                    
                }
                HStack(spacing:0){
                Button(action: {
                    Swift22 = 4
                    clr = 3
                }, label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 39).frame(width: 172, height: 46, alignment: .center).foregroundColor(clr == 3 ?  Color("be") : .white)
                    HStack{
                     
                        Text("Spine").font(.custom("ND Astroneer", size: 14)).foregroundColor(Color("tt"))
                    }
                }
                })
                    Rectangle()
                        .frame(width: 111, height: 1, alignment: .center).foregroundColor(.white)
                    Circle().strokeBorder(Color("tt"),lineWidth: 2 )
                        .frame(width: 15, height: 15, alignment: .center)
                        .background(Circle().foregroundColor(.white))
                    
                }
                HStack(spacing:0){
                Button(action: {
                    Swift22 = 4
                    clr = 4
                }, label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 39).frame(width: 172, height: 46, alignment: .center).foregroundColor(clr == 4 ?  Color("be") : .white)
                    HStack{
                     
                        Text("Torso").font(.custom("ND Astroneer", size: 14)).foregroundColor(Color("tt"))
                    }
                }
                })
                    Rectangle()
                        .frame(width: 163, height: 1, alignment: .center).foregroundColor(.white)
                    Rectangle()
                        .frame(width: 1, height: 15, alignment: .center).foregroundColor(.white).offset(x: 0, y: -7)
                    
                    Circle().strokeBorder(Color("tt"),lineWidth: 2 )
                        .frame(width: 15, height: 15, alignment: .center)
                        .background(Circle().foregroundColor(.white)).offset(x:-8, y: -20)
                    
                }.offset(x:25)
                HStack(spacing:0){
                Button(action: {
                    Swift22 = 4
                    clr = 5
                }, label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 39).frame(width: 172, height: 46, alignment: .center).foregroundColor(clr == 5 ?  Color("be") : .white)
                    HStack{
                     
                        Text("Legs").font(.custom("ND Astroneer", size: 14)).foregroundColor(Color("tt"))
                    }
                }
                })
                    Rectangle()
                        .frame(width: 110, height: 1, alignment: .center).foregroundColor(.white)
                    Circle().strokeBorder(Color("tt"),lineWidth: 2 )
                        .frame(width: 15, height: 15, alignment: .center)
                        .background(Circle().foregroundColor(.white))
                    
                }.offset(x: -3)
            
            }.offset( y: 110)
        }.edgesIgnoringSafeArea(.all)
    }
}

struct Hellow3_2_Previews: PreviewProvider {
    static var previews: some View {
        Hellow3_2( Swift22: .constant(7))
    }
}
