//
//  Wearther.swift
//  Weather
//
//  Created by Adam Hajro on 06/04/2022.
//

import Foundation

class ForecastDay {
    enum WeatherType {
      case sunny, cloudy, windy, rainy, stormy
    }
    
    var dayOfWeek: String
    var typeOfWeather: WeatherType
    var humidity: Int
    var temperature: Int
    
    init(dayOfWeek: String, typeOfWeather: WeatherType, humidity: Int, temperature: Int) {
        self.dayOfWeek = dayOfWeek
        self.typeOfWeather = typeOfWeather
        self.humidity = humidity
        self.temperature = temperature
    }
}
