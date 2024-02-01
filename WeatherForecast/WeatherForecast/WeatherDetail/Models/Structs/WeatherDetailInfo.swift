//
//  WeatherDetailInfo.swift
//  WeatherForecast
//
//  Created by 김창규 on 1/30/24.
//

import Foundation

struct WeatherDetailInfo: WeatherDetailInfoCoordinator {
    //MARK: - Properties
    private let weatherForecastInfo: WeatherForecastInfo
    private let cityInfo: City
    private let tempUnit: TempUnit
    
    var date: String { weatherForecastInfo.date }
    
    var sunrise: String { cityInfo.sunriseString }
    var sunset: String { cityInfo.sunsetString }
    
    var weatherMain: String { weatherForecastInfo.weatherMain }
    var description: String { weatherForecastInfo.description }
    
    var temp: String { tempUnit.formattedTemp(weatherForecastInfo.temp) }
    var tempMax: String { tempUnit.formattedTempMax(weatherForecastInfo.tempMax) }
    var tempMin: String { tempUnit.formattedTempMin(weatherForecastInfo.tempMin) }
    
    var feelsLike: String { tempUnit.formattedFeelsLike(weatherForecastInfo.feelsLike) }
    
    var pop: String { weatherForecastInfo.pop }
    
    var humidity: String { weatherForecastInfo.humidity }
    
    var iconName: String { weatherForecastInfo.iconName }
    
    //MARK: - Init
    init(weatherForecastInfo: WeatherForecastInfo, cityInfo: City, tempUnit: TempUnit) {
        self.weatherForecastInfo = weatherForecastInfo
        self.cityInfo = cityInfo
        self.tempUnit = tempUnit
    }
}
