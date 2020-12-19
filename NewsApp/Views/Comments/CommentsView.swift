//
//  CommentsView.swift
//  NewsApp
//
//  Created by Hafiz on 19/12/2020.
//

import SwiftUI

struct CommentsView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    let comments = CommentsStore.shared.getAll()
    var body: some View {
        NavigationView {
            ContainerView() {
                ForEach (comments) { comment in
                    CommentView(comment: comment)
                }
            }
            .navigationBarTitle("Comments")
            .navigationBarItems(leading: Button(action : {
                self.mode.wrappedValue.dismiss()
            }){
                Image(systemName: "xmark")
            })
        }
    }
}

struct CommentsView_Previews: PreviewProvider {
    static var previews: some View {
        CommentsView()
    }
}

struct ContainerView<Content: View>: View {
    var content: () -> Content
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(content: content).padding(.top, 24)
        }
    }
}

struct CommentTextView: View {
    let comment: Comment
    var body: some View {
        VStack(alignment: .leading, spacing: 8.0, content: {
            HStack(spacing: 8.0) {
                Text(comment.userName).font(.headline).lineLimit(2)
                Spacer()
                Text(comment.dateString).lineLimit(4).font(.footnote).foregroundColor(.gray)
            }
            Text(comment.comment).lineLimit(4).font(.subheadline)
            
        })
        .padding(16.0)
    }
}

struct CommentView: View {
    let comment: Comment
    var body: some View {
        HStack(alignment: .top, spacing: 12.0) {
            Image(comment.personImageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 54, height: 54)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            CommentTextView(comment: comment)
                .background(Color(UIColor.systemGray.withAlphaComponent(0.1)))
                .cornerRadius(16.0)
            Spacer()
        }
        .padding(.leading, 16)
    }
}
