//
//  Date+Ext.swift
//  GitHubPet
//
//  Created by Artyom on 16.02.2024.
//

import Foundation

extension Date {
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
}
