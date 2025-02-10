//
//  ListItem.swift
//  HardCoreData
//
//  Created by Doanta  on 10/02/25.
//

import SwiftUI

struct ListItem: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Title")
                    .font(.headline)
                Text("Description")
            }
            Spacer()

            VStack {
                Text("Date")
            }
        }
        .padding()
        .background(.gray.opacity(0.3))
        .cornerRadius(10)
        .padding(.horizontal)

    }
}

#Preview {
    ListItem()
}
