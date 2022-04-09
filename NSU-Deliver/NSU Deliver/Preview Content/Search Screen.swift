//
//  Search Screen.swift
//  NSU Deliver
//
//  Created by Beredo, Raymond on 3/3/22.
//

import SwiftUI

struct Search_Screen: View {
    
    @State private var isEditing = false
    @Binding var text: String
    var body: some View {
        
        ZStack {
        //NSU Banner Background
            Rectangle()
                .fill(Color(#colorLiteral(red: 0.237951397895813, green: 0.7416666746139526, blue: 0.4998833239078522, alpha: 1)))
            .frame(width: 440, height: 54)
            .position(x: 200,y: 29)
            
    
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

           //Restaurant Cards
            Group {
        //Chick-Fil-A Background Card
                ZStack {
            Rectangle()
            .fill(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 1)))
                   }
        .frame(width: 425, height: 95)
            .position(x: 200, y: 150)
            
            //Chick-Fil-A Order Text
             
                Text("Chick-Fil-A").font(.custom("Prompt Regular", size: 25)).multilineTextAlignment(.center) .position(x:90, y: 150) 
              
        ZStack {
        //Spartan Legion Background Card
                Rectangle()
                .fill(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 1)))
                 }
            .frame(width: 425, height: 95)
                    .position(x: 200, y: 250)
                
            
            //Spartan Legion Text
            Text("Spartan Legion").font(.custom("Prompt Regular", size: 25)).multilineTextAlignment(.leading) .position(x:115, y: 250)
            
            //Tropical Smoothie Background Card
                ZStack {
                Rectangle()
                .fill(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 1)))
               }
            .frame(width: 450, height: 95)
                .position(x: 200, y: 350)
            
            //Tropical Smoothie Text
                Text("Tropical Smoothie").font(.custom("Prompt Regular", size: 25)).multilineTextAlignment(.leading) .position(x:130, y: 350)
            
                
                //Tropical Smoothie Image
                Image(uiImage: #imageLiteral(resourceName: "1200x1200"))
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 63, height: 57)
                    .clipped()
                .frame(width: 63, height: 57)
                .position(x: 325, y: 350)
                
                //Chick-fil-A Image
                Image(uiImage: #imageLiteral(resourceName: "Chick-fil-A-Logo"))
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 63, height: 57)
                    .clipped()
                .frame(width: 63, height: 57)
                .position(x: 325, y: 150)
                
                //Spartan Legion Logo
                Image(uiImage: #imageLiteral(resourceName: "norfolk_state_spartans_logo_secondary_19991057"))
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 63, height: 57)
                    .clipped()
                .frame(width: 63, height: 57)
                .position(x: 325, y: 250)
                
                
                
            }
            //Search Bar
         
            HStack {
     
                TextField("Search ...", text: $text)
                    .padding(7)
                    .padding(.horizontal, 25)
                    .padding(.vertical, 5)
                    .background(Color(.systemGray6))
                
                    
                    .onTapGesture {
                        self.isEditing = true
                    }
                    .position(x: 205, y: 75)
                    
                    
     
                if isEditing {
                    Button(action: {
                        self.isEditing = false
                        self.text = ""
     
                    }) {
                        Text("Cancel")
                    }
                    .padding(.trailing, 10)
                    .transition(.move(edge: .trailing))
                }
}
        }
    }
struct Search_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Search_Screen(text: .constant(""))
    }
}
}


struct Search_ScreenView: View {
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
