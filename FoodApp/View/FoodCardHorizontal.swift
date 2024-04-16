//
//  HorizontalFoodCard.swift
//  FoodApp
//
//  Created by Macbook Pro on 16/04/24.
//

import SwiftUI

struct FoodCardHorizontal: View {
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    UnevenRoundedRectangle(cornerRadii: .init(topLeading: 0, bottomLeading: 40, bottomTrailing: 40, topTrailing: 0))
                        .frame(height: 120)
                    
                    Spacer()
                }.ignoresSafeArea()
                    .foregroundStyle(.burungBiru)
                
                VStack {
                    Spacer()
                    UnevenRoundedRectangle(cornerRadii: .init(topLeading: 40, bottomLeading: 0, bottomTrailing: 0, topTrailing: 40))
                        .frame(height: 80)
                }.ignoresSafeArea().foregroundStyle(.burungBiru)
                
                VStack(alignment:.leading, spacing: 5) {
                    Text(currentFoodDate())
                        .foregroundStyle(.secondary)
                    Text("Your Last Viewed")
                        .font(.system(.title, design: .rounded))
                        .fontWeight(.heavy)
                    ScrollView (.horizontal, showsIndicators: false) {
                        HStack (spacing: 20) {
                            // map / for : untuk data biasa
                            // ForEach : untuk tampilan view
                            ForEach(Food.foodData) {
                                food in FoodCard(food: food).frame(width: 300)
                            }
                        }
                        .padding(.top, 20)
                    }
                }
                .padding()
                .navigationTitle("Food Order")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    Button {
                        print("Cart Button Tapped")
                    } label: {
                        Image(systemName: "cart")
                            .foregroundStyle(.black)
                    }
            }
            }
        }
    }
    
    private func currentFoodDate() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE, MMM d, yyyy"
        
        let results = formatter.string(from: Date())
        return results
    }
}

#Preview {
    FoodCardHorizontal()
}
