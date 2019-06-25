//
//  PostsModel.swift
//  Nebula
//
//  Created by Khalid Asad on 2019-06-24.
//  Copyright © 2019 Khalid Asad. All rights reserved.
//

import Foundation
import UIKit
import PlatformCommon

final class PostsModel {
    
    // MARK: - ItemStackable
    enum StackableItem {
        case image(image: UIImage?, title: String?, filter: String?)
    }
    
    var stackableItems: [PostsModel.StackableItem] = []
}

// MARK: - Network Requests
extension PostsModel {
    
    func fetchData(completion: @escaping ((FetchInfoState) -> Void)) {
        let baseUrlString = StringKeys.baseUrl.rawValue
        let url = URL(string: baseUrlString + StringKeys.jsonPath.rawValue)
        NetworkRequest.fetchData([SwiftResponse].self, for: url, completionHandler: { (data, error) in
            if let error = error {
                print("Error: ")
                print(error)
                completion(.failure)
                return
            }
            guard let data = data else {
                print("Error getting data: result is nil")
                completion(.failure)
                return
            }
            dump(data)
            completion(.success)
        })
    }
}
