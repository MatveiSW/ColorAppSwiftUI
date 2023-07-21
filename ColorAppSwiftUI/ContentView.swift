//
//  ContentView.swift
//  ColorAppSwiftUI
//
//  Created by Матвей Авдеев on 21.07.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var redSliderValue = Double.random(in: 0...255)
    @State private var greenSliderValue = Double.random(in: 0...255)
    @State private var blueSliderValue = Double.random(in: 0...255)
    var body: some View {
        VStack(spacing: 50) {
          RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color(
                    red: redSliderValue/255,
                    green: greenSliderValue/255,
                    blue: blueSliderValue/255
                )
                )
            
                .frame(width: 350, height: 150)
            VStack(spacing: 25) {
                SliderView(sliderValue: $redSliderValue)
                SliderView(sliderValue: $greenSliderValue)
                SliderView(sliderValue: $blueSliderValue)
            }
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct SliderView: View {
    @Binding var sliderValue: Double
    var body: some View {
        HStack {
            Text("\(lround(sliderValue))")
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .frame(width: 300)
        }
    }
}
