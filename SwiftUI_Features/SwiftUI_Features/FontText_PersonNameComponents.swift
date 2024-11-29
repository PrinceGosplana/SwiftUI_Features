//
//  FontText_PersonNameComponents.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 29.11.2024.
//

import SwiftUI

struct FontText_PersonNameComponents: View {
    @State private var name = PersonNameComponents(
        namePrefix: "Dr.",
        givenName: "Jaqueline",
        middleName: "Fernanda",
        familyName: "Cruz",
        nameSuffix: "EdD",
        nickname: "Jaque"
    )
    var body: some View {
        VStack(spacing: 20) {
            //    If the type is a name, you can format it to show the name in different ways
            
            Text(name, format: .name(style: .abbreviated))
            Text(name, format: .name(style: .short))
            Text(name, format: .name(style: .medium))
            Text(name, format: .name(style: .long))
                .lineLimit(1)
                .minimumScaleFactor(0.9)
        }
        .font(.title)
    }
}

#Preview {
    FontText_PersonNameComponents()
}
