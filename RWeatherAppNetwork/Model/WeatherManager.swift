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
        if let url = URL(string: urlString) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    print(error!)
                    return
                }
                if let safedata = data {
                    self.parseJson(safedata)

                }
            }
            task.resume()
        }
        
    }
    
    func parseJson(_ weatherdata: Data){
        let decoder = JSONDecoder()
        do {
             let decodedData = try decoder.decode(WeatherParameter.self, from: weatherdata)
            print(decodedData.weather[0].description)
        } catch {
            print(error)
        }
        
    }
    

}
