//
//  NewPostForm.swift
//  Socialcademy
//
//  Created by andrew austin on 2/22/23.
//

import SwiftUI

struct NewPostForm: View {
    @State private var post = Post(title: "", content: "", authorName: "")
    @Environment(\.dismiss) private var dismiss
    
    typealias CreateAction = (Post) -> Void
     
    let createAction: CreateAction
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Title", text: $post.title)
                    TextField("Author Name", text: $post.authorName)
                }
                Section("Content") {
                    TextEditor(text: $post.content)
                        .multilineTextAlignment(.leading)
                }
                Button(action: createPost) {
                    Text("Create Post")
                }
                .font(.headline)
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .padding()
                .listRowBackground(Color.accentColor)
            }
            .onSubmit(createPost)
            .navigationTitle("New Post")
        }
    }
    
    private func createPost() {
        createAction(post)
        print("[NewPostForm] Creating new post...")
        dismiss()
    }
}

struct NewPostForm_Previews: PreviewProvider {
    static var previews: some View {
        NewPostForm(createAction: { _ in })
    }
}