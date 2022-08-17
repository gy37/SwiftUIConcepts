//
//  JournalEntryListItem.swift
//  SwiftUIConcepts
//
//  Created by gaoshenyu on 2022/8/14.
//

import SwiftUI

struct JournalEntryListItem: View {
    let journalEntry: JournalEntry
    
    var body: some View {
        VStack(alignment: .leading) {
            DateView(date: journalEntry.createdDate)
            Text("\(journalEntry.text)")
                .lineLimit(2)
        }
    }
}

struct JournalEntryListItem_Previews: PreviewProvider {
    static var previews: some View {
        JournalEntryListItem(journalEntry: Journal().entries[0])
    }
}
