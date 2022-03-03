//
//  ContentView.swift
//  Recipe List App
//
//  Created by 林家任 on 2022/2/14.
//

import SwiftUI

struct RecipeListView: View {
    
    @ObservedObject var model = RecipeModel()
    
    var body: some View {
        
        NavigationView {
            List(model.recipes) { r in
                
                NavigationLink(destination: RecipeDetailView(recipe:r), label:{
                        HStack(spacing: 20.0) {
                            Image(r.image)
                                .resizable().scaledToFill().frame(width: 100, height: 100, alignment: .center).clipped().cornerRadius(5)
                            Text(r.name)
                        }
                })
            }
            .navigationBarTitle("All Recipes")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
