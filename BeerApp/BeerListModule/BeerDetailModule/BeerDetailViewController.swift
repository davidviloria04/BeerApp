//
//  BeerDetailViewController.swift
//  BeerApp
//
//  Created by David Viloria Ortega on 30/06/22.
//

import Foundation
import UIKit
import SDWebImage


class BeerDetailViewController: UIViewController {
    
    var presenter: BeerDetailPresenterProtocol?
    var listAtributes = [BeerDetailEntity]()
    
    var titleDescription: String?
    var imageDescription: String?
    
    @IBOutlet weak var beerImg: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var tagsLbl: UILabel!
    @IBOutlet weak var phLbl: UILabel!
    @IBOutlet weak var attenuationLbl: UILabel!
    @IBOutlet weak var firstBrewedLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter?.viewDidLoad()
        beerImg.sd_setImage(with: URL(string: imageDescription ?? ""), completed: nil)
        
        titleLbl.text = titleDescription
        
    }
}


extension BeerDetailViewController: BeerDetailViewControllerProtocol{
    func getDatos(data: [BeerDetailEntity]) {
        self.listAtributes = data
        
        descriptionLbl.text = listAtributes[0].description
        tagsLbl.text = listAtributes[0].tags
        phLbl.text = listAtributes[0].ph
        attenuationLbl.text = listAtributes[0].attenuationLevel
        firstBrewedLbl.text = listAtributes[0].firstBrewed
    }
    
    
}
