//
//  Wearther.swift
//  Weather
//
//  Created by Adam Hajro on 06/04/2022.
//

import Foundation
import UIKit

class ForecastDay {
    enum WeatherType {
      case sunny, cloudy, windy, rainy, stormy
    }
    
    private var dayOfWeek: String
    private var typeOfWeather: WeatherType
    private var humidity: Int
    private var temperature: Int
    
    init(dayOfWeek: String, typeOfWeather: WeatherType, humidity: Int, temperature: Int) {
        self.dayOfWeek = dayOfWeek
        self.typeOfWeather = typeOfWeather
        self.humidity = humidity
        self.temperature = temperature
    }
    
    static let PERCENT = "%";
    static let CELSIUS = "℃";
    
    //Atributy su zaenkapsulovane pre pripadne potreby uprav (daj v stupnoch celzia, ...)
    func getDayOfWeek() -> String {
        return dayOfWeek
    }
    
    
    func getTypeOfWeather() -> UIImage {
        switch typeOfWeather {
            case .sunny:
                return UIImage(systemName: "sun.max.fill")!
            case .cloudy:
                return UIImage(systemName: "cloud.fill")!
            case .windy:
                return UIImage(systemName: "wind")!
            case .rainy:
                return UIImage(systemName: "cloud.rain.fill")!
            case .stormy:
                return UIImage(systemName: "cloud.bolt.fill")!
        }
    }
    
    func getHumidityInPercent() -> String{
        return "\(humidity)" + ForecastDay.PERCENT
    }
    
    func getTemperatureInCelsius() -> String {
        return "\(temperature)" + ForecastDay.CELSIUS
    }
}
