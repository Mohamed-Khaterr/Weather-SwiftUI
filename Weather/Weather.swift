//
//  Weather.swift
//  Weather
//
//  Created by Epic_Sys on 29/03/2024.
//

import Foundation

// Confiram to Hashable to use the Object inside ForEach
struct Weather: Hashable {
    let day: String
    let image: String
    let temperature: Int
}
