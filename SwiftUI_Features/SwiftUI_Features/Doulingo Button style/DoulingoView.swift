//
//  DoulingoView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 25.08.2024.
//

import SwiftUI

struct DoulingoView: View {

    var body: some View {
        ZStack {
            Color.color4.ignoresSafeArea()
            VStack(spacing: 20) {
                Text("Section 1: Rookie")
                    .font(.title3)
                    .bold()
                    .frame(maxWidth: .infinity)
                    .foregroundStyle(.white)
                    .padding()
                    .background(Color.button)

                ForEach(0..<DoulingoModel.mock.count) { index in
                    let model = DoulingoModel.mock[index]

                    if index == DoulingoModel.mock.count / 2 {
                        HStack {
                            DEllipseButton(image: model.icon)
                                .frame(maxHeight: 90)
                                .frame(width: 80)
                                .padding()

                            Image(.duoowl)
                                .resizable()
                                .frame(width: 100, height: 80)
                                .aspectRatio(contentMode: .fit)
                                .padding(.leading, 30)
                        }
                    } else {
                        DEllipseButton(image: model.icon)
                            .offset(x: model.xOffset)
                            .frame(maxHeight: 70)
                            .padding()
                    }
                }

                rectaпgleButton()
                    .frame(maxHeight: .infinity)

                Spacer()
            }
        }
    }

    @ViewBuilder
    private func rectaпgleButton() -> some View {
        Button {

        } label: {
            Text("Continue")
                .fontWeight(.semibold)
                .foregroundStyle(Color.color4)
        }
        .buttonStyle(DepthButtonStyle(foregroundColor: .cyan, backgroundColor: .blue, cornerRadius: 16))
        .frame(width: 250, height: 50)
    }
}

#Preview {
    DoulingoView()
}
