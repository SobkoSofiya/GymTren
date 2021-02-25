//
//  Hellow.swift
//  GymTren
//
//  Created by Sofi on 25.02.2021.
//

import SwiftUI

struct Hellow: View {
    @Binding var Swift22:Int
    @State var clr = 1
    var body: some View {
        ZStack{
            Color("for")
            VStack{
                Text("Step 1/5").font(.custom("ND Astroneer", size: 50)).foregroundColor(.white).offset(y: -100)
                Text("What is your purpose?").font(.custom("ND Astroneer", size: 18)).foregroundColor(.white).offset(y: -50)
                Spacer()
            }.offset( y: 280)
                VStack(spacing:25){
                Button(action: {
                    Swift22 = 2
                    clr = 2
                }, label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 39).strokeBorder(Color.black,lineWidth: 1 ).frame(width: 284, height: 77, alignment: .center).background(RoundedRectangle(cornerRadius: 39   ).foregroundColor(clr == 2 ?  Color("be") : .white))
                    HStack{
                        Image("im1")
                        Text("Weight loss").font(.custom("ND Astroneer", size: 24)).foregroundColor(Color("tt"))
                    }
                }
                })
                Button(action: {
                    clr = 3
                    Swift22 = 2
                }, label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 39).strokeBorder(Color.black,lineWidth: 1 ).frame(width: 284, height: 77, alignment: .center).background(RoundedRectangle(cornerRadius: 39   ).foregroundColor(clr == 3 ?  Color("be") : .white))
                    HStack{
                        Image("im2")
                        Text("Keeping fit").font(.custom("ND Astroneer", size: 24)).foregroundColor(Color("tt"))
                    }
                }
                })
                Button(action: {
                    clr = 4
                    Swift22 = 2
                }, label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 39).strokeBorder(Color.black,lineWidth: 1 ).frame(width: 284, height: 77, alignment: .center).background(RoundedRectangle(cornerRadius: 39   ).foregroundColor(clr == 4 ?  Color("be") : .white))
                    HStack{
                        Image("im3")
                        Text("Build muscle").font(.custom("ND Astroneer", size: 24)).foregroundColor(Color("tt"))
                    }
                }
                })
                   
                }.offset( y: 60)
            
        }.edgesIgnoringSafeArea(.all)
    }
}

struct Hellow_Previews: PreviewProvider {
    static var previews: some View {
        Hellow(Swift22: .constant(1))
    }
}
