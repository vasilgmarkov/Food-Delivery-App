//
//  DishDetailViewController.swift
//  Yummie
//
//  Created by vas mar on 07/04/2021.
//

import UIKit

class DishDetailViewController: UIViewController {
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var caloryLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var nameField: UITextField!
    
    var dish: Dish!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popilateView()
    }
    
    private func popilateView() {
        dishImageView.kf.setImage(with: dish.image?.asUrl)
        titleLabel.text = dish.name
        descriptionLabel.text = dish.description
        caloryLabel.text = dish.formattedCalories
    }

    @IBAction func placeOrderButtonPressed(_ sender: UIButton) {
    }
}
