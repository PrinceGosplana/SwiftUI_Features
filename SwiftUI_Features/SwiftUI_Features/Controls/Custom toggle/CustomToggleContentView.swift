//
//  CustomToggleContentView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 07.09.2024.
//

import SwiftUI

struct CustomToggleContentView: View {
    @State private var isOn: Bool = false

    var body: some View {
        VStack {
            Text("Base SwiftUI Toggle with label hidden")
            Toggle(isOn: $isOn, label: {
                Text("Active")
            })
            .labelsHidden()

            Divider()

            Text("Toggle with CustomToggleStyle with hidden label")
            Toggle(isOn: $isOn, label: {
                Text("Active")
            })
            .toggleStyle(CustomToggleStyle(onImage: "heart.fill", onColor: .pink, offColor: .gray.opacity(0.3)))
            .labelsHidden()

            Divider()

            Text("Base SwiftUI Toggle")
            Toggle(isOn: $isOn, label: {
                Text("Active")
            })

            Divider()

            Text("Toggle with CustomToggleStyle")
            Toggle(isOn: $isOn, label: {
                Text("Active")
            })
            .toggleStyle(CustomToggleStyle(onImage: "star.fill", offImage: "bolt.fill", onColor: .orange, offColor: .gray))

            Divider()

            Text("Toggle with CheckMarkToggleStyle")
            Toggle(isOn: $isOn, label: {
                Text("Active")
            })
            .toggleStyle(CheckmarkToggleStyle())

            Divider()

            Text("Toggle with CheckMarkToggleStyle2 with hideable label")
            Toggle(isOn: $isOn, label: {
                Text("Active")
            })
            .toggleStyle(CheckmarkToggleStyle2())

            Spacer()
        }
        .padding()
    }
}

#Preview {
    CustomToggleContentView()
}
