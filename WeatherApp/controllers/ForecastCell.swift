//
//  ForecastCell.swift
//  WeatherApp
//
//  Created by Adam Hajro on 06/04/2022.
//

import UIKit

class ForecastCell: UITableViewCell {
    @IBOutlet weak var label_day: UILabel!
    @IBOutlet weak var img_typeOfWeather: UIImageView!
    @IBOutlet weak var label_humidity: UILabel!
    @IBOutlet weak var label_temperature: UILabel!
    
    func setWeather(forecastDay: ForecastDay)
    {
        self.label_day.text = forecastDay.getDayOfWeek()
        self.label_temperature.text = forecastDay.getTemperatureInCelsius()
        self.img_typeOfWeather.image = forecastDay.getTypeOfWeather()
        self.label_humidity.text = forecastDay.getHumidityInPercent()
    }
    
    static var classString : String {
        String(describing: ForecastCell.self)
    }
}
