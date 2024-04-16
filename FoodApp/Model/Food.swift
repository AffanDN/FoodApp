//
//  Food.swift
//  FoodApp
//
//  Created by Macbook Pro on 16/04/24.
//

import Foundation

struct Food: Identifiable {
    // kenapa string ? dikarenakan akan diimport dari asset
    let id = UUID()
    let image: String
    let category: [String]
    let heading: String
    let chef: String
    let location: String
}

// DUMMY DATA
extension Food {
    static let foodData: [Food] = [
        Food(
            image: "carbonara",
            category: ["Dine In", " Take Away", " Delivery"],
            heading: "Indulge in Creamy Linguine Carbonara !",
            chef: "Geovanni Delizioso",
            location: "Restorante Bella Cucina"
        ),
        Food(
            image: "friedrice",
            category: ["Delivery"],
            heading: "Spicy Fried Rice With Sizzle Brief",
            chef: "Ibu Siti",
            location: "Warung Rasa Nusantara"
        ),
        Food(
            image: "mieayam",
            category: ["Take Away", " Delivery"],
            heading: "Savor The Irrestible Noodle !",
            chef: "Budi Santoso",
            location: "Warung Makan Mas Budi "
        ),
        Food(
            image: "salmonsteak",
            category: ["Dine In", " Take Away"],
            heading: "Grilled Citrus Salmon Steak",
            chef: "Ari Wijaya",
            location: "Seafood Delights Bistro"
        )
    ]
}
