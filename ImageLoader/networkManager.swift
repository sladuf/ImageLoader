//
//  networkManager.swift
//  ImageLoader
//
//  Created by 김민령 on 2023/03/02.
//

import Foundation

class NetworkManager {
    
    static func getImage(completionHandler: @escaping(Data) -> Void){
        DispatchQueue.global().async {
            if let data = try? Data(contentsOf: URL(string: "https://picsum.photos/200")!) {
                DispatchQueue.main.async {
                    completionHandler(data)
                }
            }
        }
    }
}
