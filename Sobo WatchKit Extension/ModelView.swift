//
//  ModelView.swift
//  Sobo WatchKit Extension
//
//  Created by Sofi on 26.02.2021.
//

import Foundation
import SwiftUI
import SwiftyJSON
import Alamofire

class ViewModel: ObservableObject {
    @Published var perehod = 1
   
    @Published var tofen = UserDefaults.standard.string(forKey: "Tofen")
    
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
//                    UserDefaults.standard.set(to, forKey: "Tofen")
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
}
