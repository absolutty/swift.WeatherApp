//
//  ForecastCell.swift
//  WeatherApp
//
//  Created by Adam Hajro on 06/04/2022.
//

import UIKit

class ForecastCell: UITableViewCell {
   
    static let PERCENT = "%";
    static let CELSIUS = "℃";
    
    static var classString : String {
        String(describing: ForecastCell.self)
    }
    
    @IBOutlet weak var label_day: UILabel!
    @IBOutlet weak var img_typeOfWeather: UIImageView!
    @IBOutlet weak var label_humidity: UILabel!
    @IBOutlet weak var label_temperature: UILabel!
    
    func setWeather(forecastDay: ForecastDay)
    {
        self.label_day.text = forecastDay.dayOfWeek
        self.label_temperature.text = String(forecastDay.temperature) + ForecastCell.CELSIUS
        self.img_typeOfWeather.image = getImage(type: forecastDay.typeOfWeather)
        self.label_humidity.text = String(forecastDay.humidity) + ForecastCell.PERCENT
    }
    
    func getImage(type: ForecastDay.WeatherType) -> UIImage {
        var img: UIImage = UIImage()
        
        switch type {
        case .sunny:
            img = UIImage(systemName: "sun.max.fill")!
            break
        case .cloudy:
            img = UIImage(systemName: "cloud.fill")!
            break
        case .windy:
            img = UIImage(systemName: "wind")!
            break
        case .rainy:
            img = UIImage(systemName: "cloud.rain.fill")!
            break
        case .stormy:
            img = UIImage(systemName: "cloud.bolt.fill")!
            break
        }
        
        return img
    }
}
