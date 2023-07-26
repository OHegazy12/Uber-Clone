//
//  Double.swift
//  Uber Clone
//
//  Created by Omar Hegazy on 7/26/23.
//

import Foundation

extension Double {
    private var currencyFormatter: NumberFormatter {
            let formatter = NumberFormatter()
            formatter.usesGroupingSeparator = true
            formatter.numberStyle = .currency
            formatter.minimumFractionDigits = 2
            formatter.maximumFractionDigits = 2
            return formatter
        }
        
        func CurrencyConverter() -> String {
            return currencyFormatter.string(for: self) ?? "$0.00"
        }
}
