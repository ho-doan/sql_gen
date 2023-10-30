// spell: disable

import 'dart:convert';

import 'package:example/models/customer.dart';

const _jsonCustomers = '''
[
    {
        "firstName": "Luís",
        "lastName": "Gonçalves",
        "company": "Embraer - Empresa Brasileira de Aeronáutica S.A.",
        "address": "Av. Brigadeiro Faria Lima, 2170",
        "city": "São José dos Campos",
        "state": "SP",
        "country": "Brazil",
        "postalCode": "12227-000",
        "phone": "+55 (12) 3923-5555",
        "fax": "+55 (12) 3923-5566",
        "email": "luisg@embraer.com.br",
        "supportRepId": 3
    },
    {
        "firstName": "Leonie",
        "lastName": "Köhler",
        "company": null,
        "address": "Theodor-Heuss-Straße 34",
        "city": "Stuttgart",
        "state": null,
        "country": "Germany",
        "postalCode": "70174",
        "phone": "+49 0711 2842222",
        "fax": null,
        "email": "leonekohler@surfeu.de",
        "supportRepId": 5
    },
    {
        "firstName": "François",
        "lastName": "Tremblay",
        "company": null,
        "address": "1498 rue Bélanger",
        "city": "Montréal",
        "state": "QC",
        "country": "Canada",
        "postalCode": "H2G 1A7",
        "phone": "+1 (514) 721-4711",
        "fax": null,
        "email": "ftremblay@gmail.com",
        "supportRepId": 3
    },
    {
        "firstName": "Bjørn",
        "lastName": "Hansen",
        "company": null,
        "address": "Ullevålsveien 14",
        "city": "Oslo",
        "state": null,
        "country": "Norway",
        "postalCode": "0171",
        "phone": "+47 22 44 22 22",
        "fax": null,
        "email": "bjorn.hansen@yahoo.no",
        "supportRepId": 4
    },
    {
        "firstName": "František",
        "lastName": "Wichterlová",
        "company": "JetBrains s.r.o.",
        "address": "Klanova 9/506",
        "city": "Prague",
        "state": null,
        "country": "Czech Republic",
        "postalCode": "14700",
        "phone": "+420 2 4172 5555",
        "fax": "+420 2 4172 5555",
        "email": "frantisekw@jetbrains.com",
        "supportRepId": 4
    },
    {
        "firstName": "Helena",
        "lastName": "Holý",
        "company": null,
        "address": "Rilská 3174/6",
        "city": "Prague",
        "state": null,
        "country": "Czech Republic",
        "postalCode": "14300",
        "phone": "+420 2 4177 0449",
        "fax": null,
        "email": "hholy@gmail.com",
        "supportRepId": 5
    },
    {
        "firstName": "Astrid",
        "lastName": "Gruber",
        "company": null,
        "address": "Rotenturmstraße 4, 1010 Innere Stadt",
        "city": "Vienne",
        "state": null,
        "country": "Austria",
        "postalCode": "1010",
        "phone": "+43 01 5134505",
        "fax": null,
        "email": "astrid.gruber@apple.at",
        "supportRepId": 5
    },
    {
        "firstName": "Daan",
        "lastName": "Peeters",
        "company": null,
        "address": "Grétrystraat 63",
        "city": "Brussels",
        "state": null,
        "country": "Belgium",
        "postalCode": "1000",
        "phone": "+32 02 219 03 03",
        "fax": null,
        "email": "daan_peeters@apple.be",
        "supportRepId": 4
    },
    {
        "firstName": "Kara",
        "lastName": "Nielsen",
        "company": null,
        "address": "Sønder Boulevard 51",
        "city": "Copenhagen",
        "state": null,
        "country": "Denmark",
        "postalCode": "1720",
        "phone": "+453 3331 9991",
        "fax": null,
        "email": "kara.nielsen@jubii.dk",
        "supportRepId": 4
    },
    {
        "firstName": "Eduardo",
        "lastName": "Martins",
        "company": "Woodstock Discos",
        "address": "Rua Dr. Falcão Filho, 155",
        "city": "São Paulo",
        "state": "SP",
        "country": "Brazil",
        "postalCode": "01007-010",
        "phone": "+55 (11) 3033-5446",
        "fax": "+55 (11) 3033-4564",
        "email": "eduardo@woodstock.com.br",
        "supportRepId": 4
    },
    {
        "firstName": "Alexandre",
        "lastName": "Rocha",
        "company": "Banco do Brasil S.A.",
        "address": "Av. Paulista, 2022",
        "city": "São Paulo",
        "state": "SP",
        "country": "Brazil",
        "postalCode": "01310-200",
        "phone": "+55 (11) 3055-3278",
        "fax": "+55 (11) 3055-8131",
        "email": "alero@uol.com.br",
        "supportRepId": 5
    },
    {
        "firstName": "Roberto",
        "lastName": "Almeida",
        "company": "Riotur",
        "address": "Praça Pio X, 119",
        "city": "Rio de Janeiro",
        "state": "RJ",
        "country": "Brazil",
        "postalCode": "20040-020",
        "phone": "+55 (21) 2271-7000",
        "fax": "+55 (21) 2271-7070",
        "email": "roberto.almeida@riotur.gov.br",
        "supportRepId": 3
    },
    {
        "firstName": "Fernanda",
        "lastName": "Ramos",
        "company": null,
        "address": "Qe 7 Bloco G",
        "city": "Brasília",
        "state": "DF",
        "country": "Brazil",
        "postalCode": "71020-677",
        "phone": "+55 (61) 3363-5547",
        "fax": "+55 (61) 3363-7855",
        "email": "fernadaramos4@uol.com.br",
        "supportRepId": 4
    },
    {
        "firstName": "Mark",
        "lastName": "Philips",
        "company": "Telus",
        "address": "8210 111 ST NW",
        "city": "Edmonton",
        "state": "AB",
        "country": "Canada",
        "postalCode": "T6G 2C7",
        "phone": "+1 (780) 434-4554",
        "fax": "+1 (780) 434-5565",
        "email": "mphilips12@shaw.ca",
        "supportRepId": 5
    },
    {
        "firstName": "Jennifer",
        "lastName": "Peterson",
        "company": "Rogers Canada",
        "address": "700 W Pender Street",
        "city": "Vancouver",
        "state": "BC",
        "country": "Canada",
        "postalCode": "V6C 1G8",
        "phone": "+1 (604) 688-2255",
        "fax": "+1 (604) 688-8756",
        "email": "jenniferp@rogers.ca",
        "supportRepId": 3
    },
    {
        "firstName": "Frank",
        "lastName": "Harris",
        "company": "Google Inc.",
        "address": "1600 Amphitheatre Parkway",
        "city": "Mountain View",
        "state": "CA",
        "country": "USA",
        "postalCode": "94043-1351",
        "phone": "+1 (650) 253-0000",
        "fax": "+1 (650) 253-0000",
        "email": "fharris@google.com",
        "supportRepId": 4
    },
    {
        "firstName": "Jack",
        "lastName": "Smith",
        "company": "Microsoft Corporation",
        "address": "1 Microsoft Way",
        "city": "Redmond",
        "state": "WA",
        "country": "USA",
        "postalCode": "98052-8300",
        "phone": "+1 (425) 882-8080",
        "fax": "+1 (425) 882-8081",
        "email": "jacksmith@microsoft.com",
        "supportRepId": 5
    },
    {
        "firstName": "Michelle",
        "lastName": "Brooks",
        "company": null,
        "address": "627 Broadway",
        "city": "New York",
        "state": "NY",
        "country": "USA",
        "postalCode": "10012-2612",
        "phone": "+1 (212) 221-3546",
        "fax": "+1 (212) 221-4679",
        "email": "michelleb@aol.com",
        "supportRepId": 3
    },
    {
        "firstName": "Tim",
        "lastName": "Goyer",
        "company": "Apple Inc.",
        "address": "1 Infinite Loop",
        "city": "Cupertino",
        "state": "CA",
        "country": "USA",
        "postalCode": "95014",
        "phone": "+1 (408) 996-1010",
        "fax": "+1 (408) 996-1011",
        "email": "tgoyer@apple.com",
        "supportRepId": 3
    },
    {
        "firstName": "Dan",
        "lastName": "Miller",
        "company": null,
        "address": "541 Del Medio Avenue",
        "city": "Mountain View",
        "state": "CA",
        "country": "USA",
        "postalCode": "94040-111",
        "phone": "+1 (650) 644-3358",
        "fax": null,
        "email": "dmiller@comcast.com",
        "supportRepId": 4
    },
    {
        "firstName": "Kathy",
        "lastName": "Chase",
        "company": null,
        "address": "801 W 4th Street",
        "city": "Reno",
        "state": "NV",
        "country": "USA",
        "postalCode": "89503",
        "phone": "+1 (775) 223-7665",
        "fax": null,
        "email": "kachase@hotmail.com",
        "supportRepId": 5
    },
    {
        "firstName": "Heather",
        "lastName": "Leacock",
        "company": null,
        "address": "120 S Orange Ave",
        "city": "Orlando",
        "state": "FL",
        "country": "USA",
        "postalCode": "32801",
        "phone": "+1 (407) 999-7788",
        "fax": null,
        "email": "hleacock@gmail.com",
        "supportRepId": 4
    },
    {
        "firstName": "John",
        "lastName": "Gordon",
        "company": null,
        "address": "69 Salem Street",
        "city": "Boston",
        "state": "MA",
        "country": "USA",
        "postalCode": "2113",
        "phone": "+1 (617) 522-1333",
        "fax": null,
        "email": "johngordon22@yahoo.com",
        "supportRepId": 4
    },
    {
        "firstName": "Frank",
        "lastName": "Ralston",
        "company": null,
        "address": "162 E Superior Street",
        "city": "Chicago",
        "state": "IL",
        "country": "USA",
        "postalCode": "60611",
        "phone": "+1 (312) 332-3232",
        "fax": null,
        "email": "fralston@gmail.com",
        "supportRepId": 3
    },
    {
        "firstName": "Victor",
        "lastName": "Stevens",
        "company": null,
        "address": "319 N. Frances Street",
        "city": "Madison",
        "state": "WI",
        "country": "USA",
        "postalCode": "53703",
        "phone": "+1 (608) 257-0597",
        "fax": null,
        "email": "vstevens@yahoo.com",
        "supportRepId": 5
    },
    {
        "firstName": "Richard",
        "lastName": "Cunningham",
        "company": null,
        "address": "2211 W Berry Street",
        "city": "Fort Worth",
        "state": "TX",
        "country": "USA",
        "postalCode": "76110",
        "phone": "+1 (817) 924-7272",
        "fax": null,
        "email": "ricunningham@hotmail.com",
        "supportRepId": 4
    },
    {
        "firstName": "Patrick",
        "lastName": "Gray",
        "company": null,
        "address": "1033 N Park Ave",
        "city": "Tucson",
        "state": "AZ",
        "country": "USA",
        "postalCode": "85719",
        "phone": "+1 (520) 622-4200",
        "fax": null,
        "email": "patrick.gray@aol.com",
        "supportRepId": 4
    },
    {
        "firstName": "Julia",
        "lastName": "Barnett",
        "company": null,
        "address": "302 S 700 E",
        "city": "Salt Lake city",
        "state": "UT",
        "country": "USA",
        "postalCode": "84102",
        "phone": "+1 (801) 531-7272",
        "fax": null,
        "email": "jubarnett@gmail.com",
        "supportRepId": 5
    },
    {
        "firstName": "Robert",
        "lastName": "Brown",
        "company": null,
        "address": "796 Dundas Street West",
        "city": "Toronto",
        "state": "ON",
        "country": "Canada",
        "postalCode": "M6J 1V1",
        "phone": "+1 (416) 363-8888",
        "fax": null,
        "email": "robbrown@shaw.ca",
        "supportRepId": 3
    },
    {
        "firstName": "Edward",
        "lastName": "Francis",
        "company": null,
        "address": "230 Elgin Street",
        "city": "Ottawa",
        "state": "ON",
        "country": "Canada",
        "postalCode": "K2P 1L7",
        "phone": "+1 (613) 234-3322",
        "fax": null,
        "email": "edfrancis@yachoo.ca",
        "supportRepId": 3
    },
    {
        "firstName": "Martha",
        "lastName": "Silk",
        "company": null,
        "address": "194A Chain Lake Drive",
        "city": "Halifax",
        "state": "NS",
        "country": "Canada",
        "postalCode": "B3S 1C5",
        "phone": "+1 (902) 450-0450",
        "fax": null,
        "email": "marthasilk@gmail.com",
        "supportRepId": 5
    },
    {
        "firstName": "Aaron",
        "lastName": "Mitchell",
        "company": null,
        "address": "696 Osborne Street",
        "city": "Winnipeg",
        "state": "MB",
        "country": "Canada",
        "postalCode": "R3L 2B9",
        "phone": "+1 (204) 452-6452",
        "fax": null,
        "email": "aaronmitchell@yahoo.ca",
        "supportRepId": 4
    },
    {
        "firstName": "Ellie",
        "lastName": "Sullivan",
        "company": null,
        "address": "5112 48 Street",
        "city": "Yellowknife",
        "state": "NT",
        "country": "Canada",
        "postalCode": "X1A 1N6",
        "phone": "+1 (867) 920-2233",
        "fax": null,
        "email": "ellie.sullivan@shaw.ca",
        "supportRepId": 3
    },
    {
        "firstName": "João",
        "lastName": "Fernandes",
        "company": null,
        "address": "Rua da Assunção 53",
        "city": "Lisbon",
        "state": null,
        "country": "Portugal",
        "postalCode": null,
        "phone": "+351 (213) 466-111",
        "fax": null,
        "email": "jfernandes@yahoo.pt",
        "supportRepId": 4
    },
    {
        "firstName": "Madalena",
        "lastName": "Sampaio",
        "company": null,
        "address": "Rua dos Campeões Europeus de Viena, 4350",
        "city": "Porto",
        "state": null,
        "country": "Portugal",
        "postalCode": null,
        "phone": "+351 (225) 022-448",
        "fax": null,
        "email": "masampaio@sapo.pt",
        "supportRepId": 4
    },
    {
        "firstName": "Hannah",
        "lastName": "Schneider",
        "company": null,
        "address": "Tauentzienstraße 8",
        "city": "Berlin",
        "state": null,
        "country": "Germany",
        "postalCode": "10789",
        "phone": "+49 030 26550280",
        "fax": null,
        "email": "hannah.schneider@yahoo.de",
        "supportRepId": 5
    },
    {
        "firstName": "Fynn",
        "lastName": "Zimmermann",
        "company": null,
        "address": "Berger Straße 10",
        "city": "Frankfurt",
        "state": null,
        "country": "Germany",
        "postalCode": "60316",
        "phone": "+49 069 40598889",
        "fax": null,
        "email": "fzimmermann@yahoo.de",
        "supportRepId": 3
    },
    {
        "firstName": "Niklas",
        "lastName": "Schröder",
        "company": null,
        "address": "Barbarossastraße 19",
        "city": "Berlin",
        "state": null,
        "country": "Germany",
        "postalCode": "10779",
        "phone": "+49 030 2141444",
        "fax": null,
        "email": "nschroder@surfeu.de",
        "supportRepId": 3
    },
    {
        "firstName": "Camille",
        "lastName": "Bernard",
        "company": null,
        "address": "4, Rue Milton",
        "city": "Paris",
        "state": null,
        "country": "France",
        "postalCode": "75009",
        "phone": "+33 01 49 70 65 65",
        "fax": null,
        "email": "camille.bernard@yahoo.fr",
        "supportRepId": 4
    },
    {
        "firstName": "Dominique",
        "lastName": "Lefebvre",
        "company": null,
        "address": "8, Rue Hanovre",
        "city": "Paris",
        "state": null,
        "country": "France",
        "postalCode": "75002",
        "phone": "+33 01 47 42 71 71",
        "fax": null,
        "email": "dominiquelefebvre@gmail.com",
        "supportRepId": 4
    },
    {
        "firstName": "Marc",
        "lastName": "Dubois",
        "company": null,
        "address": "11, Place Bellecour",
        "city": "Lyon",
        "state": null,
        "country": "France",
        "postalCode": "69002",
        "phone": "+33 04 78 30 30 30",
        "fax": null,
        "email": "marc.dubois@hotmail.com",
        "supportRepId": 5
    },
    {
        "firstName": "Wyatt",
        "lastName": "Girard",
        "company": null,
        "address": "9, Place Louis Barthou",
        "city": "Bordeaux",
        "state": null,
        "country": "France",
        "postalCode": "33000",
        "phone": "+33 05 56 96 96 96",
        "fax": null,
        "email": "wyatt.girard@yahoo.fr",
        "supportRepId": 3
    },
    {
        "firstName": "Isabelle",
        "lastName": "Mercier",
        "company": null,
        "address": "68, Rue Jouvence",
        "city": "Dijon",
        "state": null,
        "country": "France",
        "postalCode": "21000",
        "phone": "+33 03 80 73 66 99",
        "fax": null,
        "email": "isabelle_mercier@apple.fr",
        "supportRepId": 3
    },
    {
        "firstName": "Terhi",
        "lastName": "Hämäläinen",
        "company": null,
        "address": "Porthaninkatu 9",
        "city": "Helsinki",
        "state": null,
        "country": "Finland",
        "postalCode": "00530",
        "phone": "+358 09 870 2000",
        "fax": null,
        "email": "terhi.hamalainen@apple.fi",
        "supportRepId": 3
    },
    {
        "firstName": "Ladislav",
        "lastName": "Kovács",
        "company": null,
        "address": "Erzsébet krt. 58.",
        "city": "Budapest",
        "state": null,
        "country": "Hungary",
        "postalCode": "H-1073",
        "phone": null,
        "fax": null,
        "email": "ladislav_kovacs@apple.hu",
        "supportRepId": 3
    },
    {
        "firstName": "Hugh",
        "lastName": "O'Reilly",
        "company": null,
        "address": "3 Chatham Street",
        "city": "Dublin",
        "state": "Dublin",
        "country": "Ireland",
        "postalCode": null,
        "phone": "+353 01 6792424",
        "fax": null,
        "email": "hughoreilly@apple.ie",
        "supportRepId": 3
    },
    {
        "firstName": "Lucas",
        "lastName": "Mancini",
        "company": null,
        "address": "Via Degli Scipioni, 43",
        "city": "Rome",
        "state": "RM",
        "country": "Italy",
        "postalCode": "00192",
        "phone": "+39 06 39733434",
        "fax": null,
        "email": "lucas.mancini@yahoo.it",
        "supportRepId": 5
    },
    {
        "firstName": "Johannes",
        "lastName": "Van der Berg",
        "company": null,
        "address": "Lijnbaansgracht 120bg",
        "city": "Amsterdam",
        "state": "VV",
        "country": "Netherlands",
        "postalCode": "1016",
        "phone": "+31 020 6223130",
        "fax": null,
        "email": "johavanderberg@yahoo.nl",
        "supportRepId": 5
    },
    {
        "firstName": "Stanisław",
        "lastName": "Wójcik",
        "company": null,
        "address": "Ordynacka 10",
        "city": "Warsaw",
        "state": null,
        "country": "Poland",
        "postalCode": "00-358",
        "phone": "+48 22 828 37 39",
        "fax": null,
        "email": "stanisław.wójcik@wp.pl",
        "supportRepId": 4
    },
    {
        "firstName": "Enrique",
        "lastName": "Muñoz",
        "company": null,
        "address": "C/ San Bernardo 85",
        "city": "Madrid",
        "state": null,
        "country": "Spain",
        "postalCode": "28015",
        "phone": "+34 914 454 454",
        "fax": null,
        "email": "enrique_munoz@yahoo.es",
        "supportRepId": 5
    },
    {
        "firstName": "Joakim",
        "lastName": "Johansson",
        "company": null,
        "address": "Celsiusg. 9",
        "city": "Stockholm",
        "state": null,
        "country": "Sweden",
        "postalCode": "11230",
        "phone": "+46 08-651 52 52",
        "fax": null,
        "email": "joakim.johansson@yahoo.se",
        "supportRepId": 5
    },
    {
        "firstName": "Emma",
        "lastName": "Jones",
        "company": null,
        "address": "202 Hoxton Street",
        "city": "London",
        "state": null,
        "country": "United Kingdom",
        "postalCode": "N1 5LH",
        "phone": "+44 020 7707 0707",
        "fax": null,
        "email": "emma_jones@hotmail.com",
        "supportRepId": 3
    },
    {
        "firstName": "Phil",
        "lastName": "Hughes",
        "company": null,
        "address": "113 Lupus St",
        "city": "London",
        "state": null,
        "country": "United Kingdom",
        "postalCode": "SW1V 3EN",
        "phone": "+44 020 7976 5722",
        "fax": null,
        "email": "phil.hughes@gmail.com",
        "supportRepId": 3
    },
    {
        "firstName": "Steve",
        "lastName": "Murray",
        "company": null,
        "address": "110 Raeburn Pl",
        "city": "Edinburgh ",
        "state": null,
        "country": "United Kingdom",
        "postalCode": "EH4 1HH",
        "phone": "+44 0131 315 3300",
        "fax": null,
        "email": "steve.murray@yahoo.uk",
        "supportRepId": 5
    },
    {
        "firstName": "Mark",
        "lastName": "Taylor",
        "company": null,
        "address": "421 Bourke Street",
        "city": "Sidney",
        "state": "NSW",
        "country": "Australia",
        "postalCode": "2010",
        "phone": "+61 (02) 9332 3633",
        "fax": null,
        "email": "mark.taylor@yahoo.au",
        "supportRepId": 4
    },
    {
        "firstName": "Diego",
        "lastName": "Gutiérrez",
        "company": null,
        "address": "307 Macacha Güemes",
        "city": "Buenos Aires",
        "state": null,
        "country": "Argentina",
        "postalCode": "1106",
        "phone": "+54 (0)11 4311 4333",
        "fax": null,
        "email": "diego.gutierrez@yahoo.ar",
        "supportRepId": 4
    },
    {
        "firstName": "Luis",
        "lastName": "Rojas",
        "company": null,
        "address": "Calle Lira, 198",
        "city": "Santiago",
        "state": null,
        "country": "Chile",
        "postalCode": null,
        "phone": "+56 (0)2 635 4444",
        "fax": null,
        "email": "luisrojas@yahoo.cl",
        "supportRepId": 5
    },
    {
        "firstName": "Manoj",
        "lastName": "Pareek",
        "company": null,
        "address": "12,Community Centre",
        "city": "Delhi",
        "state": null,
        "country": "India",
        "postalCode": "110017",
        "phone": "+91 0124 39883988",
        "fax": null,
        "email": "manoj.pareek@rediff.com",
        "supportRepId": 3
    },
    {
        "firstName": "Puja",
        "lastName": "Srivastava",
        "company": null,
        "address": "3,Raj Bhavan Road",
        "city": "Bangalore",
        "state": null,
        "country": "India",
        "postalCode": "560001",
        "phone": "+91 080 22289999",
        "fax": null,
        "email": "puja_srivastava@yahoo.in",
        "supportRepId": 3
    }
]
''';
final customers = (jsonDecode(_jsonCustomers) as List).map(
  (e) => Customer.fromJsonDB(e),
);
