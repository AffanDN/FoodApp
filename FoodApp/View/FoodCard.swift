//
//  FoodCard.swift
//  FoodApp
//
//  Created by Macbook Pro on 16/04/24.
//

import SwiftUI

struct FoodCard: View {
    var food: Food
    var body: some View {
        VStack {
            ImageHeader(data: food)
            FoodHeader(data: food)
                .padding([.top, .horizontal, .bottom])
        }
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .overlay {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.sRGB, red: 149/255, green: 165/255, blue: 166/255, opacity: 2.0), lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    FoodCard(food: Food.foodData[3]).padding()
}

// ZTACK HEADER
struct ImageHeader: View {
    var data: Food
    var body: some View {
        ZStack(alignment: .topLeading) {
            Image(data.image)
                .resizable()
                .scaledToFill()
                .frame(height: 300)
                .clipped()
            
            HStack {
                Image(systemName: "mappin.and.ellipse.circle.fill")
                Text(data.location)
            }
            .foregroundStyle(.white)
            .padding(10)
            .background(
                UnevenRoundedRectangle(cornerRadii:
                        .init(topLeading: 10, bottomTrailing: 10.0)).foregroundStyle(.black.opacity(0.8))
            )
        }
    }
}

// FOOD HEADER
struct FoodHeader: View {
    var data: Food
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 8){
                Text(data.category.joined(separator: ","))
                    .font(.headline)
                    .foregroundStyle(
                        .secondary)
                Text(data.heading)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.black)
                    .foregroundStyle(.primary)
                    .lineLimit(3, reservesSpace: true)
                
                Text("Chef by \(data.chef)"
                    .uppercased())
                .font(.caption)
                .foregroundStyle(.secondary)
            }
            .padding(.top,16)
            // Spacer : untuk mendorong space kosong
            // sesuai penempatannya
            Spacer()
        }
    }
}
