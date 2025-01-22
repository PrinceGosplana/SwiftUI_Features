//
//  TabViewStyleView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 22.01.2025.
//

import SwiftUI

struct TabViewStyleView: View {
    var body: some View {
        if #available(iOS 18.0, *) {
            TabView {
                Tab("Boat", systemImage: "sailboat") {
                    BoatView()
                }
                
                Tab("Wind", systemImage: "wind") {
                    WindView()
                }
                
                Tab("Sea", systemImage: "water.waves") {
                    SeaView()
                }
            }
            .background(.black)
            .tabViewStyle(.page)
        } else {
            // Fallback on earlier versions
        }
    }
}

struct BoatView: View {
    var body: some View {
        VStack {
            Image(systemName: "sailboat")
            Text("Boat")
        }
        .font(.largeTitle)
        .foregroundStyle(.white)
    }
}

struct WindView: View {
    var body: some View {
        VStack {
            Image(systemName: "wind")
            Text("Wind")
        }
        .font(.largeTitle)
        .foregroundStyle(.white)
    }
}

struct SeaView: View {
    var body: some View {
        VStack {
            Image(systemName: "water.waves")
            Text("Sea")
        }
        .font(.largeTitle)
        .foregroundStyle(.white)
    }
}
#Preview {
    TabViewStyleView()
}
