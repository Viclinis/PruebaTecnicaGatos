//
//  ErrorView.swift
//  PruebaTecnicaGatos
//
//  Created by victor tique on 7/12/21.
//

import SwiftUI

struct ErrorView: View{
    @ObservedObject var breedFetcher: BreedFetcher
    var body: some View{
        VStack{
            Text(":(")
                .font(.system(size: 80))
            
            Text(breedFetcher.errorMessage ?? "")
            
            Button{
                breedFetcher.fetchAllBreeds()
            } label: {
                Text("Intentar otra vez")
            }
        }
    }
}

struct ErroView_Previews: PreviewProvider{
    static var previews: some View{
        ErrorView(breedFetcher: BreedFetcher())
    }
}
