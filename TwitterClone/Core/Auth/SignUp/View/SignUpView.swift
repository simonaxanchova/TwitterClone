//
//  SignUpView.swift
//  TwitterClone
//
//  Created by Simona Anchova on 26.4.25.
//

import SwiftUI

struct SignUpView: View {
    
    //Dark mode
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationStack {
            VStack {
                TwitterLogo(frameWidth: 30, paddingTop: 15)
                Spacer()
                Text("See what's happening in the world right now")
                    .font(.title)
                    .fontWeight(.heavy)
                    .padding(.trailing, 70)
                    .frame(width: 330)
                Spacer()
                googleSignup(colorScheme: colorScheme)
                appleSignUp(colorScheme: colorScheme)
                orSeparator()
                createAccountButton()
                signUpPolicyText()
                Spacer()
                alreadyHaveAnAccount()
            }
        }
    }
}

#Preview {
    SignUpView()
}


struct googleSignup: View {
    
    let colorScheme: ColorScheme
    
    var body: some View {
        Button {
            print("Google login")
        } label: {
            HStack{
                Image("GoogleLogo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 24)
                    .padding(.leading, 20)
                Text("Sign up with Google")
                    .padding(.vertical, 15)
                    .padding(.trailing,20)
                    .fontWeight(.semibold)
                    .foregroundColor(colorScheme == .dark ? .white : .black)
            }
            .frame(width: 300,height: 50)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color(.systemGray3), lineWidth: 1)
            )
            .background(colorScheme == .dark ? Color.black : Color.white)
        }
    }
}

struct appleSignUp: View {
    
    let colorScheme: ColorScheme
    
    var body: some View {
        Button {
            print("Apple login")
        } label: {
            HStack{
                Image("AppleLogo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 24)
                    .padding(.leading, 20)
                Text("Sign up with Apple")
                    .padding(.vertical, 15)
                    .padding(.trailing,20)
                    .fontWeight(.semibold)
                    .foregroundColor(colorScheme == .dark ? .white : .black)
            }
            .frame(width: 300,height: 50)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color(.systemGray3), lineWidth: 1)
            )
            .background(colorScheme == .dark ? Color.black : Color.white)
        }
    }
}

struct orSeparator: View {
    
    var body: some View {
        
        HStack {
            Rectangle()
                .frame(width: (UIScreen.main.bounds.width) / 2 - 65, height: 0.7)
            Text("or").font(.footnote).fontWeight(.semibold)
            Rectangle()
                .frame(width: (UIScreen.main.bounds.width) / 2 - 65, height: 0.7)
        }.foregroundColor(.gray)
    }
}

struct createAccountButton: View {
    var body: some View {
        Button {
            print("Create account button")
        } label: {
            Text("Create account")
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .padding()
                .frame(width: (UIScreen.main.bounds.width) - 100, height: 50)
                .background(Color(UIColor(red: 29/255, green: 161/255, blue: 242/255, alpha: 1.0)))
                .cornerRadius(10)
            
        }
    }
}

struct signUpPolicyText: View {
    
    var body: some View {
        HStack {
            Text("By signing up, you agree to the ") +
            Text("Terms of Service ")
                .foregroundColor(.blue) +
            Text("and ") +
            Text("Privacy Policy ").foregroundColor(.blue) +
            Text("including ") +
            Text("Cookie use.").foregroundColor(.blue)
        }.font(.footnote)
            .frame(width: (UIScreen.main.bounds.width) - 100, height: 50)
    }
}


struct alreadyHaveAnAccount: View {
    var body: some View {
        HStack{
            Text("Have an account already?")
            NavigationLink{
                SignInView()
            } label: {
                Text("Log in")
                    .foregroundColor(Color(UIColor(red: 29/255, green: 161/255, blue: 242/255, alpha: 1.0)))
            }
          
            
        }.font(.subheadline)
    }
}
