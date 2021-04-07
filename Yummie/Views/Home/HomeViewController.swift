//
//  HomeViewController.swift
//  Yummie
//
//  Created by vas mar on 06/04/2021.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var categoryCollectionView: UICollectionView!
    
    var categories: [DishCategory] = [
        .init(id: "id1", name: "Europe dish", image: "https://picsum.photos/100/200"),
        .init(id: "id2", name: "Europe dish 2", image: "https://picsum.photos/100/200"),
        .init(id: "id3", name: "Europe dish3", image: "https://picsum.photos/100/200"),
        .init(id: "id4", name: "Europe dish4", image: "https://picsum.photos/100/200"),
        .init(id: "id5", name: "Europe dish5", image: "https://picsum.photos/100/200")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Yummie"
        
        categoryCollectionView.delegate = self
        categoryCollectionView.dataSource = self
        
        registerCell()
    }
    
    private func registerCell() {
        categoryCollectionView.register(UINib(nibName: CategoryCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
    }

}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as! CategoryCollectionViewCell
        cell.setUp(category: categories[indexPath.row])
        return cell
    }
    
    
}


