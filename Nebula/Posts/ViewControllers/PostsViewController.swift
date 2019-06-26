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
    private var articles: [Article]? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        model = PostsModel()
        
        model.fetchData(completion: {
            (_, articleList) in
            guard let articles = articleList else { return }
            self.articles = articles
            self.setupTableView()
        })
    }
    
    let tableview: UITableView = {
        let tv = UITableView()
        tv.backgroundColor = UIColor.white
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.separatorColor = .white
        return tv
    }()
}

extension PostsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func setupTableView() {
        tableview.delegate = self
        tableview.dataSource = self
        
        tableview.register(PostsTableViewCell.self, forCellReuseIdentifier: "cellId")
        
        view.addSubview(tableview)
        
        NSLayoutConstraint.activate([
            tableview.topAnchor.constraint(equalTo: self.view.topAnchor),
            tableview.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            tableview.rightAnchor.constraint(equalTo: self.view.rightAnchor),
            tableview.leftAnchor.constraint(equalTo: self.view.leftAnchor)
            ])
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articles?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! PostsTableViewCell
        cell.backgroundColor = UIColor.white
        
        if let title = articles?[indexPath.row].data.title {
            cell.titleLabel.text = title
        } else {
            cell.titleLabel.text = "No Title"
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        #warning("add condition if thumbnail exists then increase height")
        return 100
    }
}
