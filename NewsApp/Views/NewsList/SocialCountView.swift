//
//  SocialCountView.swift
//  NewsApp
//
//  Created by Hafiz on 03/12/2020.
//

import SwiftUI

struct SocialCountView: View {
    var body: some View {
        HStack(spacing: 24){
            HStack(spacing: 4) {
                Image(systemName: "heart.fill")
                    .frame(width: 24, height: 24)
                    .foregroundColor(Color.red.opacity(0.6))
                Text("532 Likes").font(.subheadline)
            }
            HStack(spacing: 4) {
                Image(systemName: "message.fill").frame(width: 24, height: 24).foregroundColor(Color.blue.opacity(0.6))
                Text("1.4K Comments").font(.subheadline)
            }
        }
    }
}

struct SocialCountView_Previews: PreviewProvider {
    static var previews: some View {
        SocialCountView()
    }
}
