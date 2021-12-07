//
//  LoadingView.swift
//  PruebaTecnicaGatos
//
//  Created by victor tique on 7/12/21.
//

import SwiftUI

struct LoadingView: View{
    var body: some View{
        VStack(spacing: 20){
            Text(":)")
                .font(.system(size: 80))
            ProgressView()
            Text("Cargando gatos ...")
                .foregroundColor(.gray)
        }
    }
}

struct LoadingView_Previews: PreviewProvider{
    static var previews: some View{
        LoadingView()
    }
}
