//
//  AutomaticCountingView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 27.03.2024.
//

import SwiftUI

struct AutomaticCountingView: View {

    @State private var count = 1

    var body: some View {
        Button("Add") { count += 1 }
        Button("Remove") { count -= 1 }
        Text("^[\(count) Person](inflect: true)")
            .padding()
    }
}

#Preview {
    AutomaticCountingView()
}

//@Namespace private var nspace
//
//.matchedGeometryEffect(id: <#T##ID#>, in: <#T##SwiftUI.Namespace.ID#>, properties: <#T##SwiftUI.MatchedGeometryProperties#>, anchor: <#T##SwiftUI.UnitPoint#>, isSource: <#T##Bool#>)
