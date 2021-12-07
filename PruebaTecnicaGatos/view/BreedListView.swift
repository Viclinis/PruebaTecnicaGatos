//
//  BreedListView.swift
//  PruebaTecnicaGatos
//
//  Created by victor tique on 7/12/21.
//

import SwiftUI

struct BreedListView: View{
    let breeds: [Breed]
    
    @State private var searchText: String = ""
    
    var filteredBreeds: [Breed]{
        if searchText.count == 0{
            return breeds
        }else{
            return breeds.filter{
                $0.name.lowercased().contains(searchText.lowercased())
            }
        }
    }
    
    var body: some View{
        NavigationView{
            List{
                ForEach(filteredBreeds){ breed in
                    NavigationLink{
                        BreedDetailView(breed: breed)
                    } label: {
                    BreedRow(breed: breed)
                    }
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Prueba tecnica iOS")
            .searchable(text: $searchText)
        }
    }
}

struct BreedListView_Previews: PreviewProvider{
    static var previews: some View{
        BreedListView(breeds: BreedFetcher.successState().breeds)
    }
}
