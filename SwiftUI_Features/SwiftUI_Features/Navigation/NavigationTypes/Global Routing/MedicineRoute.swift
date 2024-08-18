//
//  MedicineRoute.swift
//  SwiftUI_Features
//
//  Created by Oleksandr Isaiev on 17.08.2024.
//

import Foundation
enum MedicineRoute: Hashable {

    case patient(PatientRoute)
    case doctor(DoctorRoute)

    enum PatientRoute: Hashable {
        case list
        case create
        case detail//(Patient)
    }

    enum DoctorRoute: Hashable {
        case list
        case create
        case detail//(Doctor)
    }
}
