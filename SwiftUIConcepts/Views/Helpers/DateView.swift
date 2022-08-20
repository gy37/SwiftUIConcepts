//
//  DateView.swift
//  SwiftUIConcepts
//
//  Created by gaoshenyu on 2022/8/14.
//

import SwiftUI

struct DateView: View {
    let date: Date
    
    private var weekday: String {
        date.formatted(Date.FormatStyle().weekday(.abbreviated))
    }
    
    private var day: String {
        date.formatted(Date.FormatStyle().day())
    }
    
    var body: some View {
        HStack {
            Text("\(weekday)")
                .font(.headline)
            Text("\(day)")
                .font(.headline)
        }
    }
}

struct DateView_Previews: PreviewProvider {
    static var previews: some View {
        DateView(date: Date())
    }
}
