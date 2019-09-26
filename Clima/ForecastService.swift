//
//  Forecast.swift
//  Clima
//
//  Created by MAC on 9/26/19.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation
import Alamofire

class ForecastService{
    
    let forecastAPIkey: String
    let forecastBaseURL: URL?
    
    init(APIkey : String) {
        self.forecastAPIkey  =  APIkey
        
        forecastBaseURL = URL(string: "https://api.darksky.net/forecast/\(APIkey)")
        
    }
    
    func getCurrentWeather(latitude: Double , longitude: Double, completion: @escaping (WeatherDataModel?)-> Void)
    {
        
        if  let forecastURL = URL(string: "\(forecastBaseURL!)/\(latitude),\(longitude)"){
            
            Alamofire.request(forecastURL).responseJSON(completionHandler: {(response) in
                
                if let jsonDictionary = response.result.value as? [String : Any]{
                    if let currentWeatherDictionary = jsonDictionary [" currently"] as? [String : Any ]{
                        let weatherData = WeatherDataModel(weatherDictionary: currentWeatherDictionary)
                        completion(weatherData)
                    }else{
                        completion(nil)
                    }
                }
                
            })
            
            
        }
        
    }
}
