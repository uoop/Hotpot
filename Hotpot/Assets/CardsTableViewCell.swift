//
//  CardsTableViewCell.swift
//  Hotpot
//
//  Created by siqi yang on 24/1/18.
//  Copyright © 2018 rmit. All rights reserved.
//

import UIKit

class CardsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cardName: UILabel!
    @IBOutlet weak var cardRSSI: UILabel!
    @IBOutlet weak var cardMAC: UILabel!
    @IBOutlet weak var cardID: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
