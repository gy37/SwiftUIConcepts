//
//  CaptionedPhoto.swift
//  SwiftUIConcepts
//
//  Created by gaoshenyu on 2022/8/20.
//

import SwiftUI

struct CaptionedPhoto: View {
    let assetName: String
    let captionText: String
    
    var body: some View {
        Image(assetName)
            .resizable()
            .scaledToFit()
            .overlay(alignment: .bottom) {
                CaptionText(text: captionText)
            }
            .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
            .padding()
    }
}

struct CaptionText: View {
    let text: String
    var body: some View {
        Text(text)
            .padding()
            .background(Color("TextContrast").opacity(0.75),
                        in: RoundedRectangle(cornerRadius: 10.0, style: .continuous))
            .padding()
    }
}

struct CaptionedPhoto_Previews: PreviewProvider {
    static var previews: some View {
        CaptionedPhoto(assetName: "bg", captionText: "This photo is wider than it is tall.")
    }
}
