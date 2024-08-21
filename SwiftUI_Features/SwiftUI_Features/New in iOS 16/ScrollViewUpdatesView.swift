//
//  ScrollViewUpdatesView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 21.08.2024.
//

import SwiftUI

struct ScrollViewUpdatesView: View {

    @State var disableScroll: Bool = false
    @State var text: String = ""

    var body: some View {
        ScrollView {
            VStack {
                TextField("Type", text: $text)
                ForEach(1...20, id: \.self) { _ in
                    Rectangle()
                        .fill(.cyan)
                        .frame(height: 200)
                }
            }
            .padding()
        }
        // Scroll to hide keyboard
        .scrollDismissesKeyboard(.immediately)
        .disabled(disableScroll)
//        .onTapGesture {
//            disableScroll.toggle()
//        }
    }
}

#Preview {
    ScrollViewUpdatesView()
}
