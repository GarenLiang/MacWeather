//
//  main.swift
//  weather
//
//  Created by GarenLiang on 2017/5/10.
//  Copyright © 2017年 GarenLiang. All rights reserved.
//

import Foundation



//for arg in CommandLine.arguments {
//    print(arg)
//}

let weather = Weather()

var location = ""

if CommandLine.arguments.count <= 1 {
    print("You need to provide a location")
    weather.finished = true
} else {
    for index in 0..<CommandLine.arguments.count {
        if index != 0 {
            location += CommandLine.arguments[index] + " "
        }
    }
}
print("Location: \(location)")

while !weather.finished {
    if !weather.apiLaunched {
        weather.getTemp(location: location)
        weather.apiLaunched = true
    }
}
