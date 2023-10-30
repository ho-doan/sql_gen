// spell: disable

import 'dart:convert';

import 'package:example/models/employee.dart';

const _jsonEmployees = '''
[
    {
        "lastName": "Adams",
        "firstName": "Andrew",
        "title": "General Manager",
        "reportsTo": null,
        "birthDate": "1962/02/18 00:00:00",
        "hireDate": "2002/08/14 00:00:00",
        "address": "11120 Jasper Ave NW",
        "city": "Edmonton",
        "state": "AB",
        "country": "Canada",
        "postalCode": "T5K 2N1",
        "phone": "+1 (780) 428-9482",
        "fax": "+1 (780) 428-3457",
        "email": "andrew@chinookcorp.com"
    },
    {
        "lastName": "Edwards",
        "firstName": "Nancy",
        "title": "Sales Manager",
        "reportsTo": 1,
        "birthDate": "1958/12/08 00:00:00",
        "hireDate": "2002/05/01 00:00:00",
        "address": "825 8 Ave SW",
        "city": "Calgary",
        "state": "AB",
        "country": "Canada",
        "postalCode": "T2P 2T3",
        "phone": "+1 (403) 262-3443",
        "fax": "+1 (403) 262-3322",
        "email": "nancy@chinookcorp.com"
    },
    {
        "lastName": "Peacock",
        "firstName": "Jane",
        "title": "Sales Support Agent",
        "reportsTo": 2,
        "birthDate": "1973/08/29 00:00:00",
        "hireDate": "2002/04/01 00:00:00",
        "address": "1111 6 Ave SW",
        "city": "Calgary",
        "state": "AB",
        "country": "Canada",
        "postalCode": "T2P 5M5",
        "phone": "+1 (403) 262-3443",
        "fax": "+1 (403) 262-6712",
        "email": "jane@chinookcorp.com"
    },
    {
        "lastName": "Park",
        "firstName": "Margaret",
        "title": "Sales Support Agent",
        "reportsTo": 2,
        "birthDate": "1947/09/19 00:00:00",
        "hireDate": "2003/05/03 00:00:00",
        "address": "683 10 Street SW",
        "city": "Calgary",
        "state": "AB",
        "country": "Canada",
        "postalCode": "T2P 5G3",
        "phone": "+1 (403) 263-4423",
        "fax": "+1 (403) 263-4289",
        "email": "margaret@chinookcorp.com"
    },
    {
        "lastName": "Johnson",
        "firstName": "Steve",
        "title": "Sales Support Agent",
        "reportsTo": 2,
        "birthDate": "1965/03/03 00:00:00",
        "hireDate": "2003/10/17 00:00:00",
        "address": "7727B 41 Ave",
        "city": "Calgary",
        "state": "AB",
        "country": "Canada",
        "postalCode": "T3B 1Y7",
        "phone": "1 (780) 836-9987",
        "fax": "1 (780) 836-9543",
        "email": "steve@chinookcorp.com"
    },
    {
        "lastName": "Mitchell",
        "firstName": "Michael",
        "title": "IT Manager",
        "reportsTo": 1,
        "birthDate": "1973/07/01 00:00:00",
        "hireDate": "2003/10/17 00:00:00",
        "address": "5827 Bowness Road NW",
        "city": "Calgary",
        "state": "AB",
        "country": "Canada",
        "postalCode": "T3B 0C5",
        "phone": "+1 (403) 246-9887",
        "fax": "+1 (403) 246-9899",
        "email": "michael@chinookcorp.com"
    },
    {
        "lastName": "King",
        "firstName": "Robert",
        "title": "IT Staff",
        "reportsTo": 6,
        "birthDate": "1970/05/29 00:00:00",
        "hireDate": "2004/01/02 00:00:00",
        "address": "590 Columbia Boulevard West",
        "city": "Lethbridge",
        "state": "AB",
        "country": "Canada",
        "postalCode": "T1K 5N8",
        "phone": "+1 (403) 456-9986",
        "fax": "+1 (403) 456-8485",
        "email": "robert@chinookcorp.com"
    },
    {
        "lastName": "Callahan",
        "firstName": "Laura",
        "title": "IT Staff",
        "reportsTo": 6,
        "birthDate": "1968/01/09 00:00:00",
        "hireDate": "2004/03/04 00:00:00",
        "address": "923 7 ST NW",
        "city": "Lethbridge",
        "state": "AB",
        "country": "Canada",
        "postalCode": "T1H 1Y8",
        "phone": "+1 (403) 467-3351",
        "fax": "+1 (403) 467-8772",
        "email": "laura@chinookcorp.com"
    }
]
''';
final employees = (jsonDecode(_jsonEmployees) as List).map(
  (e) => Employee.fromJsonDB(e),
);
