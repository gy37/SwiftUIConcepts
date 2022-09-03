//
//  EventTile.swift
//  SwiftUIConcepts
//
//  Created by gaoshenyu on 2022/9/3.
//

import SwiftUI

struct EventTile: View {
    let event: Event
    let stripeHeight = 15.0
    var body: some View {
        HStack(alignment: .firstTextBaseline) {
            Image(systemName: event.symbol)
                .font(.title)
            VStack(alignment: .leading) {
                Text(event.title)
                    .font(.title)
                Text(event.date,
                     format: Date.FormatStyle()
                        .day(.defaultDigits)
                        .month(.abbreviated))
                Text(event.location)
            }
        }
        .padding()
        .padding(.top, stripeHeight)
        .background {
            ZStack(alignment: .top) {
                Rectangle()
                    .opacity(0.3)
                Rectangle()
                    .frame(maxHeight: stripeHeight)
            }
            .foregroundColor(.teal)
        }
        .clipShape(RoundedRectangle(cornerRadius: stripeHeight, style: .continuous))
    }
}

struct EventTile_Previews: PreviewProvider {
    static var previews: some View {
        EventTile(event: Event.default)
    }
}
