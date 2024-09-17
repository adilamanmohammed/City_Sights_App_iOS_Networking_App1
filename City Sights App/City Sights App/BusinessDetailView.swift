//
//  BusinessDetailView.swift
//  City Sights App
//
//  Created by Adil Aman Mohammed on 9/17/24.
//

import SwiftUI

struct BusinessDetailView: View {
    
    var business: Business?
    
    var body: some View {
        Text(business?.name ?? "")
    }
}

#Preview {
    BusinessDetailView()
}
