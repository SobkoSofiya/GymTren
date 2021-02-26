//
//  ViewModel.swift
//  GymTren
//
//  Created by Sofi on 25.02.2021.
//

import Foundation
import SwiftUI
import Alamofire
import SwiftyJSON



class ViewModel: ObservableObject {
    @Published var perehod = 1
    @Published var model:[Model] = []
    @Published var modelGet:[ModelYou] = []
    @Published var ModelGetProfile:[GetProfile] = []
    @Published var ModelGProfile:[GProfile] = []
    @Published var tofen = UserDefaults.standard.string(forKey: "Tofen")
    
    func SignUp(pass:String, nam:String, wh:String, hg:String, ema:String)  {
        let w = UserDefaults.standard.string(forKey: "W")
        let h = UserDefaults.standard.string(forKey: "H")
       
         let url = "http://gym.areas.su/signup?username=\(nam)&email=@q1&password=\(pass)&weight=\(w!)&height=\(h!)"
        AF.request(url, method: .post).validate().responseJSON {[self] response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                model.append(Model(nam: nam, pass: pass, wh: w!, hg: h!, ema: ema))
                print("JSON: \(json)")
            case .failure(let error):
                print(error)
            }
        }
    }
    func SignIn(pass:String, nam:String)  {
    
       
         let url = "http://gym.areas.su//signin?username=\(nam)&password=\(pass)"
        AF.request(url, method: .post).validate().responseJSON {[self] response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                let to = json["notice"]["token"].stringValue
                if json["notice"]["token"].stringValue != "" {
                    perehod = 2
                    UserDefaults.standard.set(to, forKey: "Tofen")
                    
                } else if json["notice"]["answer"].stringValue == "Error username or password"{
                    perehod = 3
                } else if json["notice"]["answer"].stringValue == "User is active"{
                    UserDefaults.standard.set(to, forKey: "Tofen")
                    perehod = 4
                }
                print("JSON: \(json)")
            case .failure(let error):
                print(error)
            }
        }
    }
    func SignOut(nam:String)  {
    
       
         let url = "http://gym.areas.su/signout?username=\(nam)"
        AF.request(url, method: .post).validate().responseJSON {[self] response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
              
                print("JSON: \(json)")
            case .failure(let error):
                print(error)
            }
        }
    }
    func AddVideo()  {
    
       
         let url = "http://gym.areas.su//lessons"
        AF.request(url, method: .get).validate().responseJSON {[self] response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                for i in 0..<json.count{
                    modelGet.append(ModelYou(url: json[i]["url"].stringValue, category:  json[i]["category"].stringValue))
                }
                print("JSON: \(json)")
            case .failure(let error):
                print(error)
            }
        }
    }
    func Change(token:String, wh:String, hi:String)  {
    
       
         let url = "http://gym.areas.su/editeprofile?token=\(tofen!)&weight=\(wh)&height=\(hi)"
        AF.request(url, method: .put).validate().responseJSON {[self] response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
              
                print("JSON: \(json)")
            case .failure(let error):
                print(error)
            }
        }
    }
    func Get()  {
    
       
         let url = "http://gym.areas.su/profile?token=\(tofen!)"
        AF.request(url, method: .post).validate().responseJSON {[self] response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
              
                print("JSON: \(json)")
            case .failure(let error):
                print(error)
            }
        }
    }
    
}
