//
//  AdaptableView.swift
//  SwiftUIConcepts
//
//  Created by gaoshenyu on 2022/8/19.
//

import SwiftUI

struct AdaptableView: View {
    @State private var choice = Choices.choice1;
    
    enum Choices: String, CaseIterable, Identifiable {
        case choice1 = "Choice1"
        case choice2 = "Choice2"
        case choice3 = "Choice3"
        
        var id: String {
            self.rawValue
        }
    }
    
    var body: some View {
        VStack {
            Text("Hamlet")
                .font(.largeTitle)
            Text("by William Shakespeare")
                .font(.caption)
                .italic()
            
            HStack {
                Image(systemName: "folder.badge.plus")
                Image(systemName: "heart.circle.fill")
                Image(systemName: "alarm")
            }
            .symbolRenderingMode(.multicolor)
            .font(.largeTitle)
            
            Label("Favorite Books", systemImage: "books.vertical")
                .labelStyle(.titleAndIcon)
                .font(.largeTitle)
            
            HStack {
                Picker("Choice", selection: $choice) {
                    ForEach(Choices.allCases) { item in
                        Text(item.rawValue)
                            .tag(item)
                    }
                }
                .pickerStyle(.automatic)
                Button("OK") {
                    print("\(choice)")
                }
            }
//                .controlSize(.mini)
            .controlSize(.large)
            
            Image("bg")
                .resizable()
                .scaledToFit()
            
            HStack {
                Rectangle()
                    .foregroundColor(.blue)
                Circle()
                    .foregroundColor(.orange)
                RoundedRectangle(cornerRadius: 15, style: .continuous)
                    .foregroundColor(.green)
            }
            .aspectRatio(3, contentMode: .fit)
        }
    }
}

struct AdaptableView_Previews: PreviewProvider {
    static var previews: some View {
        AdaptableView()
    }
}
