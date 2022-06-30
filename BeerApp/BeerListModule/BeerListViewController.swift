//
//  BeerListViewController.swift
//  BeerApp
//
//  Created by David Viloria Ortega on 30/06/22.
//

import Foundation
import UIKit
import SDWebImage

class BeerListViewController: UIViewController{
    
    var presenter: BeerListPresenterProtocol?
    var listAtributes = [BeerListEntity]()
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        presenter?.viewDidLoad()
        configureTableView()
    }
    
    func configureTableView(){
        let nibName = UINib(nibName: "\(BeerListCell.self)", bundle: nil)
        tableView.register(nibName, forCellReuseIdentifier: "\(BeerListCell.self)")
        tableView.reloadData()
    }
}

extension BeerListViewController: BeerListViewControllerProtocol{
    func getDatos(data: [BeerListEntity]) {
        self.listAtributes = data
    }
    
    
}

extension BeerListViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.listAtributes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "\(BeerListCell.self)", for: indexPath) as? BeerListCell else{ return UITableViewCell() }
        cell.beerImage.sd_setImage(with: URL(string: listAtributes[indexPath.row].beerPic!), completed: nil)
//        cell.beerImage.image = UIImage(named: listAtributes[indexPath.row].beerPic)
        cell.beerName.text = listAtributes[indexPath.row].beerName
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter?.goToDetailView(title: listAtributes[indexPath.row].beerName, nameImage: listAtributes[indexPath.row].beerPic)
    }
    
    
}
