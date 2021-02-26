//
//  Profile.swift
//  GymTren
//
//  Created by Sofi on 25.02.2021.
//

import SwiftUI
import WebKit
struct Profile: View {
    @State var wi = UserDefaults.standard.string(forKey: "W")
    @State var hi = UserDefaults.standard.string(forKey: "H")
    @State var na = UserDefaults.standard.string(forKey: "na")
    @State var no = UserDefaults.standard.bool(forKey: "No")
    @State var flag = false
    @State var show = false
    @Binding var Swift22:Int
    @ObservedObject var model = ViewModel()
    @State var hig = ""
    @State var wig = ""
//    @State var na = UserDefaults.standard.string(forKey: "na")
    let struc = [
        "Training rest", "Notifications", "Biometric", "Start dialog", "Privacy policy"
    ]
    @State var tofen = UserDefaults.standard.string(forKey: "Tofen")
    var body: some View {
        
        ZStack{
            Rectangle()
                .foregroundColor(.clear)
                .background(LinearGradient(gradient: Gradient(colors: [Color("le"), Color("tr")]), startPoint: .leading, endPoint: .trailing))
            VStack{
                HStack( alignment:.bottom ,spacing:110){
                    VStack{
                        Text("\(wi!)").font(.custom("ND Astroneer", size: 14)).foregroundColor(.white)
                        Text("Weight").font(.custom("ND Astroneer", size: 14)).foregroundColor(.white)
                    }
                    VStack{
                        Text("\(na!)").font(.custom("ND Astroneer", size: 24)).foregroundColor(.white)
                        Text("Male").font(.custom("ND Astroneer", size: 16)).foregroundColor(.white)
                    }
                    VStack{
                        Text("\(hi!)").font(.custom("ND Astroneer", size: 14)).foregroundColor(.white)
                        Text("Height").font(.custom("ND Astroneer", size: 14)).foregroundColor(.white)
                    }
                }.offset( y: 0)
                ScrollView{
//                    Color.white
                    ZStack(alignment:.top){
                    Color.white
                        VStack{
                    
                    ForEach(struc, id:\.self){ i in
                        VStack(spacing:0){
                            Button(action: {
                                if i == "Privacy policy"{
                                    show.toggle()
                                } else if i == "Biometric"{
                                    alertCust()
                                } else if i == "Start dialog"{
                                    UserDefaults.standard.set(false, forKey: "l")
                                    model.SignOut(nam: na!)
                                    Swift22 = 5
                                    
                                }
                            }, label: {
                                HStack{
                                    Text(i).font(.custom("ND Astroneer", size: 17)).foregroundColor(Color("tt")).padding(.horizontal,20).padding(.vertical,10)
                                    Spacer()
                                    if i == "Training rest"{
                                    Text("30 sec").font(.custom("ND Astroneer", size: 17)).foregroundColor(Color("tt")).padding(.horizontal)
                                    } else if i == "Notifications"{
                                        Toggle(isOn:$flag ){
                                            
                                        }.toggleStyle(Tog()).padding(.horizontal).onChange(of: flag, perform: { value in
                                            Toggl()
                                            UserDefaults.standard.set(flag, forKey: "No")
                                        })
                                    }
                                }
                            })
                       
                            Divider().frame(width: UIScreen.main.bounds.width, height: 1, alignment: .center).padding(.leading,20)
                           
                        }
                    }
                            Group{
                            Button(action: {
            //                    model.SignOut(nam: na)
                                model.SignOut(nam: na!)
                                Swift22 = 1
                            }, label: {
                                ZStack{
                                
                                RoundedRectangle(cornerRadius: 25.0).strokeBorder(Color("tt"), lineWidth: 1).frame(width: 312, height: 50, alignment: .center).foregroundColor(.clear)
                                    Text("Sign Out").font(.custom("ND Astroneer", size: 24)).foregroundColor(Color("tt"))
                                }
                            }).offset( y:60)
                            VStack{
                                            Text("Design by Sergey Klimovich").font(.custom("ND Astroneer", size: 17)).foregroundColor(Color("tt"))
                                                Text("Develop by Name Competitor").font(.custom("ND Astroneer", size: 17)).foregroundColor(Color("tt"))
                            }.offset( y: 210)
                            }.offset( y: 110)
                        }
                    }.frame(width: UIScreen.main.bounds.width, height: 820, alignment: .center).padding()
                }.frame(width: UIScreen.main.bounds.width, height: 820, alignment: .center).padding().offset( y: -30)
              
              
//                Button(action: {
//                    model.SignOut(nam: na)
//                }, label: {
//                    ZStack{
//
//                    }
//                })
//
                Spacer()
                
            }.offset( y: 100)
            if show{
                WebView(show: $show)
            }
            
        }.edgesIgnoringSafeArea(.all).onAppear(perform: {
            model.Get()
        }).onAppear(perform: {
            flag = no
        })
    }
    func alertCust()  {
        let alert = UIAlertController(title: "Biometric", message: "Please, Input Your Biometric Data", preferredStyle: .alert)
        alert.addTextField { (pass) in
            pass.placeholder = "Weight"
            pass.isSecureTextEntry = false
        }
        alert.addTextField { (pass1) in
            pass1.placeholder = "Height"
            pass1.isSecureTextEntry = false
        }
        let login = UIAlertAction(title: "Ok", style: .default) { (_) in
            wig = alert.textFields![0].text!
            hig = alert.textFields![1].text!
            model.Get()
            model.Change(token: tofen!, wh: wig, hi: hig)
            DispatchQueue.main.asyncAfter(deadline: .now()+2) {
                UserDefaults.standard.set(wig, forKey: "W")
                UserDefaults.standard.set(hig, forKey: "H")
                model.Change(token: tofen!, wh: wig, hi: hig)
                model.Get()
              wi = UserDefaults.standard.string(forKey: "W")
                hi = UserDefaults.standard.string(forKey: "H")
            }
            
        }
        let cancel = UIAlertAction(title: "Cancel", style: .default) { (_) in
            
        }
        alert.addAction(cancel)
        alert.addAction(login)
        
        UIApplication.shared.windows.first?.rootViewController?.present(alert, animated: true, completion: {
            
            
        })
    }
    func Toggl()  {
        if flag {
            senf()
        } else{
            sent()
        }
    }
    func senf()  {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert,.badge,.sound]) { (_, _) in
            
        }
        let content = UNMutableNotificationContent()
        content.title = "Вниманеие!"
        content.body = "Время заниматься!"
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 300, repeats: true)
        
        let req = UNNotificationRequest(identifier: "req", content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(req, withCompletionHandler: nil)
    }
    func sent()  {
        UNUserNotificationCenter.current().removePendingNotificationRequests(withIdentifiers: ["req"])
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile( Swift22: .constant(1))
    }
}



struct Tog:ToggleStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        HStack{
            configuration.label
            ZStack(alignment:configuration.isOn ? .trailing : .leading){
                RoundedRectangle(cornerRadius: 25.0).frame(width: 34, height: 15, alignment: .center).foregroundColor(configuration.isOn ? Color("ci") : .red ).opacity(0.3)
                Circle().frame(width: 20, height: 20, alignment: .center)
                    .foregroundColor(Color("tt")).onTapGesture(perform: {
                        withAnimation{
                            configuration.$isOn.wrappedValue.toggle()
                        }
                    })
                    
            }
        }
    }
}



