//
//  PostViewModel.swift
//  TwitterClone
//
//  Created by Simona Anchova on 29.4.25.
//

import SwiftUI

struct PostViewModel: View {
    let post : PostModel
    
    var body: some View {
        HStack(alignment: .top, spacing: 10) {
            AsyncImage(url: URL(string: "https://i.pravatar.cc/48")) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                        .frame(width: 48, height: 48)
                        .background(Color.gray.opacity(0.2))
                        .clipShape(Circle())

                case .success(let image):
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 48, height: 48)
                        .clipShape(Circle())

                case .failure(_):
                    Image(systemName: "person.crop.circle.fill")
                        .resizable()
                        .foregroundColor(.gray)
                        .frame(width: 48, height: 48)

                @unknown default:
                    EmptyView()
                }
            }.offset(x: 10)

            
            //Post information
            VStack(spacing: 5) {
                
                //post author information
                HStack {
                    Text(post.author.fullName).fontWeight(.bold)
                    HStack(spacing: 2) {
                        //post author username
                        Text("@" + post.author.username)
                        Text("•")
                        Text(post.relativeTimestamp())
                    }.foregroundStyle(.secondary).font(.footnote)
                    
                    Spacer()
                    Button {
                        
                    } label: {
                        Image(systemName: "elipsis").tint(.secondary)
                    }
                }
                
                //post description
                HStack {
                    Text(post.content).foregroundStyle(.primary)
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)

                
                //post actions
                HStack(spacing: 20) {
                    //comments button
                    Button {
                        
                    } label: {
                        Label(String(post.comments.count), systemImage: "bubble")
                    }
                    
                    //retweets button
                    Button {
                        
                    } label: {
                        Label(String(post.retweets.count), systemImage: "arrow.2.squarepath")
                    }
                    
                    //views
                    Button {
                        
                    } label: {
                        Label(String(post.views), systemImage: "chart.bar.fill")
                    }
                }
                .foregroundStyle(.secondary)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.callout)
                
            }.offset(x: 20)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
}


//#Preview {
//    PostViewModel()
//}
