//
//  FontCombiningModifiedText.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 22.11.2024.
//

import SwiftUI

struct FontCombiningModifiedText: View {
    var body: some View {
        VStack {
            Group {
                Text("You can ")
                + Text("format").bold()
                + Text (" different parts of your text by using the plus (+) symbol.")
            }
            
            Group {
                Text("Here is another ")
                + Text("example").foregroundStyle(.red).underline()
                + Text (" of how you might accomplish this. ")
                + Text("Notice").foregroundStyle(.purple).bold()
                + Text (" the use of the Group view to add padding and line limit to all the text ")
                + Text("as a whole.").bold().italic()
            }
            .font(.title)
            .padding(.horizontal)
        
            Group {
                Text("You can also ").font(.title).fontWeight(.light)
                + Text("combine")
                + Text(" different font weights ").fontWeight(.black)
                + Text("and different text styles!")
            }
            .font(.title)
            .fontWeight(.ultraLight)
            .padding(.horizontal)
        }
    }
}

#Preview {
    FontCombiningModifiedText()
}
