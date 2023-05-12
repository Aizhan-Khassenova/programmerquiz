//
//  LevelsViewController.swift
//  programmerquiz
//
//  Created by nurlanispaew on 06.05.2023.
//

import UIKit

class CardsViewController: UIViewController {

    
    @IBOutlet weak var cardCollectionView: UICollectionView!
    
    var cardsSeriesImage: [String] = ["pic1","pic2","pic3","pic4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        cardCollectionView.dataSource = self
        cardCollectionView.delegate = self
        // Do any additional setup after loading the view.
    }
    


}

extension CardsViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cardsSeriesImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CardsCollectionViewCell
        
        cell.cardsImage.image = UIImage(named: cardsSeriesImage[indexPath.row])
        cell.cardsImage.layer.cornerRadius = 20
        return cell
    }
    
    
}
