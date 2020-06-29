class Produkt{
    var name: String
    var beschreibung: String
    var preis: Double
    var rabatt: Double

    init(name: String,
        beschreibung: String,
        preis: Double,
        rabatt: Double){
            self.name = name
            self.beschreibung = beschreibung
            self.preis = preis
            self.rabatt = rabatt
        }

    func printProdukt(){
        //print("name : \(self.name), preis: \(self.preis), rabatt: \(self.rabatt) ist erfolgsreich gespeichert")
        print("name : \(self.name),beschreibung  : \(self.beschreibung) ,preis: \(self.preis), rabatt: \(self.rabatt) ist erfolgsreich gespeichert")
    }
}
