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
