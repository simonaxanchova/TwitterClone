//
//  ContentView.swift
//  TwitterClone
//
//  Created by Simona Anchova on 26.4.25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("TwitterLogo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30)
                .padding(.top, 15)
            Spacer()
            Text("See what's happening in the world")
                .font(.title)
                .fontWeight(.heavy)
                .padding(.trailing, 70)
                .frame(width: 330)
            Spacer()
            Button {
                print("Google Login")
            } label: {
                HStack {
                    Image("GoogleLogo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24)
                        .padding(.leading, 20)
                    Text("Sign in with Google")
                        .padding(.vertical, 15)
                        .padding(.trailing, 20)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                }
                .frame(width: 300, height: 50)
                .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color(.systemGray3), lineWidth: 1)
                )
                .background(Color.white)
                
            }
            Button {
                print("Apple Login")
            } label: {
                HStack {
                    Image("AppleLogo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24)
                        .padding(.leading, 20)
                    Text("Sign in with Apple")
                        .padding(.vertical, 15)
                        .padding(.trailing, 20)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                }
                .frame(width: 300, height: 50)
                .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color(.systemGray3), lineWidth: 1)
                )
                .background(Color.white)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
