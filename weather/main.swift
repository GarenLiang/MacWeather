//
//  main.swift
//  weather
//
//  Created by GarenLiang on 2017/5/10.
//  Copyright © 2017年 GarenLiang. All rights reserved.
//

import Foundation

print("Hello, World!")

//for arg in CommandLine.arguments {
//    print(arg)
//}

let weather = Weather()

while !weather.finished {
    if !weather.apiLaunched {
        weather.getTemp(location: "abc")
        weather.apiLaunched = true
    }
}
