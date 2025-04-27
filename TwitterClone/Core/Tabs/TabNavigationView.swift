//
//  TabNavigationView.swift
//  TwitterClone
//
//  Created by Simona Anchova on 27.4.25.
//
import SwiftUI

struct TabNavigationView: View {
    
    @State var showMenu : Bool = false
    
    //offsets
    @State var offset : CGFloat = 0
    @State var lastStoredOffset : CGFloat = 0
    
    var body: some View {
        let sideBarWidth : CGFloat = 250
        
        
        Text("TabNavigationView")
    }
}

#Preview {
    TabNavigationView()
}
