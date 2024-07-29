//
//  EitherExampleView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 26.07.2024.
//

import SwiftUI

struct Movie: Identifiable {
    let id = UUID()
}

struct Advertisement: Identifiable {
    let id = UUID()
}

struct EitherExampleView: View {

    @State var content: [Either<Movie, Advertisement>]

    var body: some View {
        List(content) { element in
            switch element {
            case .left:
                RoundedRectangle(cornerRadius: 20)
                    .fill(.mint)
                    .frame(maxWidth: .infinity, minHeight: 40)
            case .right:
                RoundedRectangle(cornerRadius: 20)
                    .fill(.yellow)
                    .frame(maxWidth: .infinity, minHeight: 40)
            }
        }
        .listStyle(.automatic)
        .onAppear { fetch() }
    }

    private func fetch() {
        let movie = Movie()
        let advertisement = Advertisement()
        content.removeAll()

        content.append(.left(movie))
        content.append(.left(movie))
        content.append(.left(movie))
        content.append(.right(advertisement))
        content.append(.left(movie))
        content.append(.right(advertisement))
    }
}

#Preview {
    EitherExampleView(content: [.right(Advertisement())])
}

enum Either<Left, Right> {
    case left(Left)
    case right(Right)
}

extension Either: Identifiable where Left: Identifiable, Right: Identifiable, Left.ID == Right.ID {
    var id: Left.ID {
        switch self {
        case .left(let left):
            return left.id
        case .right(let right):
            return right.id
        }
    }
}
