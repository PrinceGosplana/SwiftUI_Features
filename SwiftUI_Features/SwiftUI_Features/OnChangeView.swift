//
//  OnChangeView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 09.03.2024.
//

import SwiftUI

struct OnChangeView: View {
    @State private var value: CGFloat = 0
    
    var body: some View {
        VStack {
         
            Button("Show View") {
                value = 20
            }
            /// Now you can initially fire the onChange modifier, and it will be fired when the view is first visible, thus eliminating the use of the onAppear modifier. Also, the onChange  modifier is giving the old and new values as well
            .onChange(of: value, initial: true) { oldValue, newValue in
                print(oldValue, newValue)
            }
        }
    }
}

#Preview {
    OnChangeView()
}
