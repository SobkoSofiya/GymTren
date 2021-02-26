//
//  Lesson.swift
//  GymTren
//
//  Created by Sofi on 25.02.2021.
//

import SwiftUI
import YouTubePlayer




struct Lesson: View {
    @ObservedObject var model = ViewModel()
    @State var item = 0
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.clear)
                .background(LinearGradient(gradient: Gradient(colors: [Color("le"), Color("tr")]), startPoint: .leading, endPoint: .trailing))
            VStack(spacing:0){
                Text("Lessons").font(.custom("ND Astroneer", size: 24)).foregroundColor(.white).padding(.bottom)
                HStack(spacing:0){
                    Button(action: {
                        item = 0
                    }, label: {
                        ZStack{
                            Rectangle().strokeBorder(Color("tt"), lineWidth: 1)
                                .foregroundColor(.clear)
                                .background(item == 0 ? Color("ff") : .white)
                                .frame(width: 110, height: 36, alignment: .center)
                            Text("Hands").font(.custom("ND Astroneer", size: 18)).foregroundColor(item == 0 ? .white : Color("tt") )
                        }
                    })
                    Button(action: {
                        item = 1
                    }, label: {
                        ZStack{
                            Rectangle().strokeBorder(Color("tt"), lineWidth: 1)
                                .foregroundColor(.clear)
                                .background(item == 1 ? Color("ff") : .white)
                                .frame(width: 110, height: 36, alignment: .center)
                            Text("Spine").font(.custom("ND Astroneer", size: 18)).foregroundColor(item == 1 ? .white : Color("tt") )
                        }
                    })
                   
                  
                    Button(action: {
                        item = 2
                    }, label: {
                        ZStack{
                            Rectangle().strokeBorder(Color("tt"), lineWidth: 1)
                                .foregroundColor(.clear)
                                .background(item == 2 ? Color("ff") : .white)
                                .frame(width: 110, height: 36, alignment: .center)
                            Text("Torso").font(.custom("ND Astroneer", size: 18)).foregroundColor(item == 2 ? .white : Color("tt") )
                        }
                    })
                  
                    Button(action: {
                        item = 3
                    }, label: {
                        ZStack{
                            Rectangle().strokeBorder(Color("tt"), lineWidth: 1)
                                .foregroundColor(.clear)
                                .background(item == 3 ? Color("ff") : .white)
                                .frame(width: 110, height: 36, alignment: .center)
                            Text("Legs").font(.custom("ND Astroneer", size: 18)).foregroundColor(item == 3 ? .white : Color("tt") )
                        }
                    })
                  
                }
                ZStack{
                    Color.white
                TabView(selection:$item){
                   
                    
                    Hand(model: $model.modelGet).tag(0)
                    Spine(model: $model.modelGet).tag(1)
                    Torso(model: $model.modelGet).tag(2)
                    Legs(model: $model.modelGet).tag(3)
                    
                }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                }
                Spacer()
            }.offset( y: 50)
            
            
        }.edgesIgnoringSafeArea(.all).onAppear(perform: {
            model.AddVideo()
            print(model.modelGet)
        })
    }
}

struct Lesson_Previews: PreviewProvider {
    static var previews: some View {
        Lesson()
    }
}


struct Hand:View {
  
    @Binding var model: [ModelYou]
    var body: some View{
        ScrollView{
            ForEach(model, id:\.self) { i in
                VStack(spacing:297){
                    if i.category == "hands"{
                        VideoYou(urlString: i.url).frame(width: UIScreen.main.bounds.width-30, height: 300, alignment: .center)
                    }
                }
            }
        }
    }
}
struct Spine:View {
    @Binding var model: [ModelYou]
    var body: some View{
        ScrollView{
            ForEach(model, id:\.self) { i in
                VStack{
                    if i.category == "spine"{
                        VideoYou(urlString: i.url).frame(width: UIScreen.main.bounds.width-30, height: 300, alignment: .center)
                    }
                }
            }
        }
    }
}
struct Torso:View {
    @Binding var model: [ModelYou]
    var body: some View{
        ScrollView{
            ForEach(model, id:\.self) { i in
                VStack{
                    if i.category == "torso"{
                        VideoYou(urlString: i.url).frame(width: UIScreen.main.bounds.width-30, height: 300, alignment: .center)
                    }
                }
            }
        }
    }
}
struct Legs:View {
    @Binding var model: [ModelYou]
    var body: some View{
        ScrollView{
            ForEach(model, id:\.self) { i in
                VStack{
                    if i.category == "legs"{
                        VideoYou(urlString: i.url).frame(width: UIScreen.main.bounds.width-30, height: 300, alignment: .center)
                    }
                }
            }
        }
    }
}


struct VideoYou:UIViewControllerRepresentable {
    @State var urlString:String
    func makeUIViewController(context: UIViewControllerRepresentableContext<VideoYou>) ->  UIViewController {
        let controller = UIViewController()
        let url = URL(string: urlString)
        let Video1 = YouTubePlayerView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width-30, height: 300))
        Video1.loadVideoURL(url!)
        controller.view.addSubview(Video1)
        return controller
    }
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<VideoYou>) {
        
    }
}
