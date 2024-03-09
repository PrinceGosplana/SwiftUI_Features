//
//  ObservBindableView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 09.03.2024.
//

import SwiftData
import SwiftUI

/// A new way to create an observable object in SwiftUI
struct ObservBindableView: View {
    @Bindable var user: User = .init()
    
    var body: some View {
        VStack {
            TextField("Name", text: $user.name)
        }
        .padding()
    }
}

#Preview {
    ObservBindableView()
}

@Observable
class User {
    var name: String = ""
    var email: String = ""
}
