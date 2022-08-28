//
//  TrainCars.swift
//  SwiftUIConcepts
//
//  Created by gaoshenyu on 2022/8/28.
//

import SwiftUI

struct TrainCars: View {
    @State private var longerTrain = true
    
    var body: some View {
        HStack {
            Spacer()
            VStack(alignment: .center) {
                Toggle("Long Train", isOn: $longerTrain)
                
                Text("Conditional:")
                HStack {
                    Image(systemName: "train.side.rear.car")
                    if longerTrain {
                        Image(systemName: "train.side.middle.car")
                    }
                    Image(systemName: "train.side.front.car")
                }
                Divider()
                
                Text("Opacity:")
                HStack {
                    Image(systemName: "train.side.rear.car")
                    Image(systemName: "train.side.middle.car")
                        .opacity(longerTrain ? 1 : 0)
                    Image(systemName: "train.side.front.car")
                }
                Divider()
                
                Text("Hidden:")
                HStack {
                    Image(systemName: "train.side.rear.car")
                    Image(systemName: "train.side.middle.car")
                        .hidden()
                    Image(systemName: "train.side.front.car")
                }
                Divider()
            }
            .padding()
            Spacer()
        }
    }
}

struct TrainCars_Previews: PreviewProvider {
    static var previews: some View {
        TrainCars()
    }
}
