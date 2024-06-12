//
//  NavigationBarBaseSettingsVeiw.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 28.03.2024.
//

import SwiftUI

struct NavigationBarBaseSettingsView: View {
    var body: some View {
        NavigationStack {
            Image(systemName: "car")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
            /// navigation settings
                .navigationTitle("🚗 Cars")
                .navigationBarTitleDisplayMode(.large)
                .toolbarBackground(.teal, for: .navigationBar)
                .toolbarBackground(.visible, for: .navigationBar)
                .toolbar {

                    Button("Edit") {

                    }
                    .foregroundStyle(.black)

                    Button {

                    } label: {
                        Image(systemName: "plus")
                    }
                    .foregroundStyle(.black)
                }
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        HStack {
                            Image(systemName: "car.2")
                            Text("Cars")
                                .font(.headline)
                        }
                    }
                }
        }
    }
}

#Preview {
    NavigationBarBaseSettingsView()
}
