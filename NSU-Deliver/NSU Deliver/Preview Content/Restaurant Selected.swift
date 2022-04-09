//
//  Restaurant Selected.swift
//  NSU Deliver
//
//  Created by Beredo, Raymond on 3/3/22.
//

import SwiftUI

struct Restaurant_Selected: View {
    var body: some View {
        ZStack {
        //NSU Banner Background
            Rectangle()
            .fill(Color(#colorLiteral(red: 0.237951397895813, green: 0.7416666746139526, blue: 0.4998833239078522, alpha: 1)))
            .frame(width: 400, height: 54)
            .position(x: 190,y: 29)
            Group {
            //Gray Cards
            ZStack {
                //Order Now Background Card
                    Rectangle()
                    .fill(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 1)))
                Rectangle()
                .strokeBorder(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)), lineWidth: 2) }
                .frame(width: 400, height: 100)
                    .position(x: 190, y: 105)
                    
                    //Restaurant Text
                Text("").font(.custom("Prompt Regular", size: 25)).multilineTextAlignment(.center) .position(x:90, y: 240)
            
            //Food tab
            ZStack {
                //Order Now Background Card
                    Rectangle()
                    .fill(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 1)))
                Rectangle()
                .strokeBorder(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)), lineWidth: 2) }
                .frame(width: 100, height: 50)
                    .position(x: 50, y: 180)
                    
                    //Food Text
                Text("Food").font(.custom("Prompt Regular", size: 18)).multilineTextAlignment(.center) .position(x:50, y: 180)
            //Beverages tab
            ZStack {
                //Order Now Background Card
                    Rectangle()
                    .fill(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 1)))
                Rectangle()
                .strokeBorder(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)), lineWidth: 2) }
                .frame(width: 100, height: 50)
                    .position(x: 150, y: 180)
                    
                    //Food Text
                Text("Beverages").font(.custom("Prompt Regular", size: 18)).multilineTextAlignment(.center) .position(x:150, y: 180)
            //Other tab
            ZStack {
                //Order Now Background Card
                    Rectangle()
                    .fill(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 1)))
                Rectangle()
                .strokeBorder(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)), lineWidth: 2) }
                .frame(width: 100, height: 50)
                    .position(x: 250, y: 180)
                    
                    //Other Text
                Text("Other").font(.custom("Prompt Regular", size: 18)).multilineTextAlignment(.center) .position(x:250, y: 180)
            }
            
            
            
            
            
    
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

struct Restaurant_Selected_Previews: PreviewProvider {
    static var previews: some View {
        Restaurant_Selected()
    }
}
