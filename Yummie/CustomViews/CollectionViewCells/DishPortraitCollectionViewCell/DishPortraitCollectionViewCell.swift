//
//  DishPortraitCollectionViewCell.swift
//  Yummie
//
//  Created by vas mar on 07/04/2021.
//

import UIKit

class DishPortraitCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing: DishPortraitCollectionViewCell.self)
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dishImageView: UIImageView!
    
    @IBOutlet weak var caloriesLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    func setUp(dish: Dish) {
        titleLabel.text = dish.name
        dishImageView.kf.setImage(with: dish.image?.asUrl)
        caloriesLabel.text = dish.formattedCalories
        descriptionLabel.text = dish.description
    }
}
