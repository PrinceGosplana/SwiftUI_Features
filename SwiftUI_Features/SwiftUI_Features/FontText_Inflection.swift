//
//  FontText_Inflection.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 29.11.2024.
//

import SwiftUI

struct FontText_Inflection: View {
    @State private var count = 1
    var body: some View {
        //    In grammar, “inflect” means to change the
        //    form of a word without changing its meaning.
        //    In these examples, the word form may
        //    change depending on quantity.
        Form {
            Stepper("Count", value: $count, step: 1).bold()
            Text("^[\(count) Year](inflect: true)")
            Text("^[\(count) Child](inflect: true)")
            Text("^[\(count) Man](inflect: true)")
            Text("^[\(count) Woman](inflect: true)")
            Text("^[\(count) Person](inflect: true)")
            Text("^[\(count) Moose](inflect: true)")
        }
        .font(.title)
    }
}

#Preview {
    FontText_Inflection()
}
