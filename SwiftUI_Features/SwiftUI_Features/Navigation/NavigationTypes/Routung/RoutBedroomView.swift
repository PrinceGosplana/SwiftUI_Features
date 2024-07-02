//
//  RoutBedroomView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 02.07.2024.
//

import SwiftUI

struct RoutBedroomView: View {
    @EnvironmentObject var router: Router
    var ownerName: String

    var body: some View {
        VStack {
            Text("\(ownerName)'s Bedroom")
                .font(.system(size: 36, weight: .bold))
                .padding(.bottom, 12)
            Image(systemName: "bed.double.fill")
                .font(.system(size: 56))
                .foregroundColor(.accentColor)

            Button {
                router.navigateBack()
            } label: {
                Text("Back to **Livingroom**")
            }
            .padding(.top, 12)

            Button {
                router.navigateToRoot()
            } label: {
                Text("Pop to **Home**")
            }
            .padding(.top, 4)

        }
        .navigationBarBackButtonHidden()
        .padding()
    }
}

#Preview {
    RoutBedroomView(ownerName: "Test owner")
}
