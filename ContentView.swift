//
//  ContentView.swift
//  Weather_App_Recreation
//
//  Created by Canon Helpman on 2/15/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue.mix(with: .gray, by: 0.8), .blue.mix(with: .gray, by: 0.45)]), startPoint: .center, endPoint: .bottom)
                .ignoresSafeArea()
            VStack{
                VStack(alignment: .center){
                    HStack{
                        Image(systemName: "paperplane.fill")
                        Text("HOME")
                    }
                    Text("Chapel Hill")
                        .font(.title)
                        .bold()
                    Text("45°")
                        .bold()
                        .font(.largeTitle)
                    Text("Rain")
                        .foregroundColor(.white.mix(with: .blue, by: 0.3))
                    HStack{
                        Text("H:50°")
                        Text("L:33°")
                    }
                }
                ScrollView(.vertical){
                    VStack{
                        VStack{
                            Text("Rain Stopping")
                            Text("Light rain is expected to stop in 2 min.")
                        }
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(style: StrokeStyle(lineWidth: 2)))
                        .background(Color.gray.mix(with: .blue, by: 0.5))
                        ScrollView(.horizontal){
                            HoursView()
                        }
                        VStack{
                            titleView(weatherIcon: "umbrella.fill", title: "PRECIPITATION")
                            Image("rain_map")
                                .resizable()
                                .frame(width: 300, height: 300)
                                .overlay(RoundedRectangle(cornerRadius: 10).stroke(style: StrokeStyle(lineWidth: 2)))
                        }
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(style: StrokeStyle(lineWidth: 2)))
                        .background(Color.gray.mix(with: .blue, by: 0.5))
                        WeeklyView()
                        VStack{
                            titleView(weatherIcon: "aqi.low", title: "AIR QUALITY")
                            Text("29")
                            Text("Good")
                            Image(systemName: "rectangle.fill")
                                .resizable()
                                .frame(width: 200, height: 10)
                            Text("Air quality index is 29, which is similar to yesterday at about this time.")
                        }
                        .frame(width:300, height:150)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(style: StrokeStyle(lineWidth: 2)))
                        .background(Color.gray.mix(with: .blue, by: 0.5))
                        VStack{
                            titleView(weatherIcon: "exclamationmark.triangle.fill", title: "WEATHER ALERT")
                            Text("Wind Advisory")
                            Text("Wind Advisory. These conditions are expected by 6:00 AM, Sunday, February 16.")
                            Text("National Weather Service")
                        }
                        .frame(width:300, height:150)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(style: StrokeStyle(lineWidth: 2)))
                        .background(Color.gray.mix(with: .blue, by: 0.5))
                        HStack{
                            VStack{
                                titleView(weatherIcon: "thermometer.low", title: "FEELS LIKE")
                                Text("38°") //Need to figure out degrees symbol
                                Text("Wind is making it feel cooler.")
                                Spacer()
                            }
                            .frame(width:130, height: 130)
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(style: StrokeStyle(lineWidth: 2)))
                            .background(Color.gray.mix(with: .blue, by: 0.5))
                            VStack{
                                titleView(weatherIcon: "sun.max.fill", title: "UV INDEX")
                                Text("1")
                                Text("Low")
                                Image(systemName: "rectangle.fill")
                                    .resizable()
                                    .frame(width: 100, height: 10)
                                Text("Low for the rest")
                                Text("of the day")
                            }
                            .frame(width:130, height: 130)
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(style: StrokeStyle(lineWidth: 2)))
                            .background(Color.gray.mix(with: .blue, by: 0.5))
                        }
                        VStack{
                            titleView(weatherIcon: "wind", title: "WIND")
                            HStack{
                                VStack{
                                    HStack{
                                        Text("Wind")
                                        Text("4 mph")
                                    }
                                    HStack{
                                        Text("Gusts")
                                        Text("6 mph")
                                    }
                                    HStack{
                                        Text("Direction")
                                        Text("294° WNW")
                                    }
                                }
                                Spacer()
                                Image(systemName: "safari")
                                    .resizable()
                                    .frame(width:75, height:75)
                            }
                            Spacer()
                        }
                        .frame(width:300, height:150)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(style: StrokeStyle(lineWidth: 2)))
                        .background(Color.gray.mix(with: .blue, by: 0.5))
                        HStack{
                            VStack{
                                titleView(weatherIcon: "sunset.fill", title: "SUNSET")
                                Text("5:38pm")
                                Image(systemName: "sunset")
                                    .resizable()
                                    .frame(width:50, height:40)
                                Text("Sunrise: 7:01am")
                            }
                            .frame(width:130, height: 130)
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(style: StrokeStyle(lineWidth: 2)))
                            .background(Color.gray.mix(with: .blue, by: 0.5))
                            VStack{
                                titleView(weatherIcon: "drop.fill", title: "PRECIPITATION")
                                Text(".05\"")
                                Text("in last hour")
                                Text(".6\" expected in next 24h.")
                            }
                            .frame(width:130, height: 130)
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(style: StrokeStyle(lineWidth: 2)))
                            .background(Color.gray.mix(with: .blue, by: 0.5))
                        }
                        HStack{
                            VStack{
                                titleView(weatherIcon: "eye.fill", title: "VISIBILITY")
                                Text("7 mi")
                                Text("Clear view.")
                                Spacer()
                            }
                            .frame(width:130, height: 130)
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(style: StrokeStyle(lineWidth: 2)))
                            .background(Color.gray.mix(with: .blue, by: 0.5))
                            VStack{
                                titleView(weatherIcon: "water.waves", title: "HUMIDITY")
                                Text("84%")
                                Text("The dew point is 40° right now.")
                                Spacer()
                            }
                            .frame(width:130, height: 130)
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(style: StrokeStyle(lineWidth: 2)))
                            .background(Color.gray.mix(with: .blue, by: 0.5))
                        }
                    }
                    VStack{
                        titleView(weatherIcon: "moonphase.waning.gibbous", title: "WANING GIBBOUS")
                        HStack{
                            VStack{
                                HStack{
                                    Text("Illumination")
                                    Text("90%")
                                }
                                HStack{
                                    Text("Moonrise")
                                    Text("9:05pm")
                                }
                                HStack{
                                    Text("Next Full Moon")
                                    Text("26 Days")
                                }
                            }
                            Spacer()
                            Image(systemName: "moon.stars")
                                .resizable()
                                .frame(width:75, height: 75)
                        }
                    }
                    .frame(width:300, height:150)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(style: StrokeStyle(lineWidth: 2)))
                    .background(Color.gray.mix(with: .blue, by: 0.5))
                    HStack{
                        VStack{
                            titleView(weatherIcon: "chart.xyaxis.line", title: "AVERAGES")
                            Text("-5°")
                            Text("from average")
                            Text("daily high")
                            HStack{
                                Text("Today")
                                Text("H:50°")
                            }
                            HStack{
                                Text("Average")
                                Text("H:55°")
                            }
                        }
                        .frame(width:130, height: 130)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(style: StrokeStyle(lineWidth: 2)))
                        .background(Color.gray.mix(with: .blue, by: 0.5))
                        VStack{
                            titleView(weatherIcon: "gauge.with.needle", title: "PRESSURE")
                            Image(systemName: "gauge.with.dots.needle.67percent")
                                .resizable()
                                .frame(width:75, height:75)
                            HStack{
                                Spacer()
                                Text("Low")
                                Spacer()
                                Text("High")
                                Spacer()
                            }
                        }
                        .frame(width:130, height: 130)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(style: StrokeStyle(lineWidth: 2)))
                        .background(Color.gray.mix(with: .blue, by: 0.5))
                    }
                    VStack{
                        titleView(weatherIcon:"exclamationmark.bubble", title: "Report an Issue")
                        Text("You can describe the current conditions at your location to help improve forecasts.")
                        Spacer()
                    }
                    .frame(width:300, height:150)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(style: StrokeStyle(lineWidth: 2)))
                    .background(Color.gray.mix(with: .blue, by: 0.5))
                    VStack{
                        HStack{
                            VStack{
                                Text("Weather for Home")
                                Text("The University of North Carolina at Chapel Hill")
                            }
                            Image(systemName: "i.circle")
                                .resizable()
                                .frame(width:10, height: 10)
                        }
                        HStack{
                            Text("Turn On Notifications")
                            Image(systemName: "bell.badge.fill")
                        }
                        HStack{
                            Text("Open in Maps")
                            Image(systemName: "arrow.up.forward.app.fill")
                        }
                        Text("Learn more about weather data and map data")
                    }
                    
                    
                }
                HStack{
                    Image(systemName: "map")
                    Spacer()
                    HStack{
                        Image(systemName: "paperplane.fill")
                        Image(systemName: "circle.fill")
                    }
                    Spacer()
                    Image(systemName: "slider.horizontal.3")
                }
            }
            .foregroundColor(.white)
            .padding()
        }
    }
    }

struct titleView: View{
    var weatherIcon: String
    var title: String
    var body: some View{
        HStack{
            Image(systemName: weatherIcon)
                .resizable()
                .frame(width: 30, height: 25)
            Text(title)
        }
        Spacer()
    }
}
struct SunView: View{
    var hour: Int
    var setting: Bool
    var body: some View{
        if (setting){
            VStack{
                Text("\(hour):38pm")
                Spacer()
                Image(systemName: "sunset.fill")
                    .resizable()
                    .frame(width:40, height:35)
                Spacer()
                Text("Sunset")
                    .bold()
            }
            .frame(width:75, height: 100)
        }
        else{
            VStack{
                Text("\(hour):01am")
                Spacer()
                Image(systemName: "sunrise.fill")
                    .resizable()
                    .frame(width:40, height:35)
                Spacer()
                Text("Sunrise")
                    .bold()
                
            }
            .frame(width:75, height: 100)
        }
    }
}
struct HourlyForecastView: View {
    var hour: Int
    var temp: Int
    var isNow: Bool
    var isPM: Bool
    var weatherIcon: String
    var rainChance: Int
    var body: some View {
        VStack {
            if(isNow){
                Text("Now")
                Spacer()
            }
            else if (isPM){
                Text("\(hour)PM")
                Spacer()
            }
            else {
                Text("\(hour)AM")
                Spacer()
            }
            if (rainChance == 0){
                Image(systemName: weatherIcon)
                Spacer()
            }
            else{
                Image(systemName: weatherIcon)
                Spacer()
                Text("\(rainChance)%")
                    .foregroundColor(.blue.mix(with: .white, by: 0.7))
                Spacer()
            }
            Text("\(temp)°")
        }
        .frame(width:50, height: 100)
    }
}

struct WeeklyForecastView: View{
    var day: String
    var weatherIcon: String
    var rainChance: Int
    var low: Int
    var high: Int
    var body: some View{
        HStack{
            Text(day)
            Spacer()
            VStack{
                Image(systemName: weatherIcon)
                if (rainChance > 0){
                    Text("\(rainChance)%")
                }
            }
            Spacer()
            Text("\(low)")
            Image(systemName: "rectangle.fill")
                .resizable()
                .frame(width: 100, height: 5)
            Text("\(high)")
        }
        .frame(width: 300, height: 50)
    }
}

struct WeeklyView: View {
    let days: [String] = ["Today", "Sun", "Mon", "Tue", "Wed", "Thur", "Fri", "Sat"]
    let weathers: [String] = ["sun.max.fill", "cloud.fill", "cloud.rain.fill", "snowflake", "cloud.sun"]
    var body: some View{
        VStack{
            WeeklyForecastView(day: days[0], weatherIcon: weathers[2], rainChance: 100, low: 42, high: 51)
            Spacer()
            WeeklyForecastView(day: days[1], weatherIcon: weathers[2], rainChance: 85, low: 42, high: 51)
            Spacer()
            WeeklyForecastView(day: days[2], weatherIcon: weathers[0], rainChance: 0, low: 42, high: 51)
            Spacer()
            WeeklyForecastView(day: days[3], weatherIcon: weathers[4], rainChance: 0, low: 42, high: 51)
            Spacer()
            WeeklyForecastView(day: days[4], weatherIcon: weathers[3], rainChance: 80, low: 42, high: 51)
            Spacer()
            WeeklyForecastView(day: days[5], weatherIcon: weathers[3], rainChance: 65, low: 42, high: 51)
            Spacer()
            WeeklyForecastView(day: days[6], weatherIcon: weathers[0], rainChance: 0, low: 42, high: 51)
            Spacer()
            WeeklyForecastView(day: days[7], weatherIcon: weathers[0], rainChance: 0, low: 42, high: 51)
            Spacer()
            WeeklyForecastView(day: days[1], weatherIcon: weathers[4], rainChance: 0, low: 42, high: 51)
            Spacer()
            WeeklyForecastView(day: days[2], weatherIcon: weathers[0], rainChance: 0, low: 42, high: 51)
        }
        .padding()
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(style: StrokeStyle(lineWidth: 2)))
        .background(Color.gray.mix(with: .blue, by: 0.5))
    }
}

struct HoursView: View{
    var body: some View{
        let weathers: [String] = ["sun.max.fill", "cloud.fill", "cloud.rain.fill"]
        HStack{
            HourlyForecastView(hour: 10, temp: 45, isNow: true, isPM: false, weatherIcon: weathers[1], rainChance: 15)
            HourlyForecastView(hour: 11, temp: 46, isNow: false, isPM: false, weatherIcon: weathers[1], rainChance: 20)
            HourlyForecastView(hour: 12, temp: 46, isNow: false, isPM: true, weatherIcon: weathers[1], rainChance: 0)
            HourlyForecastView(hour: 1, temp: 48, isNow: false, isPM: true, weatherIcon: weathers[0], rainChance: 0)
            HourlyForecastView(hour: 2, temp: 50, isNow: false, isPM: true, weatherIcon: weathers[0], rainChance: 0)
            HourlyForecastView(hour: 3, temp: 51, isNow: false, isPM: true, weatherIcon: weathers[0], rainChance: 0)
            HourlyForecastView(hour: 4, temp: 50, isNow: false, isPM: true, weatherIcon: weathers[1], rainChance: 30)
            HourlyForecastView(hour: 5, temp: 49, isNow: false, isPM: true, weatherIcon: weathers[2], rainChance: 65)
            SunView(hour: 5, setting: true)
            HourlyForecastView(hour: 6, temp: 47, isNow: false, isPM: true, weatherIcon: weathers[2], rainChance: 80)
            HourlyForecastView(hour: 7, temp: 46, isNow: false, isPM: true, weatherIcon: weathers[2], rainChance: 100)
            HourlyForecastView(hour: 8, temp: 46, isNow: false, isPM: true, weatherIcon: weathers[2], rainChance: 100)
            HourlyForecastView(hour: 9, temp: 47, isNow: false, isPM: true, weatherIcon: weathers[2], rainChance: 80)
            HourlyForecastView(hour: 10, temp: 47, isNow: false, isPM: true, weatherIcon: weathers[2], rainChance: 60)
            HourlyForecastView(hour: 11, temp: 48, isNow: false, isPM: true, weatherIcon: weathers[2], rainChance: 30)
            HourlyForecastView(hour: 12, temp: 41, isNow: false, isPM: false, weatherIcon: weathers[2], rainChance: 20)
            HourlyForecastView(hour: 1, temp: 40, isNow: false, isPM: false, weatherIcon: weathers[0], rainChance: 0)
            HourlyForecastView(hour: 2, temp: 40, isNow: false, isPM: false, weatherIcon: weathers[0], rainChance: 0)
            HourlyForecastView(hour: 3, temp: 39, isNow: false, isPM: false, weatherIcon: weathers[0], rainChance: 0)
            HourlyForecastView(hour: 4, temp: 40, isNow: false, isPM: false, weatherIcon: weathers[1], rainChance: 30)
            HourlyForecastView(hour: 5, temp: 41, isNow: false, isPM: false, weatherIcon: weathers[2], rainChance: 65)
            HourlyForecastView(hour: 6, temp: 42, isNow: false, isPM: false, weatherIcon: weathers[2], rainChance: 80)
            HourlyForecastView(hour: 7, temp: 46, isNow: false, isPM: false, weatherIcon: weathers[2], rainChance: 100)
            SunView(hour: 7, setting: false)
            HourlyForecastView(hour: 8, temp: 45, isNow: false, isPM: false, weatherIcon: weathers[2], rainChance: 100)
            HourlyForecastView(hour: 9, temp: 44, isNow: false, isPM: false, weatherIcon: weathers[2], rainChance: 80)
            HourlyForecastView(hour: 10, temp: 44, isNow: false, isPM: false, weatherIcon: weathers[2], rainChance: 60)
            HourlyForecastView(hour: 11, temp: 42, isNow: false, isPM: false, weatherIcon: weathers[2], rainChance: 30)
            HourlyForecastView(hour: 12, temp: 41, isNow: false, isPM: true, weatherIcon: weathers[2], rainChance: 20)
            
            
        }
        .padding()
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(style: StrokeStyle(lineWidth: 2)))
        .background(Color.gray.mix(with: .blue, by: 0.5))
    }
}

#Preview {
    ContentView()
}

