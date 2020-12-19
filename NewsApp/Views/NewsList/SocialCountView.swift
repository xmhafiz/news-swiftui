//
//  SocialCountView.swift
//  NewsApp
//
//  Created by Hafiz on 03/12/2020.
//

import SwiftUI

struct SocialCountView: View {
    @State var showingDetail = false
    @State var isLikes = false
    @State var likesCount = 534
    var likeButtonColor: Color {
        return isLikes ? .blue : Color("customBlack")
    }
    var body: some View {
        HStack(spacing: 24){
            Button(action: {
                isLikes.toggle()
                if isLikes {
                    likesCount += 1
                }
                else {
                    likesCount -= 1
                }
            }) {
                HStack(spacing: 4) {
                    Image(systemName: "heart.fill")
                        .frame(width: 24, height: 24)
                        .foregroundColor(Color.red.opacity(0.6))
                    Text("\(likesCount) Likes").font(.subheadline).foregroundColor(likeButtonColor)
                }
            }
            Button(action: {
                self.showingDetail.toggle()
            }) {
                HStack(spacing: 4) {
                    Image(systemName: "message.fill").frame(width: 24, height: 24).foregroundColor(Color.blue.opacity(0.6))
                    Text("1.4K Comments").font(.subheadline).foregroundColor(Color("customBlack"))
                }
            }
            .sheet(isPresented: $showingDetail) {
                CommentsView()
            }
        }
    }
}

struct SocialCountView_Previews: PreviewProvider {
    static var previews: some View {
        SocialCountView()
    }
}
