//
//  WeatherDataModel.swift
//  WeatherApp
//
//  Created by Angela Yu on 24/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit


    import Foundation
    class WeatherDataModel {
        
        let temperature: Int?
        let humidity: Int?
        let precipProbability: Int?
        let summary: String?
        let icon: String?
        
        
        struct weatherKeys {
            
            static let temperature = "temperature"
            static let humidity = "humidity"
            static let precipProbability = "precipProbability"
            static let summary = "summary"
            static let icon = "icon"
        }
        
        init(weatherDictionary: [String : Any]) {
            
            
         

             if let temperatureDouble = weatherDictionary[weatherKeys.temperature] as? Double {
                        temperature = Int(temperatureDouble )
                    }else{
                        
                        temperature = nil
                    }
            
            if let humidityDouble = weatherDictionary[weatherKeys.humidity] as? Double {
                humidity = Int(humidityDouble * 100 )
                
            } else{
                 humidity = nil
            }
            
            if let precipProbabilityDouble = weatherDictionary[weatherKeys.precipProbability] as? Double  {
                
                precipProbability = Int(precipProbabilityDouble * 100)
        
            } else{
                
                precipProbability = nil
                
            }

            summary = weatherDictionary[weatherKeys.summary] as? String
            
            icon = weatherDictionary[weatherKeys.icon] as? String
            

    //Declare your model variables here
    
    
    //This method turns a condition code into the name of the weather condition image
    
//    func updateWeatherIcon(condition: Int) -> String {
//        
//    switch (condition) {
//    
//        case 0...300 :
//            return "tstorm1"
//        
//        case 301...500 :
//            return "light_rain"
//        
//        case 501...600 :
//            return "shower3"
//        
//        case 601...700 :
//            return "snow4"
//        
//        case 701...771 :
//            return "fog"
//        
//        case 772...799 :
//            return "tstorm3"
//        
//        case 800 :
//            return "sunny"
//        
//        case 801...804 :
//            return "cloudy2"
//        
//        case 900...903, 905...1000  :
//            return "tstorm3"
//        
//        case 903 :
//            return "snow5"
//        
//        case 904 :
//            return "sunny"
//        
//        default :
//            return "dunno"
//        }
//
//    }
}
}
