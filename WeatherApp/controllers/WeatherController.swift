//
//  ViewController.swift
//  WeatherApp
//
//  Created by Adam Hajro on 06/04/2022.
//

import UIKit

class WeatherContoller: UIViewController {
    @IBOutlet weak var actualDate: UILabel!
    @IBOutlet weak var actualLocation: UILabel!
    @IBOutlet weak var actualTemperature: UILabel!
    @IBOutlet weak var actualType: UILabel!
    @IBOutlet weak var actualFeelsLike: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
    var forecast: [ForecastDay] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setData()
        tableView.dataSource = self
        tableView.register(UINib(nibName: ForecastCell.classString, bundle: nil),
                           forCellReuseIdentifier: ForecastCell.classString)
        
    }

    func setData() {
        let forec1 =
            ForecastDay(dayOfWeek: "Monday", typeOfWeather: ForecastDay.WeatherType.sunny, humidity: 30, temperature: 19)
        let forec2 =
        ForecastDay(dayOfWeek: "Tuesday", typeOfWeather: ForecastDay.WeatherType.sunny, humidity: 25, temperature: 16)
        let forec3 =
        ForecastDay(dayOfWeek: "Wednesday", typeOfWeather: ForecastDay.WeatherType.cloudy, humidity: 40, temperature: 15)
        let forec4 =
        ForecastDay(dayOfWeek: "Thursday", typeOfWeather: ForecastDay.WeatherType.windy, humidity: 40, temperature: 10)
        let forec5 =
            ForecastDay(dayOfWeek: "Friday", typeOfWeather: ForecastDay.WeatherType.stormy, humidity: 45, temperature: 12)
        let forec6 =
            ForecastDay(dayOfWeek: "Saturday", typeOfWeather: ForecastDay.WeatherType.sunny, humidity: 20, temperature: 17)
        let forec7 =
            ForecastDay(dayOfWeek: "Sunday", typeOfWeather: ForecastDay.WeatherType.sunny, humidity: 19, temperature: 25)
        
        self.forecast.append(forec1)
        self.forecast.append(forec2)
        self.forecast.append(forec3)
        self.forecast.append(forec4)
        self.forecast.append(forec5)
        self.forecast.append(forec6)
        self.forecast.append(forec7)
    }
}

extension WeatherContoller : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return forecast.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let weatherCell =
                tableView.dequeueReusableCell(withIdentifier:
                    ForecastCell.classString, for: indexPath) as? ForecastCell else {
                        return UITableViewCell()
        }
        
        let weatherDay = forecast[indexPath.row]
        weatherCell.setWeather(forecastDay: weatherDay)
        
        return weatherCell
    }
}
