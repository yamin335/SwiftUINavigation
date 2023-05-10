//
//  FoodItemListView.swift
//  SwiftUINavigation
//
//  Created by Md. Yamin on 10.05.23.
//

import SwiftUI

struct FoodItemListView: View {
    @Binding var path: NavigationPath
    
    let listOfSnacks: [FastFood] = [
        .init(name: "🍟 Fries"),
        .init(name: "🍔 Burger"),
        .init(name: "🍖 Kebab")
    ]
    
    var body: some View {
        VStack {
            Text("Path Count: \(path.count)")
            Text("List of food Items")

            List(listOfSnacks) { item in
                NavigationLink(value: item) {
                    Text("\(item.name)")
                }
            }
        }
    }
}

struct FoodItemListView_Previews: PreviewProvider {
    @State static var path = NavigationPath()
    static var previews: some View {
        FoodItemListView(path: $path)
    }
}
