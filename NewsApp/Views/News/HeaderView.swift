//
//  HeaderView.swift
//  NewsApp
//
//  Created by Hafiz on 03/12/2020.
//

import SwiftUI

struct HeaderView: View {
    let text: String
    var body: some View {
        HStack {
            Text(text).font(.headline).padding(24)
        }
        .frame(width: UIScreen.main.bounds.width, height: 36, alignment: .leading)
        .background(Color.white)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(text: "Lorem Ipsum")
    }
}
