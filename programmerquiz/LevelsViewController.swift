//
//  ViewController.swift
//  programmerquiz
//
//  Created by Admin on 06.05.2023.
//

import UIKit

class LevelsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LevelsViewControllerCell", for: indexPath) as! LevelsViewControllerCell
        cell.levelImage.image = UIImage(named: "levelImage1")
        self.tableView.rowHeight = 150.0
        cell.levelView.layer.cornerRadius = 10
        self.tableView.contentInset = UIEdgeInsets(top: 5, left: 0, bottom: 5, right: 0)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
             print("test tap cell")
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "CardsViewController") as! CardsViewController
        self.navigationController?.pushViewController(secondViewController, animated: false)
    }
}

class LevelsViewControllerCell: UITableViewCell {
    
    @IBOutlet weak var levelView: UIView!
    
    @IBOutlet weak var levelTitle: UILabel!
    
    @IBOutlet weak var levelImage: UIImageView!
}
