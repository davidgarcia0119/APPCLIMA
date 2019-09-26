//
//  ViewController.swift
//  WeatherApp
//
//  Created by Angela Yu on 23/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit



class WeatherViewController: UIViewController {
    //Constants
    
    
    //TODO: Declare instance variables here
    
    
    //Pre-linked IBOutlets
    @IBOutlet weak var weatherIcon: UIImageView!
    
    
    
    @IBOutlet weak var cityLabel: UILabel!
    
    
    
    @IBOutlet weak var temperatureLabel: UILabel!
    
    
    let forecastAPIkey = "1bbc8738c8d4344b64d735dcc4477f11"
    let coordinate: (lat: Double, long: Double) = (37.8267,-122.4233)
    var forecastService: ForecastService!
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //TODO:Set up the location manager here.
        forecastService = ForecastService(APIkey: forecastAPIkey)
        forecastService.getCurrentWeather(latitude: coordinate.lat, longitude: coordinate.long) { (weatherData) in
            if let weatherData = weatherData {
                DispatchQueue.main.async {
                    if let temperature = weatherData.temperature{
                        self.temperatureLabel.text = "\(temperature)°"
                    }else{
                        self.temperatureLabel.text = "-"
                    }
                }
            }
            
        }
        
        
        
        
    }
    
    
    
    //MARK: - Networking
    /***************************************************************/
    
    //Write the getWeatherData method here:
    
    
  
    
    
    
    //MARK: - JSON Parsing
    /***************************************************************/
    
    
    //Write the updateWeatherData method here:
    
    
    
    
    
    //MARK: - UI Updates
    /***************************************************************/
    
    
    //Write the updateUIWithWeatherData method here:
    
    
    
    
    
    
    //MARK: - Location Manager Delegate Methods
    /***************************************************************/
    
    
    //Write the didUpdateLocations method here:
    
    
    
    //Write the didFailWithError method here:
    
    
    
    
    
    //MARK: - Change City Delegate methods
    /***************************************************************/
    
    
    //Write the userEnteredANewCityName Delegate method here:
    
    
    
    //Write the PrepareForSegue Method here
    
    
    
    
    
}



