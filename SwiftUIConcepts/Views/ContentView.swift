//
//  ContentView.swift
//  SwiftUIConcepts
//
//  Created by gaoshenyu on 2022/8/12.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var journal = Journal()
    
    var body: some View {
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            Text("Hello, world!")
//        }
//        .padding()
        
        NavigationView {
            List(journal.entries) { entry in
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
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
