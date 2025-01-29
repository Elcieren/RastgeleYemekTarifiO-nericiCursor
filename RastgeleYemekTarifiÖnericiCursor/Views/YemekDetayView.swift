import SwiftUI

struct YemekDetayView: View {
    let yemek: Yemek
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Text(yemek.isim)
                    .font(.title)
                    .fontWeight(.bold)
                
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Image(systemName: "clock")
                        Text("Pişirme Süresi: \(yemek.pisirmeSuresi)")
                    }
                    
                    HStack {
                        Image(systemName: "person.2")
                        Text("Porsiyon: \(yemek.kisiSayisi)")
                    }
                }
                .foregroundColor(.gray)
                
                Group {
                    Text("Malzemeler")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    ForEach(yemek.malzemeler, id: \.self) { malzeme in
                        Text("• \(malzeme)")
                    }
                }
                
                Group {
                    Text("Yapılışı")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Text(yemek.tarif)
                }
            }
            .padding()
        }
        .background(Color.gray.opacity(0.1))
        .cornerRadius(10)
    }
} 