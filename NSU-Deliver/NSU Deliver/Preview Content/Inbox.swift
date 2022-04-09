//
//  Inbox.swift
//  NSU Deliver
//
//  Created by Beredo, Raymond on 3/3/22.
//

import SwiftUI

struct Inbox: View {
    var body: some View {

        ZStack {
        //NSU Banner Background
            Rectangle()
                .fill(Color(#colorLiteral(red: 0.237951397895813, green: 0.7416666746139526, blue: 0.4998833239078522, alpha: 1)))
            .frame(width: 440, height: 54)
            .position(x: 200,y: 29)

            //Inbox
            ZStack {
                Rectangle()
                .fill(Color(#colorLiteral(red: 0.9208333492279053, green: 0.9054861068725586, blue: 0.9054861068725586, alpha: 1)))
            }
            .frame(width: 440, height: 54)
            .position(x: 200,y: 83)
            
            //Inbox Text
            Text("Inbox").font(.custom("Prompt Regular", size: 24)).position(x: 200, y: 83)
            
            
            //Messages Tab
            ZStack {
            Rectangle()
                .fill(Color(#colorLiteral(red:0.9208333492279053, green: 0.9054861068725586, blue: 0.9054861068725586, alpha: 1)))
            Rectangle()
            .strokeBorder(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)), lineWidth: 1) }
            .frame(width: 220, height: 54)
            .position(x: 100,y: 137)
            
            //Messages Text
            Text("Messages").font(.custom("Prompt Regular", size: 24)).position(x: 85, y:137)
            
            //Notifications Tab
            ZStack {
            Rectangle()
                .fill(Color(#colorLiteral(red:0.9208333492279053, green: 0.9054861068725586, blue: 0.9054861068725586, alpha: 1)))
            Rectangle()
            .strokeBorder(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)), lineWidth: 1) }
            .frame(width: 220, height: 54)
            .position(x: 310,y: 137)
            
            //Notifications Text
            Text("Notifications").font(.custom("Prompt Regular", size: 24)).position(x: 300, y:137)
    
        //NSU DELIVER
        Text("  NSU DELIVER").font(.custom("Prompt Regular", size: 36)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))) .position(x: 130, y: 30)
    
   //NSU Banner Image
    Image(uiImage: #imageLiteral(resourceName: "norfolk_state_spartans_logo_secondary_19991057"))
        .resizable()
        .aspectRatio(contentMode: .fill)
        .frame(width: 41, height: 41)
        .clipped()
    .frame(width: 41, height: 41)
    .position(x: 325, y: 30)

        
        }
    }
}

struct Inbox_Previews: PreviewProvider {
    static var previews: some View {
        Inbox()
    }
}

struct InboxView: View {
    var body: some View {
    //Bottom Navigation Tabs
            TabView {
                HomeView ()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                
                Search_Screen(text: .constant(""))
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
                Inbox()
                    .tabItem {
                        Image(systemName: "message")
                        Text("Inbox")
                    }
                Text("Settings")
                    .tabItem {
                        Image(systemName: "gear")
                        Text("Settings")
                        
                    }
            }
            
    }
}

