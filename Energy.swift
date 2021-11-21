//
//  Energy.swift
//
//  Created by Jenoe Balote
//  Created on 2021-11-21
//  Version 1.0
//  Copyright (c) 2021 Jenoe Balote. All rights reserved.
//
//  This program calculates the energy produced by a given mass.
//

import Foundation

let speedOfLight: Double = 2.998 * pow(10, 8)

// Input
print("This program calculates energy released when the mass of an object is",
      "converted to energy.")
print("Enter the mass (kg): ", terminator: "")

// Gather input
guard let massString = readLine(), !massString.isEmpty else {
    print("That's not a number!")
    exit(001)
}

// Makes sure input can be converted to Double.
if let mass = Double(massString) {

    // Calculates E = mc^2 to find the amount of energy produced.
    let energy = mass * pow(speedOfLight, 2)

    print("\n\(mass)kg of mass would produce \(energy)J of energy")
} else {
    print("That's not a number!")
}

print("\nThanks for using the program!")
