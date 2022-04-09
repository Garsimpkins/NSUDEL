//
//  chic.swift
//  NSU Deliver
//
//  Created by Simpkins, Garland L. on 4/6/22.
//


import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [Product(name: "Chicken Sandwich", image: "chickensandwich", price: 4),
                   Product(name: "Spicy Chicken Sandwich", image: "chickensandwich", price: 5),
                   Product(name: "Grilled Chicken Sandwich", image: "grilled chicken sandwich", price: 5),
                   Product(name: "Large Fries", image: "largefry", price: 3),
                   Product(name: "Medium Fries", image: "medfry", price: 2),
                   Product(name: "5 Count Nuggets", image: "nuggets", price: 4),
                   Product(name: "8 Count Nuggets", image: "nuggets", price: 5),
                   Product(name: "Lemonade", image: "lemonade", price: 4),
                   Product(name: "Carribean Jerk Wrap", image: "jerkwrap", price: 5),
                   Product(name: "Chipotle Chicken Club", image: "cclub", price: 5),
                   Product(name: "Chicken Pesto", image: "cpesto", price: 5),
                   Product(name: "Jetty Punch", image: "smoothie", price: 4),
                   Product(name: "Bahama Mama", image: "smoothie", price: 4),
                   Product(name: "Island Green", image: "smoothie", price: 4),
                   Product(name: "Blueberry Bliss", image: "smoothie", price: 4),
                   Product(name: "Mango Magic", image: "smoothie", price: 4),
                   Product(name: "Kiwi Quencher", image: "smoothie", price: 4),
                   Product(name: "Sunrise Sunset", image: "smoothie", price: 4),
                   Product(name: "Blimey Limey", image: "smoothie", price: 4),
                   Product(name: "Legion Burger", image: "Legionburger", price: 5),
                   Product(name: "Legion Fries", image: "Legionfry", price: 3)]


