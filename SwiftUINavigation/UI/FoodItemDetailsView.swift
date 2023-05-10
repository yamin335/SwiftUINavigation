//
//  FoodItemDetailsView.swift
//  SwiftUINavigation
//
//  Created by Md. Yamin on 10.05.23.
//

import SwiftUI

struct FoodItemDetailsView: View {
    let item: FastFood
    @Binding var path: NavigationPath
    
    var body: some View {
        Text(item.name)
            .font(.system(size: 40, weight: .black))
    }
}

struct FoodItemDetailsView_Previews: PreviewProvider {
    @State static var path = NavigationPath()
    static var previews: some View {
        FoodItemDetailsView(item: .init(name: "🍟 Fries"), path: $path)
    }
}
