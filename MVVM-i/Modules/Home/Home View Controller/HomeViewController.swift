//
//  HomeViewController.swift
//  MVVM-i
//
//  Created by Ayush Pathak on 22/01/21.
//  Copyright © 2021 Appentus Technologies Pvt. Ltd. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    // MARK:- outlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK:- variables
    var postListViewModel: PostListViewModel!
    
    // MARK:- lifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.postListViewModel = PostListViewModel()
        
        self.postListViewModel.posts.bind {
            if ($0 != nil) {
                self.tableView.reloadData()
            }
        }
    }
}

extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let posts = self.postListViewModel.posts.value else { return 0 }
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let posts = self.postListViewModel.posts.value
                        else { return UITableViewCell() }
        let cell = UITableViewCell()
        cell.textLabel?.text = posts[indexPath.row].title
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.push(to: MainViewRoutes.emptyViewController.controller(), with: true)
    }
}

