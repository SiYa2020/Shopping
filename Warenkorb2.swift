
// class A{
	

// //Funktion Kundendaten Eingabemaske
// func kunde()
// {
// var name: String
// var vorname: String
// var kundenID: String


// // Kundendaten eingeben
// print("Geben Sie bitte Ihren Namen ein");
// var eingabe:String! = readLine(strippingNewline : true)
// name  = String(eingabe)



// print("Geben Sie bitte Ihren Vornamen ein");
// eingabe = readLine(strippingNewline : true)
// vorname = String(eingabe)



// print("Geben Sie bitte Ihre kunden-ID ein");
// eingabe = readLine(strippingNewline : true)
// kundenID = String(eingabe)



// //Ausgabe der Kundendaten
// print("Name         \(name)")
// print("Vorname      \(vorname)")
// print("KundenID     \(kundenID)")
// print("")
// }

	
	
// //Funktion Wein
// func weinsorten()
// {
	
// print("Aktuelles Weinsortiment")
// print("")
// let wein = ["Weißwein Grauburgunder 2019 trocken a 2€","Rotwein Gran Appasso 2017 Demi-Sec a 4€","Rose Ca Dei Frati 2019 Demi-Sec a 6€","Weißherbst Spätburgunder 1799 trocken a 8€"]
// for i in wein
// {
// print("Weinsorten \(i) 1L")

// }
// print("")
// }


// //Funktion Menger der Weine
// func menge()
// {

// //let preis = 2

// var wein_a : String
// var menge : Int
// let wein = [1:"Weißwein Grauburgunder 2019 trocken",2:"Rotwein Gran Appasso 2017 Demi-Sec",3:"Rose Ca Dei Frati 2019 Demi-Sec",4:"Weißherbst Spätburgunder 1799 trocken"]

// var preis = 0



// print((wein));
// print("Geben Sie das gewünschte Weinprodukt ein");
// 	print("")
// 	print("Geben Sie die 1 für Weißwein Grauburgunder 2019 trocken ein ")
// 	print("Geben Sie die 2 für Rotwein Gran Appasso 2017 Demi-Sec")
// 	print("Geben Sie die 3 für Rose Ca Dei Frati 2019 Demi-Sec")
// 	print("Geben Sie die 4 für Weißherbst Spätburgunder 1799 trocken")
	
	
// var eingabe:String! = readLine(strippingNewline : true)
// wein_a = String(eingabe)

// if wein_a == "1"
// {
// wein_a = "Weißwein Grauburgunder 2019 trocken"
// preis = 2
// }


// if wein_a == "2"
// {
// wein_a = "Rotwein Gran Appasso 2017 Demi-Sec"
// preis = 4
// }


// if wein_a == "3"
// {
// wein_a = "Rose Ca Dei Frati 2019 Demi-Sec"
// preis = 6
// }


// if wein_a == "4"
// {
// wein_a = "Weißherbst Spätburgunder 1799 trocken"
// preis = 8
// }






// print("")


// print("Geben Sie bitte die Anzahl der Flaschen ein");
// eingabe = readLine(strippingNewline : true)
// menge = Int(eingabe)!

// var summe : Double
// var summe_m : Double
// var summe_mm : Double
// summe = Double(menge)*Double(preis)
// summe_m = Double(menge)*Double(preis)*(0.19)
// summe_mm = summe + summe_m


// print("Weinsorte          \(wein_a) 1L")
// print("Anzahl der Weine   \(menge) Stück")
// print("Preis pro Flasche  \(preis) Euro")
// print("Rechnung ohne MSWT \(summe) Euro")
// print("19% Mehrwertsteuer \(summe_m) Euro")
// print("Rechnung mit MWST  \(summe_mm) Euro")


// }





// }
// let inst = A()

// inst.kunde()

// inst.weinsorten()

// inst.menge()










