//
//  BottomSheetView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 03.06.2024.
//

import SwiftUI

struct BottomSheetView: View {

    @State private var isShowingBottomSheet = false
    @State private var isShowingCustomBottomSheet = false

    var body: some View {
        NavigationStack {
            Image(systemName: "car")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .toolbar{
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                            isShowingBottomSheet.toggle()
                        } label: {
                            Image(systemName: "gear")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)

                        }
                    }

                    ToolbarItem(placement: .topBarLeading) {
                        Button {
                            isShowingCustomBottomSheet.toggle()
                        } label: {
                            Image(systemName: "gearshape")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)

                        }
                    }
                }
                .sheet(isPresented: $isShowingBottomSheet) {
                    Text("Look at me!")
                    // bottom sheet size
                        .presentationDetents([.fraction(0.2), .medium, .height(600)])
                }
                .sheet(isPresented: $isShowingCustomBottomSheet) {
                    Image(systemName: "car.circle.fill", variableValue: 0.2)
                        .symbolRenderingMode(.multicolor)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40, height: 40)
                    // bottom sheet size
//                        .presentationDetents([.smallDetent, .halfDetent])
                        .presentationDetents([.custom(MyDetails.self)])
                        .presentationCornerRadius(25)
                }
        }
    }
}
extension PresentationDetent {
    static let halfDetent = height(UIScreen.main.bounds.height / 2)
    static let smallDetent = height(90)
}

struct MyDetails: CustomPresentationDetent {
    static func height(in context: Context) -> CGFloat? {
        let font = UIFont.systemFont(ofSize: 18)
        let width = UIScreen.main.bounds.width - 32
        let offset: CGFloat = 40
        let result = min(100, 90)
        return CGFloat(result)
    }
}

#Preview {
    BottomSheetView()
}
