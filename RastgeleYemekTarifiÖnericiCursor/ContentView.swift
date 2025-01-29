//
//  ContentView.swift
//  RastgeleYemekTarifiÖnericiCursor
//
//  Created by Eren Elçi on 30.01.2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = YemekViewModel()
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Rastgele Yemek Tarifi")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            if let yemek = viewModel.mevcutYemek {
                YemekDetayView(yemek: yemek)
            } else {
                Text("Yemek tarifi görmek için butona basın")
                    .foregroundColor(.gray)
            }
            
            Button(action: {
                withAnimation {
                    viewModel.rastgeleYemekSec()
                }
            }) {
                Text("Rastgele Tarif Göster")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding(.horizontal)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
