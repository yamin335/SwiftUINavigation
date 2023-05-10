//
//  ClothItemDetailsView.swift
//  SwiftUINavigation
//
//  Created by Md. Yamin on 10.05.23.
//

import SwiftUI

struct ClothItemDetailsView: View {
    let item: Cloth
    @Binding var path: NavigationPath
    
    var body: some View {
        Text(item.name)
            .font(.system(size: 40, weight: .black))
    }
}

struct ClothItemDetailsView_Previews: PreviewProvider {
    @State static var path = NavigationPath()
    static var previews: some View {
        ClothItemDetailsView(item: .init(name: "👕 Shirt"), path: $path)
    }
}
