//
//  SlideMenuView.swift
//  TwitterClone
//
//  Created by Simona Anchova on 27.4.25.
//

import SwiftUI

struct SlideMenuView: View {
    
    //@State private var appearanceTheme = false
    //@Binding var showMenu : Bool
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0 ){
            
            VStack(alignment: .leading, spacing: 10){
                
                
                NavigationLink{
                    //ProfileView().toolbar(.hidden)
                    
                } label: {
                    Image("ProfileImage")
                        .resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .frame(width:55,height: 55)
                        .cornerRadius(99)
                }
                
                
                
                Text("Ryan Gosling")
                    .font(.title2.bold())
                
                Text("@ryangosling")
                    .font(.callout)
                    .foregroundStyle(Color.gray)
                
                HStack{
                    //following
                    Button{
                        
                    } label : {
                        Label{
                            Text("Following")
                                .foregroundStyle(Color.gray)
                        } icon: {
                            Text("497")
                                .fontWeight(.semibold)
                        }
                        
                    }
                    
                    //followers
                    Button{
                        
                    } label : {
                        Label{
                            Text("Followers")
                                .foregroundStyle(Color.gray)
                        } icon: {
                            Text("23M")
                                .fontWeight(.semibold)
                            
                            
                        }
                        
                    }
                    
                }
                .foregroundColor(.primary)
                .font(.subheadline)
                
            }
            .padding(.horizontal)
            .padding(.leading)
            
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .leading, spacing: 25){
                    //Tab buttons
                    TabButton(title: "Profile", image: "person", destination: ContentView())
                    
                    TabButton(title: "Bookmarks", image: "bookmark", destination: ContentView())
                    
                    TabButton(title: "Messages", image: "envelope", destination: ContentView())
                    
                    TabButton(title: "Discover", image: "number", destination: ContentView())
                    
                    TabButton(title: "Lists", image: "list.bullet.rectangle.portrait", destination: ContentView())
                    
                    TabButton(title: "Monetization", image: "dollarsign.circle", destination: ContentView())
                    
                    //twitter ads
                    Divider()
                    
                    TabButton(title: "Twitter Ads", image: "square.and.arrow.up", destination: ContentView())
                    
                }
                .padding()
                .padding(.leading)
                .padding(.top, 30)
                
                
                
            }
            VStack{
                Button{
                    //appearanceTheme.toggle()
                } label: {
                    //Image(systemName: appearanceTheme ? "moon" : "sun.min")
                      //  .imageScale(.large)
                        //.foregroundColor(.primary)
                }
            }
            .padding()
            .padding(.leading)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
            
            
        }
        .padding(.vertical)
        .frame(maxWidth: .infinity, alignment: .leading)
        .frame(width: getRect().width - 90)
        .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .background(
            Color.gray
                .opacity(0.03)
                .ignoresSafeArea(.container, edges: .vertical)
        )
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
    }
    
    @ViewBuilder
    func TabButton<Destination: View>(title: String, image: String, destination: Destination) -> some View {
        NavigationLink(destination: destination.toolbar(.hidden)) {
            HStack(spacing: 14) {
                Image(systemName: image)
                    .imageScale(.large)
                    .frame(width: 30)
                Text(title)
                    .fontWeight(.bold)
            }
            .foregroundColor(.primary)
            .frame(maxWidth: .infinity, alignment: .leading)
        }
   
    }


}

extension View {
    func getRect() -> CGRect{
        return UIScreen.main.bounds
    }
}

#Preview {
    SlideMenuView()
}
