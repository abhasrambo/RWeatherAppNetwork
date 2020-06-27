//
//  WeatherManager.swift
//  RWeatherAppNetwork
//
//  Created by Abhas Kumar on 6/27/20.
//  Copyright © 2020 Abhas Kumar. All rights reserved.
//

import Foundation

struct WeatherManager {
    let urlBase = "https://api.openweathermap.org/data/2.5/weather?appid=0841f492da3d955f18d6a0cfa7ccc4a5&units=imperial"
    
    func urlString(_ cityName: String) {
        let urlString = "\(urlBase)&q=\(cityName)"
        print(urlString)
        urlSession(urlString)
    }
    
    func urlSession(_ urlString: String) {
        
        if let url = URL(string: urlString){
            let session = URLSession(configuration: .default)
                  let task = session.dataTask(with: url, completionHandler: handler(data: urlResponse: error:))
                  task.resume()
        }
    }
    
    func handler(data:Data?, urlResponse: URLResponse?, error: Error?) {
        
        if error != nil {
            print(error!)
            return
        }
        if let safeData = data{
            let dataString = String(data: safeData, encoding: .utf8)
            print(dataString ?? "test")
        }
        
    }
}
