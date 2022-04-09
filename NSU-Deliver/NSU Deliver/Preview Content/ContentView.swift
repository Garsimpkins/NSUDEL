//
//  ContentView.swift
//  NSU Deliver
//
//  Created by Beredo, Raymond on 3/2/22.
//


import SwiftUI

struct HomeView: View {
    
    @State private var store = ""
    @State private var stores = ""
    @State private var wrongStore: Float = 0
    @State private var wrongStores: Float  = 0
    @State private var showingStoreScreen = false
    var body: some View {
 
           
            ZStack {
                Image(uiImage: #imageLiteral(resourceName: "NSU_logo_horiz_4c"))
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 390, height: 130)
                    .clipped()
                .frame(width: 390, height: 160)
                .position(x: 190, y: 113)
                
                Rectangle()
                    .fill(Color(#colorLiteral(red: 0.237951397895813, green: 0.7416666746139526, blue: 0.4998833239078522, alpha: 1)))
                .frame(width: 4200, height: 54)
                .position(x: 190,y: 20)
                //Order Now Background Card
                    Rectangle()
                    .fill(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 1)))
                .frame(width: 420, height: 95)
                    .position(x: 200, y: 237)
                
                
                //Spartan Legion Logo
                Image(uiImage: #imageLiteral(resourceName: "norfolk_state_spartans_logo_secondary_19991057"))
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 40, height: 50)
                    .clipped()
                .frame(width: 40, height: 50)
                .position(x: 325, y: 22)
                VStack {
                              
                    
                    //Order Now Text
                    Text("Order Now").font(.custom("Prompt Regular", size: 25)).multilineTextAlignment(.center) .position(x:90, y: 240).textFieldStyle(.roundedBorder)
                    
                //Reorder Background Card
                        Rectangle()
                        .fill(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 1)))
                    .frame(width: 420, height: 95)
                        .position(x: 200, y: 197)
                    
                    //Reorder Text
                        Text("Reorder").font(.custom("Prompt Regular", size: 25)).multilineTextAlignment(.leading) .position(x:75, y: 35)
                    
                    //Rewards Background Card
                        Rectangle()
                        .fill(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 1)))
                    .frame(width: 420, height: 95)
                        .position(x: 200, y: 15)
                    
                    //Rewards Text
                    Text("Rewards").font(.custom("Prompt Regular", size: 25)).multilineTextAlignment(.leading) .position(x:80, y: -150)
                        
                    }
                    //NSU DELIVER
                  Text("  NSU DELIVER").font(.custom("Prompt Regular", size: 36)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))) .position(x: 130, y: 28)

                                    
                                    Button("*") {
                                        StoreA(store: store, stores: stores)
                                        }
                                    .foregroundColor(.black)
                                    .frame(width: 10, height: 10)
                                    .position(x: 20, y: 240)
                                    .cornerRadius(0)
                        
                                    NavigationLink(destination: StoreView(), isActive: $showingStoreScreen) {
                                        EmptyView()
                                    }
                                }.navigationBarHidden(true)
           
        }
        
    func StoreA(store: String, stores: String) {
            if store.lowercased() == "" {
                wrongStore = 0
                if stores.lowercased() == "" {
                    wrongStores = 0
                    showingStoreScreen = true
                } else {
                    wrongStores = 2
                }
            } else {
                wrongStore = 2
            }
        }
    }

        
struct ContentView: View {
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
                Setting()
                    .tabItem {
                        Image(systemName: "gear")
                        Text("Settings")
                        
                    }
            }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()

    }
}

