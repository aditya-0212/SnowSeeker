//
//  ResortDetailsView.swift
//  SnowSeeker
//
//  Created by APPLE on 27/09/24.
//

import SwiftUI

struct ResortDetailsView: View {
//    var size: String {
//        ["Small", "Average", "Large"][resort.size - 1]
//    }
    var size: String {
        switch resort.size {
        case 1: "Small"
        case 2: "Average"
        default: "Large"
        }
    }
    var price: String {
        String(repeating: "$", count: resort.price)
    }
    let resort: Resort
    var body: some View {
        Group {
            VStack {
                Text("Size")
                    .font(.caption.bold())
                Text(size)
                    .font(.title3)
            }

            VStack {
                Text("Price")
                    .font(.caption.bold())
                Text(price)
                    .font(.title3)
            }
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    ResortDetailsView(resort: .example)
}
