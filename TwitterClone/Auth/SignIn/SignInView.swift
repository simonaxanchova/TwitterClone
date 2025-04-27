//
//  SignInView.swift
//  TwitterClone
//
//  Created by Simona Anchova on 27.4.25.
//

import SwiftUI

struct SignInView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 10) {
                TwitterLogo(frameWidth: 30, paddingTop: 15)
                Spacer()
                HeroText()
                googleSignup(colorScheme: colorScheme)
                appleSignUp(colorScheme: colorScheme)
                orSeparator()
                LoginInputs(email: $email, password: $password)
                LoginButton()
                Spacer()
                FooterText()
                
            }
        }
    }
}

#Preview {
    SignInView()
}


struct HeroText: View {
    
    var body: some View {
        Text("Sign in to Twitter")
            .font(.title)
            .fontWeight(.heavy)
            .padding(.bottom, 15)
            .padding(.trailing, 70)
    }
}


struct LoginInputs: View {
    
    @Binding var email : String
    @Binding var password : String
    
    var body: some View {
        VStack {
            TextField("Phone, email or username", text: $email)
                .padding()
                .frame(width: 300)
                .fontWeight(.semibold)
                .overlay(RoundedRectangle(cornerRadius: 15)
                    .stroke(Color(.systemGray3), lineWidth: 1)
                )
            SecureField("Enter your password", text: $password)
                .padding()
                .frame(width: 300)
                .fontWeight(.semibold)
                .overlay(RoundedRectangle(cornerRadius: 15)
                    .stroke(Color(.systemGray3), lineWidth: 1))
        }
    }
}


struct LoginButton: View {
    
    var body: some View {
        NavigationLink {
            
        } label: {
            Text("Log in")
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .padding()
                .frame(width: (UIScreen.main.bounds.width) - 100, height: 50)
                .background(Color(UIColor(red: 29/255, green: 161/255, blue: 242/255, alpha: 1.0)))
                .cornerRadius(15)
                .padding()
        }
    }
}

struct FooterText: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        HStack {
            Text("Don't have an account?")
            Button("Sign up") {
                presentationMode.wrappedValue.dismiss()
            }
            .foregroundColor(Color(UIColor(red: 29/255, green: 161/255, blue: 242/255, alpha: 1.0)))
        }
    }
}
