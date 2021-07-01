//
//  DateToString.swift
//  MiniChallenge
//
//  Created by Djenifer Renata Pereira on 01/07/21.
//

import Foundation

extension Date {
    func toFormatDayMonth() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM"

        return formatter.string(from: self)
    }

    func toFormatWeekday_pt() -> String {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "pt")
        formatter.dateFormat = "EEEE"

        return formatter.string(from: self).capitalized
    }
}
