//
//  UserPage.swift
//  a
//
//  Created by KWOK LAM on 7/31/23.
//

import SwiftUI

struct UserPage: View {
    let value: Int
    let title: String
    var body: some View {
        VStack{
            Text("\(title)")
                .fontWeight(.light)
                .font(.subheadline)
            Text("\(value)")

        }
    }
}

struct UserPage_Previews: PreviewProvider {
    static var previews: some View {
        UserPage(value:1, title: "Following")
    }
}
