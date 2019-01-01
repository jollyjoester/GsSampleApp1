//
//  EventCollectionViewCell.swift
//  GsSampleApp1
//
//  Created by jollyjoester on 2018/12/31.
//  Copyright © 2018 jollyjoester. All rights reserved.
//

import UIKit

class EventCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var eventNameLabel: UILabel! {
        didSet {
            eventNameLabel.text = nil
        }
    }
    
    //    @IBOutlet weak var eventPlaceLabel: UILabel!
//    @IBOutlet weak var eventDateLabel: UILabel!
//    @IBOutlet weak var numberOfPeopleLabel: UILabel!
//    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var widthLayout: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()

        print(UIScreen.main.bounds.width)
        
        widthLayout?.constant = UIScreen.main.bounds.width
    }
    
    class func nib() -> UINib {
        return UINib(nibName: "\(self)", bundle: nil)
    }
}
