//
//  PhotoGridView.swift
//  SwiftUI_Features
//
//  Created by OLEKSANDR ISAIEV on 18.10.2024.
//

import SwiftUI


struct PhotosView: View {
    @State private var detail: Int? = nil
    @State private var slowAnimations = false
    @Namespace private var dummyNS
    @Namespace private var namespace
    @GestureState private var offset: CGSize = .zero
    
    var body: some View {
        VStack {
            Toggle("Slow Animations", isOn: $slowAnimations)
            ZStack {
                photoGrid
                    .opacity(detail == nil ? 1 : 0)
                detailView
            }
            .animation(.default.speed(slowAnimations ? 0.2 : 1), value: detail)
        }
    }
    
    var detailGesture: some Gesture {
        let tap = TapGesture().onEnded {
            detail = nil
        }
        let drag = DragGesture().updating($offset) { value, state, _ in
            state = value.translation
        }
        
        return drag.simultaneously(with: tap)
    }
    
    @ViewBuilder
    var detailView: some View {
        if let d = detail {
            ZStack {
                TransitionReader { active in
                    Image("previewSample\(d)")
                        .resizable()
                        .mask {
                                Rectangle().aspectRatio(1, contentMode: active ? .fit : .fill)
                            }
                        .offset(offset)
                        .animation(.default, value: offset)
                        .matchedGeometryEffect(id: d, in: active ? namespace : dummyNS, isSource: false)
                        .aspectRatio(contentMode: .fit)
                        .gesture(detailGesture)
                }
            }
            .zIndex(2)
            .id(d)
            .transition(.modifier(active: TransitionActive(active: true), identity: TransitionActive(active: false)))
        }
    }
    
    var photoGrid: some View {
        ScrollView {
            LazyVGrid(columns: [.init(.adaptive(minimum: 100, maximum: .infinity), spacing: 3)], spacing: 3) {
                ForEach(1..<11) { ix in
                    Image("previewSample\(ix)")
                        .resizable()
                        .matchedGeometryEffect(id: ix, in: namespace)
                        .aspectRatio(contentMode: .fill)
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                        .clipped()
                        .aspectRatio(1, contentMode: .fit)
                        .contentShape(Rectangle())
                        .onTapGesture {
                            detail = ix
                        }
                }
            }
        }
    }
}

struct TransitionActive: ViewModifier {
    var active: Bool
    
    func body(content: Content) -> some View {
        content
            .environment(\.transitionIsActive, active)
    }
}

struct PhotoGridView: View {
    var body: some View {
        PhotosView()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct TransitionIsActiveKey: EnvironmentKey {
    static let defaultValue: Bool = false
}

extension EnvironmentValues {
    public var transitionIsActive: Bool {
        get { self[TransitionIsActiveKey.self] }
        set { self[TransitionIsActiveKey.self] = newValue }
    }
}

struct TransitionReader<Content: View>: View {
    var content: (Bool) -> Content
    @Environment(\.transitionIsActive) var active
    
    var body: some View {
        content(active)
    }
}

#Preview {
    PhotoGridView()
}
