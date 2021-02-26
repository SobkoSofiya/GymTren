//
//  Main.swift
//  Sobo WatchKit Extension
//
//  Created by Sofi on 26.02.2021.
//

import SwiftUI

struct Main: View {
    @Binding var Swift22:Int
    @State var n = UserDefaults.standard.string(forKey: "na")
    @State var dr = UserDefaults.standard.integer(forKey: "dr")
    @ObservedObject var model = ViewModel()
    var body: some View {
        ScrollView{
        ZStack{
            Color("be")
            VStack{
                HStack{
                    Spacer()
                    Button(action: {
                        model.SignOut(nam: n!)
                        Swift22 = 1
                    }, label: {
                        Text("Sign Out").font(.custom("ND Astroneer", size: 18)).foregroundColor(Color("te")).padding(5)
                    }).buttonStyle(PlainButtonStyle())
                
                }
                HStack{
                    Text("\(dr) from 24 10 ml").font(.custom("ND Astroneer", size: 15)).foregroundColor(Color("te")).padding(.horizontal)
                    Spacer()
                }
                HStack{
                    Text("\(Int( 0.04149*Double(dr)))%").font(.custom("ND Astroneer", size: 40)).foregroundColor(Color("te")).padding()
                    Spacer()
                }
                HStack{
                    Text("Add drink").font(.custom("ND Astroneer", size: 12)).foregroundColor(Color("te")).padding(.horizontal)
                    Spacer()
                }
                Button(action: {
                    Swift22 = 3
                }, label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10).strokeBorder(Color("te") )
                            .frame(width: 160, height: 30, alignment: .center)
                            .foregroundColor(.clear)
                            .background(RoundedRectangle(cornerRadius: 10).foregroundColor(.white))
                        HStack{
                            Text("Water").font(.custom("ND Astroneer", size: 16)).foregroundColor(Color("te")).offset(x: -40)
                            
                        }  .frame(width: 160, height: 30, alignment: .center)
                        
                    }
                }).buttonStyle(PlainButtonStyle())
                Button(action: {
                    Swift22 = 3
                }, label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10).strokeBorder(Color("te") )
                            .frame(width: 160, height: 30, alignment: .center)
                            .foregroundColor(.clear)
                            .background(RoundedRectangle(cornerRadius: 10).foregroundColor(.white))
                        HStack{
                            Text("Juice").font(.custom("ND Astroneer", size: 16)).foregroundColor(Color("te")).offset(x: -40)
                            
                        }  .frame(width: 160, height: 30, alignment: .center)
                        
                    }
                }).buttonStyle(PlainButtonStyle())
                
            }
            Spacer()
        }.edgesIgnoringSafeArea(.all)
        }
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main(Swift22: .constant(1))
    }
}
