//
//  ContentView.swift
//  PruebaTecnicaGatos
//
//  Created by victor tique on 3/12/21.
//

import SwiftUI

struct ContentView: View {
    @StateObject var breedFetcher = BreedFetcher()
    var body: some View{
        if breedFetcher.isLoading{
            LoadingView()
        }else if breedFetcher.errorMessage != nil{
            ErrorView(breedFetcher: breedFetcher)
        }else {
            BreedListView(breeds: breedFetcher.breeds)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
