//
//  WeatherParameter.swift
//  RWeatherAppNetwork
//
//  Created by Abhas Kumar on 6/27/20.
//  Copyright © 2020 Abhas Kumar. All rights reserved.
//

import Foundation


struct WeatherParameter: Decodable {
    let name: String
    let weather: [Weather]
    let main: Main
}
struct Weather: Decodable {
    let description: String
}
struct Main: Decodable {
    let temp: Double
}

