//
//  TextHelper.swift
//  City Sights App
//
//  Created by Adil Aman Mohammed on 9/16/24.
//

import Foundation

struct TextHelper {
    static func distanceAwayText(meters: Double) -> String {
        if meters > 1000 {
            return "\(Int(round(meters/1000))) km away"
        }
        else
        {
            return "\(Int(round(meters))) m away"
        }
    }
}

struct TextHelperForRating {
    static func RatingText(rating: Double) -> String {
        // Check if the rating is a whole number
        if rating.truncatingRemainder(dividingBy: 1) == 0 {
            return "\(Int(rating))"
        }
        
        // Round to the nearest 0.5
        let roundedRating = (round(rating * 2) / 2)
        return String(format: "%.1f", roundedRating)
    }
}




