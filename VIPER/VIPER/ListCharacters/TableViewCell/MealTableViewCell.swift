//
//  MealTableViewCell.swift
//  VIPER
//
//  Created by 1135307 on 14/03/24.
//

import UIKit
import Kingfisher

class MealTableViewCell: UITableViewCell {
    
    @IBOutlet weak var mealImageView: UIImageView!
    @IBOutlet weak var mealLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        mealImageView.layer.cornerRadius = mealImageView.frame.size.width / 2
        mealImageView.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    public func configure(meal: MealEntity){
        mealLabel.text = meal.nameMeal
        mealImageView.kf.setImage(with: URL(string: meal.imageMeal))
    }
    
}
