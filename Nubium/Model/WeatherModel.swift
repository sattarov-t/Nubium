//
//  WeatherModel.swift
//  Nubium
//
//  Created by Тимур on 19.08.2023.
//

import Foundation

struct WeatherModel {
    let conditionID: Int
    let cityName: String
    let temperature: Double
    
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }
    
    var conditionIName: String {
        switch conditionID {
        case 200...232:
            return "thunderstorm"
        case 300...321:
            return "drizzle"
        case 500...531:
            return "rain"
        case 600...622:
            return "snow"
        case 701...781:
            return "atmosphere"
        case 800:
            return "clear"
        case 801...804:
            return "clouds"
        default:
            return "clouds"
        }
    }
}
