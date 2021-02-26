//
//  We.swift
//  GymTren
//
//  Created by Sofi on 26.02.2021.
//

import Foundation
import SwiftUI
import WebKit
struct WebView:View {
    @Binding var show:Bool
    
    var body: some View{
        ZStack{
            Color.white
            VStack{
                Button(action: {
                    show.toggle()
                }, label: {
                    Text("Back").font(.custom("ND Astroneer", size: 50)).foregroundColor(Color("tt"))
                })
                Web(url: "http://dailyworkoutapps.com/privacy-policy.html")
            }.offset( y: 120)
        }.edgesIgnoringSafeArea(.all)
    }
}



struct Web:UIViewRepresentable {
    let url:String
    func makeUIView(context: Context) -> WKWebView {
        guard let url = URL(string: self.url) else {
            return WKWebView()
        }
        let controller = WKWebView()
        let req = URLRequest(url: url)
        controller.load(req)
        return controller
    }
    func updateUIView(_ uiView: Web.UIViewType, context: UIViewRepresentableContext<Web>) {
        
    }

}
