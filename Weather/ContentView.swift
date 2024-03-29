//
//  ContentView.swift
//  Weather
//
//  Created by Epic_Sys on 29/03/2024.
//

import SwiftUI

enum BackgroundMode {
    case light
    case dark
    
    mutating func toggle() {
        self = (self == .light) ? .dark : .light
    }
}

struct ContentView: View {
    
    @State private var backgroundMode: BackgroundMode = .light
    
    private let weathers: [Weather] = [
        .init(day: "tue", image: "cloud.sun.fill", temperature: 29),
        .init(day: "wen", image: "cloud.sun.fill", temperature: 30),
        .init(day: "thr", image: "cloud.sun.fill", temperature: 29),
        .init(day: "fri", image: "cloud.sun.fill", temperature: 29),
        .init(day: "sun", image: "cloud.sun.fill", temperature: 29)
    ]
    
    var body: some View {
        ZStack {
            BackgroundColorView(backgroundMode: backgroundMode)
            
            VStack {
                CityTextView(title: "Cairo")
                
                MainWeather(temperature: 30, image: "cloud.sun.fill")
                
                Spacer()
                
                HStack(spacing: 18) {
                    ForEach(weathers, id: \.self) { weather in
                        WeatherDayCell(day: weather.day, image: weather.image, temperature: weather.temperature)
                    }
                }
                .padding(.horizontal)
                
                Spacer()
                
                WeatherButton(title: "Change Day Time") {
                    backgroundMode.toggle()
                }
                
                Spacer()
            }
        }
        .foregroundStyle(.white)
    }
}

#Preview {
    ContentView()
}

struct BackgroundColorView: View {
    let backgroundMode: BackgroundMode
    var colors: [Color] {
        return switch backgroundMode {
        case .light: [.blue, .lightBlue]
        case .dark: [.black, .gray]
        }
    }
    
    var body: some View {
        LinearGradient(colors: colors,
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .ignoresSafeArea()
    }
}

struct CityTextView: View {
    let title: String
    
    var body: some View {
        Text(title)
            .font(.largeTitle)
            .padding()
    }
}
