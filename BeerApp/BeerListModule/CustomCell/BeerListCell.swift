//
//  BeerListCell.swift
//  BeerApp
//
//  Created by David Viloria Ortega on 30/06/22.
//

import UIKit

class BeerListCell: UITableViewCell {

    @IBOutlet weak var beerName: UILabel!
    @IBOutlet weak var beerImage: UIImageView!
    
    var delegate: BeerListViewController?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        //beerImage.image = UIImage(named: "beer.jpeg")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
   
    
}
