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
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func placeOrderButtonPressed(_ sender: UIButton) {
    }
}
