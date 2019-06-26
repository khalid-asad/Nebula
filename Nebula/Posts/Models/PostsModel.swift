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
    
    func fetchData(completion: @escaping ((FetchInfoState, [Article]?) -> Void)) {
        let baseUrlString = StringKeys.baseUrl.rawValue
        let url = URL(string: baseUrlString + StringKeys.jsonPath.rawValue)
        NetworkRequest.fetchData([SwiftResponse].self, for: url, completionHandler: { (data, error) in
            if let error = error {
                print("Error: ")
                print(error)
                completion(.failure, nil)
                return
            }
            guard let data = data else {
                print("Error getting data: result is nil")
                completion(.failure, nil)
                return
            }
            dump(data)
            completion(.success, data.first?.data.children)
        })
    }
}
