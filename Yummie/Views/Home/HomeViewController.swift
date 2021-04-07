//
//  HomeViewController.swift
//  Yummie
//
//  Created by vas mar on 06/04/2021.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var categoryCollectionView: UICollectionView!
    @IBOutlet weak var popularCollectionView: UICollectionView!
    @IBOutlet weak var specialCollectionView: UICollectionView!
    
    var categories: [DishCategory] = [
        .init(id: "id1", name: "Europe dish", image: "https://picsum.photos/100/200"),
        .init(id: "id2", name: "Europe dish 2", image: "https://picsum.photos/100/200"),
        .init(id: "id3", name: "Europe dish3", image: "https://picsum.photos/100/200"),
        .init(id: "id4", name: "Europe dish4", image: "https://picsum.photos/100/200"),
        .init(id: "id5", name: "Europe dish5", image: "https://picsum.photos/100/200")
    ]
    
    var populars: [Dish] = [
        .init(id: "id1", name: "Pizza", description: "Best pizza ever tasted.", image: "https://picsum.photos/100/200", calories: 34),
        .init(id: "id2", name: "Tropical salad", description: "Best salad ever tasted.", image: "https://picsum.photos/100/200", calories: 14),
        .init(id: "id3", name: "Pasta", description: "Best pasta ever tasted.", image: "https://picsum.photos/100/200", calories: 54),
        .init(id: "id4", name: "Lamb", description: "Best lamb ever tasted.", image: "https://picsum.photos/100/200", calories: 444),
        .init(id: "id5", name: "Entrecot", description: "Best entrecot ever tasted.", image: "https://picsum.photos/100/200", calories: 304)
    ]
    
    var specials: [Dish] = [
        .init(id: "id1", name: "Paella", description: "Best Paella ever tasted.", image: "https://picsum.photos/100/200", calories: 444),
        .init(id: "id2", name: "Fideua", description: "Best fideua ever tasted in Spain and in special in Barcelona restaurant.", image: "https://picsum.photos/100/200", calories: 304)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Yummie"
        
        categoryCollectionView.delegate = self
        categoryCollectionView.dataSource = self
        
        popularCollectionView.delegate = self
        popularCollectionView.dataSource = self
        
        specialCollectionView.delegate = self
        specialCollectionView.dataSource = self
        
        registerCell()
    }
    
    private func registerCell() {
        categoryCollectionView.register(UINib(nibName: CategoryCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
        
        popularCollectionView.register(UINib(nibName: DishPortraitCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: DishPortraitCollectionViewCell.identifier)
        
        specialCollectionView.register(UINib(nibName: DishLandscapeCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: DishLandscapeCollectionViewCell.identifier)
    }

}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case categoryCollectionView:
            return categories.count
        case popularCollectionView:
            return populars.count
        case specialCollectionView:
            return specials.count
        default:
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch collectionView {
        case categoryCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as! CategoryCollectionViewCell
            cell.setUp(category: categories[indexPath.row])
            return cell
        case popularCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DishPortraitCollectionViewCell.identifier, for: indexPath) as! DishPortraitCollectionViewCell
            cell.setUp(dish: populars[indexPath.row])
            return cell
        case specialCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DishLandscapeCollectionViewCell.identifier, for: indexPath) as! DishLandscapeCollectionViewCell
            cell.setUp(dish: specials[indexPath.row])
            return cell
        default:
            return UICollectionViewCell()
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == categoryCollectionView {
            
        } else {
            let controller = DishDetailViewController.instantiate()
            controller.dish = collectionView == popularCollectionView ? populars[indexPath.row] : specials[indexPath.row]
            navigationController?.pushViewController(controller, animated: true)
        }
    }
    
    
}


