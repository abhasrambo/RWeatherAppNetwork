//
//  ViewController.swift
//  RWeatherAppNetwork
//
//  Created by Abhas Kumar on 6/26/20.
//  Copyright © 2020 Abhas Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UISearchTextFieldDelegate {
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    let weatherManager = WeatherManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func searchButton(_ sender: UIButton) {
        searchBar.endEditing(true)
        print(searchBar.text!)
        if let city = searchBar.text {
           weatherManager.urlString(city)
        }

        
    }
    
     
    
}

