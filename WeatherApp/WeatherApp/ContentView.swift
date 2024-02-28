//
//  ContentView.swift
//  WeatherApp
//
//  Created by Saurav Kumar on 28/02/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var isNight = false
    var body: some View {
        ZStack {
            BackgroundView(isNight: $isNight)
            
            
            VStack {
                Text("Delhi")
                    .font(.system(size: 32, weight: .medium))
                    .foregroundStyle(.white)
                    .padding(20)
                
                Image(systemName: "cloud.sun.fill")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180, height: 180)
                Text("27")
                    .font(.system(size: 72, weight: .medium))
                    .foregroundStyle(.white)
                Spacer()
                VStack(spacing: 40) {
                    HStack(spacing: 22) {
                        VStack {
                            Text("Mon")
                            
                            Image(systemName: "cloud.sun.fill")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                            Text("27")
                        }
                        VStack {
                            Text("Tue")
                            
                            Image(systemName: "cloud.sun.fill")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                            Text("27")
                        }
                        VStack {
                            Text("Wed")
                            
                            Image(systemName: "cloud.sun.fill")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                            Text("27")
                        }
                        VStack {
                            Text("Thu")
                            
                            Image(systemName: "cloud.sun.fill")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                            Text("27")
                        }
                        VStack {
                            Text("Fri")
                            
                            Image(systemName: "cloud.sun.fill")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                            Text("27")
                        }
                        VStack {
                            Text("Sat")
                            
                            Image(systemName: "cloud.sun.fill")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                            Text("27")
                        }
                    }
                    
                    Button {
                        isNight.toggle()
                    } label: {
                        Text("Change Time Of Day")
                            .font(.system(size: 30, weight: .medium))
                            .foregroundStyle(.white)
                            .frame(width: 350, height: 50)
                            .background(.blue)
                            .clipShape(.capsule)
                    }
                    
                    
                }
                
                Spacer()
            }
            
        }
    }
}

#Preview {
    ContentView()
}

struct BackgroundView: View {
    @Binding var isNight: Bool

    var body: some View {
        LinearGradient(colors: [isNight ? .black : .blue, .white], startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .ignoresSafeArea()
    }
}
