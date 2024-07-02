//
//  RoutHomeView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 02.07.2024.
//

import SwiftUI

struct RoutHomeView: View {
    @EnvironmentObject var router: Router

        var body: some View {
            VStack {
                Image(systemName: "house.fill")
                    .font(.system(size: 56))
                    .foregroundColor(.accentColor)
                Text("Home")
                    .font(.system(size: 24))

                Button {
                    router.navigate(to: .livingroom)
                } label: {
                    Text("Go to Livingroom")
                }
                .padding(.top, 12)

            }
            .padding()
        }
}

#Preview {
    RoutHomeView()
}
