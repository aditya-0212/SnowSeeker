//
//  TransparentLayoutView.swift
//  SnowSeeker
//
//  Created by APPLE on 24/09/24.
//

import SwiftUI

struct UserView: View {
    var body: some View {
        Group {
            Text("Name: Paul")
            Text("Country: England")
            Text("Pets: Luna and Arya")
        }
        .font(.title)
    }
}

struct TransparentLayoutView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @State private var layoutVertically = false
    
    var body: some View {
//        Button {
//                    layoutVertically.toggle()
//                } label: {
//                    if layoutVertically {
//                        VStack {
//                            UserView()
//                        }
//                    } else {
//                        HStack {
//                            UserView()
//                        }
//                    }
//                }
//        
//        if horizontalSizeClass == .compact {
//                   VStack {
//                       UserView()
//                   }
//               } else {
//                   HStack {
//                       UserView()
//                   }
//               }
        if horizontalSizeClass == .compact {
            VStack(content: UserView.init)
        } else {
            HStack(content: UserView.init)
        }
//        ViewThatFits {
//            Rectangle()
//                .frame(width: 500, height: 200)
//
//            Circle()
//                .frame(width: 200, height: 200)
//        }
       
    }
}

#Preview {
    TransparentLayoutView()
}
