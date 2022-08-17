//
//  ContentView.swift
//  SwiftUIConcepts_Mac
//
//  Created by gaoshenyu on 2022/8/14.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var journal = Journal()
    @State private var selectedEntry: JournalEntry?

    var body: some View {
        NavigationView {
            List(journal.entries, selection: $selectedEntry) { entry in
                NavigationLink {
                    JournalEntryView(journalEntry: entry)
                } label: {
                    JournalEntryListItem(journalEntry: entry)
                }
            }
            .navigationTitle("Journal")
            .toolbar {
                ToolbarItem {
                    Button {
                        journal.addSampleEntry()
                    } label: {
                        Image(systemName: "plus")
                    }

                }
            }
            Text("Select a journal entry")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
