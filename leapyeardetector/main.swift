//
//  main.swift
//  leapyeardetector
//
//  Created by Kyle Dunlap on 12/1/20.
//
// Converted from Python 3 with no optimizations yet.

import Foundation

func leapYearDetector(year: Int) -> String {
    let isnot = "\(year) was not a leap year."
    let isly = "\(year) was a leap year!"
    if year % 4 == 0 && year % 100 != 0 {
        return isly
    } else if year % 400 == 0 {
        return isly
    } else {
        return isnot
    }
}

print("Type a year below.")
if let typedInput = readLine() {
    if let yearInput = Int(typedInput) {
        print(leapYearDetector(year: yearInput))
    }
}
