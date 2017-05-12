//
//  Weather.swift
//  weather
//
//  Created by GarenLiang on 2017/5/11.
//  Copyright © 2017年 GarenLiang. All rights reserved.
//

import Foundation

class Weather {
    
    var finished = false
    var apiLaunched = false
    
    func getTemp(location:String) -> String {
        
        if let url = URL(string: "https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%20in%20(select%20woeid%20from%20geo.places(1)%20where%20text%3D%22nome%2C%20ak%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys") {
            
            URLSession.shared.dataTask(with: url, completionHandler : {( data:Data?,
                response:URLResponse?, error: Error?) in
                
                if error != nil {
                    print("API ERROR")
                } else {
                    print("It Works")
                }
                self.finished = true
            }).resume()
        }
        return ""
    }
 }
