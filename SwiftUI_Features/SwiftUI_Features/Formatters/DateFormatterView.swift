//
//  DateFormatterView.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 01.04.2024.
//

import SwiftUI

struct DateFormatterView: View {

    @State var measurementFormatter: MeasurementFormatter = {
        let formatter = MeasurementFormatter()
        formatter.locale = Locale(identifier: "en_EN")
        return formatter
    }()

    let measurement = Measurement(value: 1.2, unit: UnitLength.kilometers)
    let massMeasurement = Measurement(value: 69, unit: UnitMass.grams)


    @State var dateComponentsFormatter: DateComponentsFormatter = {
        let formatter = DateComponentsFormatter()
        formatter.unitsStyle = .full
        formatter.includesApproximationPhrase = true
        formatter.includesTimeRemainingPhrase = true
        formatter.allowedUnits = [.minute]
        return formatter
    }()

    @State var dateIntervalFormatter: DateIntervalFormatter = {
        let formatter = DateIntervalFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .none
        return formatter
    }()

    let startDate = Date()
    let endDate = Date(timeInterval: 86400, since: Date())


    @State var byteCountFormatter: ByteCountFormatter = {
        let formatter = ByteCountFormatter()
        formatter.countStyle = .file
        return formatter
    }()

    @State var personNameComponentsFormatter: PersonNameComponentsFormatter = {
       let formatter = PersonNameComponentsFormatter()
        formatter.locale = Locale(identifier: "ko_KR")
        return formatter
    }()

    @State var nameComponents: PersonNameComponents = {
        var components = PersonNameComponents()
        components.givenName = "Sean"
        components.familyName = "Allen"
        return components
    }()

    var body: some View {
        VStack(spacing: 10) {
            Text(dateComponentsFormatter.string(from: 300) ?? "")
                .font(.title)
                .foregroundStyle(.indigo)
            Text(dateIntervalFormatter.string(from: startDate, to: endDate))
                .foregroundStyle(.mint)
                .font(.title)
            Text(measurementFormatter.string(from: measurement))
                .font(.title)
                .foregroundStyle(.indigo)
            Text(measurementFormatter.string(from: massMeasurement.converted(to: .grams)))
                .font(.title)
                .foregroundStyle(.indigo)
            Text(byteCountFormatter.string(fromByteCount: 1_000_000_000))
                .font(.title)
                .foregroundStyle(.pink)
            Text(personNameComponentsFormatter.string(from: nameComponents))
                .font(.title)
                .foregroundStyle(.indigo)
        }
    }
}

#Preview {
    DateFormatterView()
}
