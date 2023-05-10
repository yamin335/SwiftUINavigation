//
//  ContentView.swift
//  SwiftUINavigation
//
//  Created by Md. Yamin on 10.05.23.
//

import SwiftUI

struct MenuButton: View {
    let label: String
    
    var body: some View {
        Text(label)
            .foregroundColor(.white)
            .font(.system(size: 20))
            .padding(10)
            .frame(minWidth: 0, maxWidth: .infinity)
            .background(
                RoundedRectangle(cornerRadius: 5, style: .circular)
                    .fill(Color("blue2"))
            )
    }
}

struct FastFood: Identifiable, Hashable {
    let name: String
    var id: String {name}
}

struct Cloth: Identifiable, Hashable {
    let name: String
    var id: String {name}
}

let listOfSnacks: [FastFood] = [
    .init(name: "🍟 Fries"),
    .init(name: "🍔 Burger"),
    .init(name: "🍖 Kebab")
]

let listOfCloths: [Cloth] = [
    .init(name: "👕 Shirt"),
    .init(name: "👗 Dress"),
    .init(name: "🩳 Short")
]

struct ContentView: View {
    @State private var presentedNumbers = [1, 4, 8]
    @State var showPoint: Bool = true
    @State var path = NavigationPath()

    var body: some View {
        NavigationStack(path: $path) {
            ScrollView {
                VStack {
                    Group {
                        
                        NavigationLink {
                            SimpleDetailNavigation()
                        } label: {
                            MenuButton(label: "Single detail view")
                        }
                        
                        NavigationLink("Navigation with text only") {
                            SimpleDetailNavigation()
                        }
                        .padding(5)
                        
                        NavigationLink(destination: Text("Navigation details")) {
                            Label("Navigation with any view", systemImage: "globe")
                        }
                        .padding(5)
                    }
                    
                    Group {
                        NavigationLink("Inline destination") {
                            List(1..<10) { i in
                                Label("List item \(i)", systemImage: "\(i).circle")
                            }
                        }
                        .padding(5)
                        
                        NavigationLink(destination: NavigationWithList()) {
                            MenuButton(label: "Navigation with list")
                        }
                        
                        NavigationLink(destination: NavigationDetailsView(destinationNumber: 0)) {
                            MenuButton(label: "Multiple nested navigation")
                        }
                    }
                    
                    Group {
                        NavigationLink(destination: FirstDetailView()) {
                            MenuButton(label: "Another Multiple nested navigation")
                        }
                        
                        Text("Foods & Cloths shows nested navigation with path")
                        
                        NavigationLink(destination: FoodItemListView(path: $path)) {
                            MenuButton(label: "Yummy Foods 🍕")
                        }
                        
                        NavigationLink(destination: ClothItemListView(path: $path)) {
                            MenuButton(label: "Fashionable Cloths 🛍️")
                        }
                    }
                    Spacer()
                }
                .navigationDestination(for: FastFood.self) { item in
                    FoodItemDetailsView(item: item, path: $path)
                }
                .navigationDestination(for: Cloth.self) { item in
                    ClothItemDetailsView(item: item, path: $path)
                }
                .navigationTitle("SwiftUI Navigations")
                .padding(.horizontal, 20)
                .padding(.vertical, 15)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
