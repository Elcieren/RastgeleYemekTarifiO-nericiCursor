import Foundation
struct Yemek: Identifiable {
    let id = UUID()
    let isim: String
    let malzemeler: [String]
    let tarif: String
    let pisirmeSuresi: String
    let kisiSayisi: String
} 
