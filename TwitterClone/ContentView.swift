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
            HStack {
                Rectangle()
                    .frame(width: (UIScreen.main.bounds.width / 2) - 65, height: 0.7)
                Text("or")
                    .font(.footnote).fontWeight(.light)
                Rectangle()
                    .frame(width: (UIScreen.main.bounds.width / 2) - 65, height: 0.7)
            }.foregroundColor(.gray)
            Button {
                print("Create account button")
            } label: {
                Text("Create account")
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: (UIScreen.main.bounds.width) - 100, height: 50)
                    .background(Color(UIColor(red: 29/255, green: 161/255, blue: 242/255, alpha: 1.0)))
                    .cornerRadius(15)
            }
            HStack{
                Text("By signing up, you agree to the ") +
                Text("Terms of Service ")
                    .foregroundColor(Color(UIColor(red: 29/255, green: 161/255, blue: 242/255, alpha: 1.0))) +
                Text("and ") +
                Text("Privacy Policy, ")
                    .foregroundColor(Color(UIColor(red: 29/255, green: 161/255, blue: 242/255, alpha: 1.0))) +
                Text("including ") +
                Text("Cookie Use.")
                    .foregroundColor(Color(UIColor(red: 29/255, green: 161/255, blue: 242/255, alpha: 1.0)))
            }.font(.footnote)
                .frame(width: (UIScreen.main.bounds.width) - 100, height: 50)
        }
    }
}

#Preview {
    ContentView()
}
