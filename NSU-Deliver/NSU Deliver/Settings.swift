//
//  Settings.swift
//  NSU Deliver
//
//  Created by Beredo, Raymond on 3/22/22.
//

import SwiftUI

struct Setting: View {
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
            
            .frame(width: 440, height: 162)
            .position(x: 200,y: 140)
            
            //Top Text
            Text("Garland Simpkins").font(.custom("Prompt Regular", size: 20)).position(x:90, y: 83)
            Text("Norfolk State University").font(.custom("Prompt Regular", size: 20)).position(x: 135, y: 120)
            Text("Student ID: 0000000").font(.custom("Prompt Regular", size: 20)).position(x: 120, y: 160)
            //picture black
            Rectangle()
                .fill(Color(#colorLiteral(red: 0.11249999701976776, green: 0.00937499850988388, blue: 0.00937499850988388, alpha: 1)))
            .frame(width: 84, height: 84)
            .position(x: 330, y: 125)
         
            }
            
            
        //Payment Methods
            Rectangle()
            .fill(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 1)))
        .frame(width: 420, height: 95)
            .position(x: 200, y: 275)
            
        //Support
            Rectangle()
            .fill(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 1)))
        .frame(width: 420, height: 95)
            .position(x: 200, y: 375)
        
        //Payment Methods Text
            Text("Payment Methods").font(.custom("Prompt Regular", size: 25)).multilineTextAlignment(.leading) .position(x:130, y: 275)
        //Support Text
            Text("Support").font(.custom("Prompt Regular", size: 25)).multilineTextAlignment(.leading) .position(x:70, y: 375)
            
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

    //NSU DELIVER
        
        
        }
    }
}

struct Setting_Previews: PreviewProvider {
    static var previews: some View {
        Setting()
    }
}

struct SettingView: View {
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
