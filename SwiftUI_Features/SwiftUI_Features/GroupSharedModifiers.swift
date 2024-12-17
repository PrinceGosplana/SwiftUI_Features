//
//  GroupSharedModifiers.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 17.12.2024.
//

import SwiftUI

struct GroupSharedModifiers: View {
    var body: some View {
        Group {
            Image(systemName: "leaf.arrow.circlepath")
                .font(.largeTitle)
                .padding()
            Text("Please Recycle")
        }
        .padding()
        .background(Color.blue)
        .foregroundStyle(.white)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        
        Text("Notice the difference between these two:")
        
        VStack {
            Image(systemName: "leaf.arrow.circlepath")
                .font(.largeTitle)
                .padding()
            Text("Please Recycle")
        }
        .padding()
        .background(Color.blue)
        .foregroundStyle(.white)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        
        Text("The modifiers are applied to child views in Groups INDIVIDUALLY.")
    }
}

#Preview {
    GroupSharedModifiers()
}
