import("stdfaust.lib"); 
order = 4;
freq = 7650;
process = no.noise : fi.lowpass(order, freq) : fi.highpass(order, freq);
// la sintesi sottrattiva è il processo di sintesi piu datato. In quanto processo di sintesi è volto alla creazione di un suono, al suono finale si arriva estrapolandolo da un suono piu complesso come ad ad esempio un rumore bianco, il quale contiene tutte le frequenze a tutte le ampiezze. Faust elabora un noise grazie al RANDMAX, ovvero un generatore di numeri, esso viene chiamato in base alla frequenza di campionamento. 
// il filtro passabasso attenua le frequenze alte ed il filtro passaalto attenua le frequenze alte: Nell'applicare un filtro è necessario stabilire una frequenza di taglio ed un ordine di filtro. Il filtro di primo ordine attenua 6db per ottava, quello di secondo ordine attenua 12db per ottava. Gli altri filtri vengono creati dall'unione di piu filtri di secondo ordine
// ad un ordine maggiore corrisponde una pendenza piu ripida nel suono rappresentato nello spettroscopio
// RANDMAX è il primo generatore di numeri
// RANDMAX è un numero casuale chiamato da faust in base alla frequenza di campionamento
// un suono è rumore quando al suo interno non ci sono le caratteristiche descrittive di un suono
// i numeri che identificano lo slider sono: il valore iniziale, valore minimo, valore massimo e step incrementale
// lo step incrementale determina la precisione dello slider
// il valore iniziale è il valore che deve assumere lo slider quando viene acceso il programma
// noise definisce un rumore che contiene tutte le frequenze
// spettroscopio: contenuto del suono nel dominio della frequenza, frequenza sulle x, ampiezza sulle y
// oscilloscopio: contenuto del suono nel dominio del tempo, tempo sulle x, ampiezza sulle y
// lowpass è un filtro passabasso
// SPETTROGRAMMA: frequenza sulle x, ampiezza sulle y
// OSCILLOSCOPIO: tempo sulle x, ampiezza sulle y
// SONOGRAMMA: frequenza sulle y, tempo sulle y
// dato un punto di taglio il filtro di primo ordine(attenua 6db per 8va)
