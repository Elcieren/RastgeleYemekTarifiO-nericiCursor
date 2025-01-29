import Foundation

class YemekViewModel: ObservableObject {
    @Published var mevcutYemek: Yemek?
    
    private let yemekler: [Yemek] = [
        Yemek(
            isim: "Karnıyarık",
            malzemeler: [
                "6 adet patlıcan",
                "300 gr kıyma",
                "2 adet soğan",
                "2 adet domates",
                "2 adet yeşil biber",
                "2 diş sarımsak",
                "Tuz, karabiber",
                "Sıvı yağ"
            ],
            tarif: "1. Patlıcanları alacalı soyup tuzlu suda bekletin\n2. Kıymayı soğan ve biberle kavurun\n3. Patlıcanları kızartın ve yarın\n4. İç harcı doldurup fırınlayın",
            pisirmeSuresi: "45 dakika",
            kisiSayisi: "4-6 kişilik"
        ),
        Yemek(
            isim: "Mercimek Çorbası",
            malzemeler: [
                "1 su bardağı kırmızı mercimek",
                "1 adet soğan",
                "1 adet havuç",
                "2 yemek kaşığı un",
                "Sıvı yağ",
                "Tuz, karabiber"
            ],
            tarif: "1. Mercimeği yıkayıp süzün\n2. Sebzeleri doğrayıp kavurun\n3. Mercimek ve suyu ekleyip pişirin\n4. Blenderdan geçirip servis yapın",
            pisirmeSuresi: "30 dakika",
            kisiSayisi: "4 kişilik"
        ),
        // Daha fazla yemek eklenebilir
    ]
    
    func rastgeleYemekSec() {
        mevcutYemek = yemekler.randomElement()
    }
} 