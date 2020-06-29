print("\t\t\t\t\t--------------Warenkorb-------------")

var admins = Array<Person>()
admins.append(Person(name: "Admin",vorName: "kamil",passwort:  "pass",email: "admin@hotmail.com"))

var kunden = Array<Kunde>()
kunden.append(Kunde(kundeWarenkorb: Warenkorb(),name: "Kunde",vorName: "Kamil",passwort:  "pass",email: "kunde@hotmail.com"))

var waren = Array<Produkt>()
let pro1 = Produkt(name: "Rotwein      ", beschreibung: "Rodriguez de Vera Serie Limitada 2015,Merlo", preis: 14.50, rabatt: 0.2)
let pro2 = Produkt(name: "Weisswein    ", beschreibung: "Grauer Burgunder trocken Famose Schose 2018", preis: 11.90, rabatt: 0.1)
let pro3 = Produkt(name: "Rose`        ", beschreibung: "Duffour Père & Fils, Gascogne 2019, trocken", preis: 16.50, rabatt: 0)
let pro4 = Produkt(name: "Studentenwein", beschreibung: "Schnelle Wirkung                           ", preis: 00.99, rabatt: 0)
waren.append(pro1)
waren.append(pro2)
waren.append(pro3)
waren.append(pro4)

modus()

func modus(){
    //print("Modus Auswählen : Admin für Warenanlegen -> 1 eingeben, Kunde für shoppen -> 2 eingeben")
      print("Login - Modus wählen: Als Admin (1); Als Kunde (2)")
    var modusEingabe: Int
    repeat{
    modusEingabe = Int(readLine(strippingNewline : true) ?? "") ?? 0

    switch modusEingabe{
        case 1:
            adminMode()
        case 2:
            kundenMode()
        default:
            modusEingabe = 0
            print("Login Modus falsch, Geben Sie für Admin-Modus(1) oder Kunden-Modus(2) ein")
    }
    } while modusEingabe == 0
}


func adminMode(){
    var weiter = false
    var currentAdmin : Person?
    var auth = false
    repeat{
        print("Email:")
        let email: String! = readLine()
        print("Passwort:")
        let passwort: String! = readLine()

        for admin in admins{
            if admin.email == email, admin.passwort == passwort{
                currentAdmin = admin
                auth = true
            }else {
                currentAdmin = nil
                auth = false
            }
        } 
    }while auth == false
    
    repeat {
        print("Produkt anlegen: Eingeloggt als  \(currentAdmin!.name), \(currentAdmin!.vorName) !!")  

    
        print("Produkt Name:")
        let nameEingabe: String! = readLine()
        let name: String =  nameEingabe

        print("Produkt Beschreibung:")
        let beschreibungEingabe: String! = readLine()
        let beschreibung: String =  beschreibungEingabe

        
        print("Preis:")
        let preisEingabe: String! = readLine()
        let preis =  Double(preisEingabe)

        print("Rabatt:")
        let rabattEingabe: String! = readLine()
        let rabatt =  Double(rabattEingabe)

        let pro = Produkt(name: name,beschreibung: beschreibung, preis: preis!, rabatt: rabatt!)
        waren.append(pro)
        pro.printProdukt()

        print("Weitere Produkte hinzufügen [J/N]")
        let weiterHinzufuegen: String! = readLine()
        if weiterHinzufuegen.lowercased() == "j"{
            weiter = true
        }else {
            weiter = false
        }

    } while weiter == true   
    modus()
}


func kundenMode(){

    var weiter = false
    var currentKunde : Kunde?
    var auth = false
    repeat{
        print("Email:")
        let email: String! = readLine()
        print("Passwort:")
        let passwort: String! = readLine()

        for kunde in kunden{
            if kunde.email == email, kunde.passwort == passwort{
                currentKunde = kunde
                auth = true
            }else {
                currentKunde = nil
                auth = false
            }
        } 
    }while auth == false

    if currentKunde != nil{
        currentKunde!.kundeWarenkorb = Warenkorb()
    }

    printWaren()

    repeat{
        print("Geben Sie bitte die Produktnummer ein")
        let keyEingabe: String! = readLine()
        let key = Int(keyEingabe) ?? -1
        if key == -1{
            print("Produktnummer falsch oder existiert nicht, Bitte geben Sie die Produktnummer erneut ein ")
            weiter = false
        }else {
            currentKunde!.kundeWarenkorb.produkte.append(waren[key])
            print("Produkt wurde dem Warenkorb hinzugefügt, möchten Sie weitere Produkte hinzufügen [J/N]")            
            let weiterHinzufuegen: String! = readLine()
            if weiterHinzufuegen.lowercased() == "j"{
                weiter = true
            }else {
                weiter = false
            }
        }
    }while weiter == true 
    print("Sie werden jetzt zum Warenkorb weitergeleitet...")
    bill(kunde: currentKunde!)
}


func bill(kunde: Kunde){
    kunde.printWaren()
}

func printWaren(){
     print("Key\tName\t\tBeschreibung\t\t\t\t\tPreis\tRabatt")
      
    for i in waren.indices{
        print(i, waren[i].name, waren[i].beschreibung, "\(waren[i].preis) \u{20ac}", "\(waren[i].rabatt) %", separator: "\t")
    }

}
