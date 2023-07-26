//
//  RideType.swift
//  Uber Clone
//
//  Created by Omar Hegazy on 7/25/23.
//

import Foundation

enum RideType: Int, CaseIterable, Identifiable {
    case uberX
    case uberBlack
    case uberXL
    case uberShare
    
    var id: Int { return rawValue }
    
    var description: String {
        switch self {
        case .uberX: return "UberX"
        case .uberBlack: return "Uber Black"
        case .uberXL: return "UberXL"
        case .uberShare: return "Uber Share"
        }
    }
    
    var imageName: String {
        switch self {
        case .uberX: return "uber-x"
        case .uberBlack: return "uber-black"
        case .uberXL: return "uber-xl"
        case .uberShare: return "uber-share"
        }
    }
    
    var baseFare: Double {
        switch self {
        case .uberX: return 5
        case .uberBlack: return 10
        case .uberXL: return 20
        case .uberShare: return 15
        }
    }
    
    func computePrice(for distanceInMeters: Double) -> Double {
        let distanceInMiles = distanceInMeters / 1600
        
        switch self {
        case .uberX: return distanceInMiles * 1.25 + baseFare
        case .uberBlack: return distanceInMiles * 1.5 + baseFare
        case .uberXL: return distanceInMiles * 2 + baseFare
        case .uberShare: return distanceInMiles * 1.75 + baseFare
        }
    }
    
}
