//
//  PostsViewController.swift
//  Nebula
//
//  Created by Khalid Asad on 2019-06-24.
//  Copyright © 2019 Khalid Asad. All rights reserved.
//

import UIKit
import PlatformCommon

class PostsViewController: UIViewController {

    private var model: PostsModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        model = PostsModel()
        
        model.fetchData(completion: {
            _ in
        })
    }

    
}

