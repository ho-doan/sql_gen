// spell: disable

import 'dart:convert';

import 'package:example/models/track.dart';

const _jsonTracks = '''
[
    {
        "name": "For Those About To Rock (We Salute You)",
        "albumId": 1,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Angus Young, Malcolm Young, Brian Johnson",
        "milliseconds": 343719,
        "bytes": 11170334,
        "unitPrice": 0.99
    },
    {
        "name": "Balls to the Wall",
        "albumId": 2,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 342562,
        "bytes": 5510424,
        "unitPrice": 0.99
    },
    {
        "name": "Fast As a Shark",
        "albumId": 3,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": "F. Baltes, S. Kaufman, U. Dirkscneider & W. Hoffman",
        "milliseconds": 230619,
        "bytes": 3990994,
        "unitPrice": 0.99
    },
    {
        "name": "Restless and Wild",
        "albumId": 3,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": "F. Baltes, R.A. Smith-Diesel, S. Kaufman, U. Dirkscneider & W. Hoffman",
        "milliseconds": 252051,
        "bytes": 4331779,
        "unitPrice": 0.99
    },
    {
        "name": "Princess of the Dawn",
        "albumId": 3,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": "Deaffy & R.A. Smith-Diesel",
        "milliseconds": 375418,
        "bytes": 6290521,
        "unitPrice": 0.99
    },
    {
        "name": "Put The Finger On You",
        "albumId": 1,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Angus Young, Malcolm Young, Brian Johnson",
        "milliseconds": 205662,
        "bytes": 6713451,
        "unitPrice": 0.99
    },
    {
        "name": "Let's Get It Up",
        "albumId": 1,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Angus Young, Malcolm Young, Brian Johnson",
        "milliseconds": 233926,
        "bytes": 7636561,
        "unitPrice": 0.99
    },
    {
        "name": "Inject The Venom",
        "albumId": 1,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Angus Young, Malcolm Young, Brian Johnson",
        "milliseconds": 210834,
        "bytes": 6852860,
        "unitPrice": 0.99
    },
    {
        "name": "Snowballed",
        "albumId": 1,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Angus Young, Malcolm Young, Brian Johnson",
        "milliseconds": 203102,
        "bytes": 6599424,
        "unitPrice": 0.99
    },
    {
        "name": "Evil Walks",
        "albumId": 1,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Angus Young, Malcolm Young, Brian Johnson",
        "milliseconds": 263497,
        "bytes": 8611245,
        "unitPrice": 0.99
    },
    {
        "name": "C.O.D.",
        "albumId": 1,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Angus Young, Malcolm Young, Brian Johnson",
        "milliseconds": 199836,
        "bytes": 6566314,
        "unitPrice": 0.99
    },
    {
        "name": "Breaking The Rules",
        "albumId": 1,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Angus Young, Malcolm Young, Brian Johnson",
        "milliseconds": 263288,
        "bytes": 8596840,
        "unitPrice": 0.99
    },
    {
        "name": "Night Of The Long Knives",
        "albumId": 1,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Angus Young, Malcolm Young, Brian Johnson",
        "milliseconds": 205688,
        "bytes": 6706347,
        "unitPrice": 0.99
    },
    {
        "name": "Spellbound",
        "albumId": 1,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Angus Young, Malcolm Young, Brian Johnson",
        "milliseconds": 270863,
        "bytes": 8817038,
        "unitPrice": 0.99
    },
    {
        "name": "Go Down",
        "albumId": 4,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "AC/DC",
        "milliseconds": 331180,
        "bytes": 10847611,
        "unitPrice": 0.99
    },
    {
        "name": "Dog Eat Dog",
        "albumId": 4,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "AC/DC",
        "milliseconds": 215196,
        "bytes": 7032162,
        "unitPrice": 0.99
    },
    {
        "name": "Let There Be Rock",
        "albumId": 4,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "AC/DC",
        "milliseconds": 366654,
        "bytes": 12021261,
        "unitPrice": 0.99
    },
    {
        "name": "Bad Boy Boogie",
        "albumId": 4,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "AC/DC",
        "milliseconds": 267728,
        "bytes": 8776140,
        "unitPrice": 0.99
    },
    {
        "name": "Problem Child",
        "albumId": 4,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "AC/DC",
        "milliseconds": 325041,
        "bytes": 10617116,
        "unitPrice": 0.99
    },
    {
        "name": "Overdose",
        "albumId": 4,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "AC/DC",
        "milliseconds": 369319,
        "bytes": 12066294,
        "unitPrice": 0.99
    },
    {
        "name": "Hell Ain't A Bad Place To Be",
        "albumId": 4,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "AC/DC",
        "milliseconds": 254380,
        "bytes": 8331286,
        "unitPrice": 0.99
    },
    {
        "name": "Whole Lotta Rosie",
        "albumId": 4,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "AC/DC",
        "milliseconds": 323761,
        "bytes": 10547154,
        "unitPrice": 0.99
    },
    {
        "name": "Walk On Water",
        "albumId": 5,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Steven Tyler, Joe Perry, Jack Blades, Tommy Shaw",
        "milliseconds": 295680,
        "bytes": 9719579,
        "unitPrice": 0.99
    },
    {
        "name": "Love In An Elevator",
        "albumId": 5,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Steven Tyler, Joe Perry",
        "milliseconds": 321828,
        "bytes": 10552051,
        "unitPrice": 0.99
    },
    {
        "name": "Rag Doll",
        "albumId": 5,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Steven Tyler, Joe Perry, Jim Vallance, Holly Knight",
        "milliseconds": 264698,
        "bytes": 8675345,
        "unitPrice": 0.99
    },
    {
        "name": "What It Takes",
        "albumId": 5,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Steven Tyler, Joe Perry, Desmond Child",
        "milliseconds": 310622,
        "bytes": 10144730,
        "unitPrice": 0.99
    },
    {
        "name": "Dude (Looks Like A Lady)",
        "albumId": 5,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Steven Tyler, Joe Perry, Desmond Child",
        "milliseconds": 264855,
        "bytes": 8679940,
        "unitPrice": 0.99
    },
    {
        "name": "Janie's Got A Gun",
        "albumId": 5,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Steven Tyler, Tom Hamilton",
        "milliseconds": 330736,
        "bytes": 10869391,
        "unitPrice": 0.99
    },
    {
        "name": "Cryin'",
        "albumId": 5,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Steven Tyler, Joe Perry, Taylor Rhodes",
        "milliseconds": 309263,
        "bytes": 10056995,
        "unitPrice": 0.99
    },
    {
        "name": "Amazing",
        "albumId": 5,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Steven Tyler, Richie Supa",
        "milliseconds": 356519,
        "bytes": 11616195,
        "unitPrice": 0.99
    },
    {
        "name": "Blind Man",
        "albumId": 5,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Steven Tyler, Joe Perry, Taylor Rhodes",
        "milliseconds": 240718,
        "bytes": 7877453,
        "unitPrice": 0.99
    },
    {
        "name": "Deuces Are Wild",
        "albumId": 5,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Steven Tyler, Jim Vallance",
        "milliseconds": 215875,
        "bytes": 7074167,
        "unitPrice": 0.99
    },
    {
        "name": "The Other Side",
        "albumId": 5,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Steven Tyler, Jim Vallance",
        "milliseconds": 244375,
        "bytes": 7983270,
        "unitPrice": 0.99
    },
    {
        "name": "Crazy",
        "albumId": 5,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Steven Tyler, Joe Perry, Desmond Child",
        "milliseconds": 316656,
        "bytes": 10402398,
        "unitPrice": 0.99
    },
    {
        "name": "Eat The Rich",
        "albumId": 5,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Steven Tyler, Joe Perry, Jim Vallance",
        "milliseconds": 251036,
        "bytes": 8262039,
        "unitPrice": 0.99
    },
    {
        "name": "Angel",
        "albumId": 5,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Steven Tyler, Desmond Child",
        "milliseconds": 307617,
        "bytes": 9989331,
        "unitPrice": 0.99
    },
    {
        "name": "Livin' On The Edge",
        "albumId": 5,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Steven Tyler, Joe Perry, Mark Hudson",
        "milliseconds": 381231,
        "bytes": 12374569,
        "unitPrice": 0.99
    },
    {
        "name": "All I Really Want",
        "albumId": 6,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Alanis Morissette & Glenn Ballard",
        "milliseconds": 284891,
        "bytes": 9375567,
        "unitPrice": 0.99
    },
    {
        "name": "You Oughta Know",
        "albumId": 6,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Alanis Morissette & Glenn Ballard",
        "milliseconds": 249234,
        "bytes": 8196916,
        "unitPrice": 0.99
    },
    {
        "name": "Perfect",
        "albumId": 6,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Alanis Morissette & Glenn Ballard",
        "milliseconds": 188133,
        "bytes": 6145404,
        "unitPrice": 0.99
    },
    {
        "name": "Hand In My Pocket",
        "albumId": 6,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Alanis Morissette & Glenn Ballard",
        "milliseconds": 221570,
        "bytes": 7224246,
        "unitPrice": 0.99
    },
    {
        "name": "Right Through You",
        "albumId": 6,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Alanis Morissette & Glenn Ballard",
        "milliseconds": 176117,
        "bytes": 5793082,
        "unitPrice": 0.99
    },
    {
        "name": "Forgiven",
        "albumId": 6,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Alanis Morissette & Glenn Ballard",
        "milliseconds": 300355,
        "bytes": 9753256,
        "unitPrice": 0.99
    },
    {
        "name": "You Learn",
        "albumId": 6,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Alanis Morissette & Glenn Ballard",
        "milliseconds": 239699,
        "bytes": 7824837,
        "unitPrice": 0.99
    },
    {
        "name": "Head Over Feet",
        "albumId": 6,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Alanis Morissette & Glenn Ballard",
        "milliseconds": 267493,
        "bytes": 8758008,
        "unitPrice": 0.99
    },
    {
        "name": "Mary Jane",
        "albumId": 6,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Alanis Morissette & Glenn Ballard",
        "milliseconds": 280607,
        "bytes": 9163588,
        "unitPrice": 0.99
    },
    {
        "name": "Ironic",
        "albumId": 6,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Alanis Morissette & Glenn Ballard",
        "milliseconds": 229825,
        "bytes": 7598866,
        "unitPrice": 0.99
    },
    {
        "name": "Not The Doctor",
        "albumId": 6,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Alanis Morissette & Glenn Ballard",
        "milliseconds": 227631,
        "bytes": 7604601,
        "unitPrice": 0.99
    },
    {
        "name": "Wake Up",
        "albumId": 6,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Alanis Morissette & Glenn Ballard",
        "milliseconds": 293485,
        "bytes": 9703359,
        "unitPrice": 0.99
    },
    {
        "name": "You Oughta Know (Alternate)",
        "albumId": 6,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Alanis Morissette & Glenn Ballard",
        "milliseconds": 491885,
        "bytes": 16008629,
        "unitPrice": 0.99
    },
    {
        "name": "We Die Young",
        "albumId": 7,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jerry Cantrell",
        "milliseconds": 152084,
        "bytes": 4925362,
        "unitPrice": 0.99
    },
    {
        "name": "Man In The Box",
        "albumId": 7,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jerry Cantrell, Layne Staley",
        "milliseconds": 286641,
        "bytes": 9310272,
        "unitPrice": 0.99
    },
    {
        "name": "Sea Of Sorrow",
        "albumId": 7,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jerry Cantrell",
        "milliseconds": 349831,
        "bytes": 11316328,
        "unitPrice": 0.99
    },
    {
        "name": "Bleed The Freak",
        "albumId": 7,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jerry Cantrell",
        "milliseconds": 241946,
        "bytes": 7847716,
        "unitPrice": 0.99
    },
    {
        "name": "I Can't Remember",
        "albumId": 7,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jerry Cantrell, Layne Staley",
        "milliseconds": 222955,
        "bytes": 7302550,
        "unitPrice": 0.99
    },
    {
        "name": "Love, Hate, Love",
        "albumId": 7,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jerry Cantrell, Layne Staley",
        "milliseconds": 387134,
        "bytes": 12575396,
        "unitPrice": 0.99
    },
    {
        "name": "It Ain't Like That",
        "albumId": 7,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jerry Cantrell, Michael Starr, Sean Kinney",
        "milliseconds": 277577,
        "bytes": 8993793,
        "unitPrice": 0.99
    },
    {
        "name": "Sunshine",
        "albumId": 7,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jerry Cantrell",
        "milliseconds": 284969,
        "bytes": 9216057,
        "unitPrice": 0.99
    },
    {
        "name": "Put You Down",
        "albumId": 7,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jerry Cantrell",
        "milliseconds": 196231,
        "bytes": 6420530,
        "unitPrice": 0.99
    },
    {
        "name": "Confusion",
        "albumId": 7,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jerry Cantrell, Michael Starr, Layne Staley",
        "milliseconds": 344163,
        "bytes": 11183647,
        "unitPrice": 0.99
    },
    {
        "name": "I Know Somethin (Bout You)",
        "albumId": 7,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jerry Cantrell",
        "milliseconds": 261955,
        "bytes": 8497788,
        "unitPrice": 0.99
    },
    {
        "name": "Real Thing",
        "albumId": 7,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jerry Cantrell, Layne Staley",
        "milliseconds": 243879,
        "bytes": 7937731,
        "unitPrice": 0.99
    },
    {
        "name": "Desafinado",
        "albumId": 8,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": null,
        "milliseconds": 185338,
        "bytes": 5990473,
        "unitPrice": 0.99
    },
    {
        "name": "Garota De Ipanema",
        "albumId": 8,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": null,
        "milliseconds": 285048,
        "bytes": 9348428,
        "unitPrice": 0.99
    },
    {
        "name": "Samba De Uma Nota Só (One Note Samba)",
        "albumId": 8,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": null,
        "milliseconds": 137273,
        "bytes": 4535401,
        "unitPrice": 0.99
    },
    {
        "name": "Por Causa De Você",
        "albumId": 8,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": null,
        "milliseconds": 169900,
        "bytes": 5536496,
        "unitPrice": 0.99
    },
    {
        "name": "Ligia",
        "albumId": 8,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": null,
        "milliseconds": 251977,
        "bytes": 8226934,
        "unitPrice": 0.99
    },
    {
        "name": "Fotografia",
        "albumId": 8,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": null,
        "milliseconds": 129227,
        "bytes": 4198774,
        "unitPrice": 0.99
    },
    {
        "name": "Dindi (Dindi)",
        "albumId": 8,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": null,
        "milliseconds": 253178,
        "bytes": 8149148,
        "unitPrice": 0.99
    },
    {
        "name": "Se Todos Fossem Iguais A Você (Instrumental)",
        "albumId": 8,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": null,
        "milliseconds": 134948,
        "bytes": 4393377,
        "unitPrice": 0.99
    },
    {
        "name": "Falando De Amor",
        "albumId": 8,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": null,
        "milliseconds": 219663,
        "bytes": 7121735,
        "unitPrice": 0.99
    },
    {
        "name": "Angela",
        "albumId": 8,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": null,
        "milliseconds": 169508,
        "bytes": 5574957,
        "unitPrice": 0.99
    },
    {
        "name": "Corcovado (Quiet Nights Of Quiet Stars)",
        "albumId": 8,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": null,
        "milliseconds": 205662,
        "bytes": 6687994,
        "unitPrice": 0.99
    },
    {
        "name": "Outra Vez",
        "albumId": 8,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": null,
        "milliseconds": 126511,
        "bytes": 4110053,
        "unitPrice": 0.99
    },
    {
        "name": "O Boto (Bôto)",
        "albumId": 8,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": null,
        "milliseconds": 366837,
        "bytes": 12089673,
        "unitPrice": 0.99
    },
    {
        "name": "Canta, Canta Mais",
        "albumId": 8,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": null,
        "milliseconds": 271856,
        "bytes": 8719426,
        "unitPrice": 0.99
    },
    {
        "name": "Enter Sandman",
        "albumId": 9,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Apocalyptica",
        "milliseconds": 221701,
        "bytes": 7286305,
        "unitPrice": 0.99
    },
    {
        "name": "Master Of Puppets",
        "albumId": 9,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Apocalyptica",
        "milliseconds": 436453,
        "bytes": 14375310,
        "unitPrice": 0.99
    },
    {
        "name": "Harvester Of Sorrow",
        "albumId": 9,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Apocalyptica",
        "milliseconds": 374543,
        "bytes": 12372536,
        "unitPrice": 0.99
    },
    {
        "name": "The Unforgiven",
        "albumId": 9,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Apocalyptica",
        "milliseconds": 322925,
        "bytes": 10422447,
        "unitPrice": 0.99
    },
    {
        "name": "Sad But True",
        "albumId": 9,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Apocalyptica",
        "milliseconds": 288208,
        "bytes": 9405526,
        "unitPrice": 0.99
    },
    {
        "name": "Creeping Death",
        "albumId": 9,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Apocalyptica",
        "milliseconds": 308035,
        "bytes": 10110980,
        "unitPrice": 0.99
    },
    {
        "name": "Wherever I May Roam",
        "albumId": 9,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Apocalyptica",
        "milliseconds": 369345,
        "bytes": 12033110,
        "unitPrice": 0.99
    },
    {
        "name": "Welcome Home (Sanitarium)",
        "albumId": 9,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Apocalyptica",
        "milliseconds": 350197,
        "bytes": 11406431,
        "unitPrice": 0.99
    },
    {
        "name": "Cochise",
        "albumId": 10,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Audioslave/Chris Cornell",
        "milliseconds": 222380,
        "bytes": 5339931,
        "unitPrice": 0.99
    },
    {
        "name": "Show Me How to Live",
        "albumId": 10,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Audioslave/Chris Cornell",
        "milliseconds": 277890,
        "bytes": 6672176,
        "unitPrice": 0.99
    },
    {
        "name": "Gasoline",
        "albumId": 10,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Audioslave/Chris Cornell",
        "milliseconds": 279457,
        "bytes": 6709793,
        "unitPrice": 0.99
    },
    {
        "name": "What You Are",
        "albumId": 10,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Audioslave/Chris Cornell",
        "milliseconds": 249391,
        "bytes": 5988186,
        "unitPrice": 0.99
    },
    {
        "name": "Like a Stone",
        "albumId": 10,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Audioslave/Chris Cornell",
        "milliseconds": 294034,
        "bytes": 7059624,
        "unitPrice": 0.99
    },
    {
        "name": "Set It Off",
        "albumId": 10,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Audioslave/Chris Cornell",
        "milliseconds": 263262,
        "bytes": 6321091,
        "unitPrice": 0.99
    },
    {
        "name": "Shadow on the Sun",
        "albumId": 10,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Audioslave/Chris Cornell",
        "milliseconds": 343457,
        "bytes": 8245793,
        "unitPrice": 0.99
    },
    {
        "name": "I am the Highway",
        "albumId": 10,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Audioslave/Chris Cornell",
        "milliseconds": 334942,
        "bytes": 8041411,
        "unitPrice": 0.99
    },
    {
        "name": "Exploder",
        "albumId": 10,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Audioslave/Chris Cornell",
        "milliseconds": 206053,
        "bytes": 4948095,
        "unitPrice": 0.99
    },
    {
        "name": "Hypnotize",
        "albumId": 10,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Audioslave/Chris Cornell",
        "milliseconds": 206628,
        "bytes": 4961887,
        "unitPrice": 0.99
    },
    {
        "name": "Bring'em Back Alive",
        "albumId": 10,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Audioslave/Chris Cornell",
        "milliseconds": 329534,
        "bytes": 7911634,
        "unitPrice": 0.99
    },
    {
        "name": "Light My Way",
        "albumId": 10,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Audioslave/Chris Cornell",
        "milliseconds": 303595,
        "bytes": 7289084,
        "unitPrice": 0.99
    },
    {
        "name": "Getaway Car",
        "albumId": 10,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Audioslave/Chris Cornell",
        "milliseconds": 299598,
        "bytes": 7193162,
        "unitPrice": 0.99
    },
    {
        "name": "The Last Remaining Light",
        "albumId": 10,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Audioslave/Chris Cornell",
        "milliseconds": 317492,
        "bytes": 7622615,
        "unitPrice": 0.99
    },
    {
        "name": "Your Time Has Come",
        "albumId": 11,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Cornell, Commerford, Morello, Wilk",
        "milliseconds": 255529,
        "bytes": 8273592,
        "unitPrice": 0.99
    },
    {
        "name": "Out Of Exile",
        "albumId": 11,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Cornell, Commerford, Morello, Wilk",
        "milliseconds": 291291,
        "bytes": 9506571,
        "unitPrice": 0.99
    },
    {
        "name": "Be Yourself",
        "albumId": 11,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Cornell, Commerford, Morello, Wilk",
        "milliseconds": 279484,
        "bytes": 9106160,
        "unitPrice": 0.99
    },
    {
        "name": "Doesn't Remind Me",
        "albumId": 11,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Cornell, Commerford, Morello, Wilk",
        "milliseconds": 255869,
        "bytes": 8357387,
        "unitPrice": 0.99
    },
    {
        "name": "Drown Me Slowly",
        "albumId": 11,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Cornell, Commerford, Morello, Wilk",
        "milliseconds": 233691,
        "bytes": 7609178,
        "unitPrice": 0.99
    },
    {
        "name": "Heaven's Dead",
        "albumId": 11,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Cornell, Commerford, Morello, Wilk",
        "milliseconds": 276688,
        "bytes": 9006158,
        "unitPrice": 0.99
    },
    {
        "name": "The Worm",
        "albumId": 11,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Cornell, Commerford, Morello, Wilk",
        "milliseconds": 237714,
        "bytes": 7710800,
        "unitPrice": 0.99
    },
    {
        "name": "Man Or Animal",
        "albumId": 11,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Cornell, Commerford, Morello, Wilk",
        "milliseconds": 233195,
        "bytes": 7542942,
        "unitPrice": 0.99
    },
    {
        "name": "Yesterday To Tomorrow",
        "albumId": 11,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Cornell, Commerford, Morello, Wilk",
        "milliseconds": 273763,
        "bytes": 8944205,
        "unitPrice": 0.99
    },
    {
        "name": "Dandelion",
        "albumId": 11,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Cornell, Commerford, Morello, Wilk",
        "milliseconds": 278125,
        "bytes": 9003592,
        "unitPrice": 0.99
    },
    {
        "name": "#1 Zero",
        "albumId": 11,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Cornell, Commerford, Morello, Wilk",
        "milliseconds": 299102,
        "bytes": 9731988,
        "unitPrice": 0.99
    },
    {
        "name": "The Curse",
        "albumId": 11,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Cornell, Commerford, Morello, Wilk",
        "milliseconds": 309786,
        "bytes": 10029406,
        "unitPrice": 0.99
    },
    {
        "name": "Money",
        "albumId": 12,
        "mediaTypeId": 1,
        "genreId": 5,
        "composer": "Berry Gordy, Jr./Janie Bradford",
        "milliseconds": 147591,
        "bytes": 2365897,
        "unitPrice": 0.99
    },
    {
        "name": "Long Tall Sally",
        "albumId": 12,
        "mediaTypeId": 1,
        "genreId": 5,
        "composer": "Enotris Johnson/Little Richard/Robert "Bumps" Blackwell",
        "milliseconds": 106396,
        "bytes": 1707084,
        "unitPrice": 0.99
    },
    {
        "name": "Bad Boy",
        "albumId": 12,
        "mediaTypeId": 1,
        "genreId": 5,
        "composer": "Larry Williams",
        "milliseconds": 116088,
        "bytes": 1862126,
        "unitPrice": 0.99
    },
    {
        "name": "Twist And Shout",
        "albumId": 12,
        "mediaTypeId": 1,
        "genreId": 5,
        "composer": "Bert Russell/Phil Medley",
        "milliseconds": 161123,
        "bytes": 2582553,
        "unitPrice": 0.99
    },
    {
        "name": "Please Mr. Postman",
        "albumId": 12,
        "mediaTypeId": 1,
        "genreId": 5,
        "composer": "Brian Holland/Freddie Gorman/Georgia Dobbins/Robert Bateman/William Garrett",
        "milliseconds": 137639,
        "bytes": 2206986,
        "unitPrice": 0.99
    },
    {
        "name": "C'Mon Everybody",
        "albumId": 12,
        "mediaTypeId": 1,
        "genreId": 5,
        "composer": "Eddie Cochran/Jerry Capehart",
        "milliseconds": 140199,
        "bytes": 2247846,
        "unitPrice": 0.99
    },
    {
        "name": "Rock 'N' Roll Music",
        "albumId": 12,
        "mediaTypeId": 1,
        "genreId": 5,
        "composer": "Chuck Berry",
        "milliseconds": 141923,
        "bytes": 2276788,
        "unitPrice": 0.99
    },
    {
        "name": "Slow Down",
        "albumId": 12,
        "mediaTypeId": 1,
        "genreId": 5,
        "composer": "Larry Williams",
        "milliseconds": 163265,
        "bytes": 2616981,
        "unitPrice": 0.99
    },
    {
        "name": "Roadrunner",
        "albumId": 12,
        "mediaTypeId": 1,
        "genreId": 5,
        "composer": "Bo Diddley",
        "milliseconds": 143595,
        "bytes": 2301989,
        "unitPrice": 0.99
    },
    {
        "name": "Carol",
        "albumId": 12,
        "mediaTypeId": 1,
        "genreId": 5,
        "composer": "Chuck Berry",
        "milliseconds": 143830,
        "bytes": 2306019,
        "unitPrice": 0.99
    },
    {
        "name": "Good Golly Miss Molly",
        "albumId": 12,
        "mediaTypeId": 1,
        "genreId": 5,
        "composer": "Little Richard",
        "milliseconds": 106266,
        "bytes": 1704918,
        "unitPrice": 0.99
    },
    {
        "name": "20 Flight Rock",
        "albumId": 12,
        "mediaTypeId": 1,
        "genreId": 5,
        "composer": "Ned Fairchild",
        "milliseconds": 107807,
        "bytes": 1299960,
        "unitPrice": 0.99
    },
    {
        "name": "Quadrant",
        "albumId": 13,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Billy Cobham",
        "milliseconds": 261851,
        "bytes": 8538199,
        "unitPrice": 0.99
    },
    {
        "name": "Snoopy's search-Red baron",
        "albumId": 13,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Billy Cobham",
        "milliseconds": 456071,
        "bytes": 15075616,
        "unitPrice": 0.99
    },
    {
        "name": "Spanish moss-"A sound portrait"-Spanish moss",
        "albumId": 13,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Billy Cobham",
        "milliseconds": 248084,
        "bytes": 8217867,
        "unitPrice": 0.99
    },
    {
        "name": "Moon germs",
        "albumId": 13,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Billy Cobham",
        "milliseconds": 294060,
        "bytes": 9714812,
        "unitPrice": 0.99
    },
    {
        "name": "Stratus",
        "albumId": 13,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Billy Cobham",
        "milliseconds": 582086,
        "bytes": 19115680,
        "unitPrice": 0.99
    },
    {
        "name": "The pleasant pheasant",
        "albumId": 13,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Billy Cobham",
        "milliseconds": 318066,
        "bytes": 10630578,
        "unitPrice": 0.99
    },
    {
        "name": "Solo-Panhandler",
        "albumId": 13,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Billy Cobham",
        "milliseconds": 246151,
        "bytes": 8230661,
        "unitPrice": 0.99
    },
    {
        "name": "Do what cha wanna",
        "albumId": 13,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "George Duke",
        "milliseconds": 274155,
        "bytes": 9018565,
        "unitPrice": 0.99
    },
    {
        "name": "Intro/ Low Down",
        "albumId": 14,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": null,
        "milliseconds": 323683,
        "bytes": 10642901,
        "unitPrice": 0.99
    },
    {
        "name": "13 Years Of Grief",
        "albumId": 14,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": null,
        "milliseconds": 246987,
        "bytes": 8137421,
        "unitPrice": 0.99
    },
    {
        "name": "Stronger Than Death",
        "albumId": 14,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": null,
        "milliseconds": 300747,
        "bytes": 9869647,
        "unitPrice": 0.99
    },
    {
        "name": "All For You",
        "albumId": 14,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": null,
        "milliseconds": 235833,
        "bytes": 7726948,
        "unitPrice": 0.99
    },
    {
        "name": "Super Terrorizer",
        "albumId": 14,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": null,
        "milliseconds": 319373,
        "bytes": 10513905,
        "unitPrice": 0.99
    },
    {
        "name": "Phoney Smile Fake Hellos",
        "albumId": 14,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": null,
        "milliseconds": 273606,
        "bytes": 9011701,
        "unitPrice": 0.99
    },
    {
        "name": "Lost My Better Half",
        "albumId": 14,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": null,
        "milliseconds": 284081,
        "bytes": 9355309,
        "unitPrice": 0.99
    },
    {
        "name": "Bored To Tears",
        "albumId": 14,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": null,
        "milliseconds": 247327,
        "bytes": 8130090,
        "unitPrice": 0.99
    },
    {
        "name": "A.N.D.R.O.T.A.Z.",
        "albumId": 14,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": null,
        "milliseconds": 266266,
        "bytes": 8574746,
        "unitPrice": 0.99
    },
    {
        "name": "Born To Booze",
        "albumId": 14,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": null,
        "milliseconds": 282122,
        "bytes": 9257358,
        "unitPrice": 0.99
    },
    {
        "name": "World Of Trouble",
        "albumId": 14,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": null,
        "milliseconds": 359157,
        "bytes": 11820932,
        "unitPrice": 0.99
    },
    {
        "name": "No More Tears",
        "albumId": 14,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": null,
        "milliseconds": 555075,
        "bytes": 18041629,
        "unitPrice": 0.99
    },
    {
        "name": "The Begining... At Last",
        "albumId": 14,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": null,
        "milliseconds": 365662,
        "bytes": 11965109,
        "unitPrice": 0.99
    },
    {
        "name": "Heart Of Gold",
        "albumId": 15,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": null,
        "milliseconds": 194873,
        "bytes": 6417460,
        "unitPrice": 0.99
    },
    {
        "name": "Snowblind",
        "albumId": 15,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": null,
        "milliseconds": 420022,
        "bytes": 13842549,
        "unitPrice": 0.99
    },
    {
        "name": "Like A Bird",
        "albumId": 15,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": null,
        "milliseconds": 276532,
        "bytes": 9115657,
        "unitPrice": 0.99
    },
    {
        "name": "Blood In The Wall",
        "albumId": 15,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": null,
        "milliseconds": 284368,
        "bytes": 9359475,
        "unitPrice": 0.99
    },
    {
        "name": "The Beginning...At Last",
        "albumId": 15,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": null,
        "milliseconds": 271960,
        "bytes": 8975814,
        "unitPrice": 0.99
    },
    {
        "name": "Black Sabbath",
        "albumId": 16,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": null,
        "milliseconds": 382066,
        "bytes": 12440200,
        "unitPrice": 0.99
    },
    {
        "name": "The Wizard",
        "albumId": 16,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": null,
        "milliseconds": 264829,
        "bytes": 8646737,
        "unitPrice": 0.99
    },
    {
        "name": "Behind The Wall Of Sleep",
        "albumId": 16,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": null,
        "milliseconds": 217573,
        "bytes": 7169049,
        "unitPrice": 0.99
    },
    {
        "name": "N.I.B.",
        "albumId": 16,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": null,
        "milliseconds": 368770,
        "bytes": 12029390,
        "unitPrice": 0.99
    },
    {
        "name": "Evil Woman",
        "albumId": 16,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": null,
        "milliseconds": 204930,
        "bytes": 6655170,
        "unitPrice": 0.99
    },
    {
        "name": "Sleeping Village",
        "albumId": 16,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": null,
        "milliseconds": 644571,
        "bytes": 21128525,
        "unitPrice": 0.99
    },
    {
        "name": "Warning",
        "albumId": 16,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": null,
        "milliseconds": 212062,
        "bytes": 6893363,
        "unitPrice": 0.99
    },
    {
        "name": "Wheels Of Confusion / The Straightener",
        "albumId": 17,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne",
        "milliseconds": 494524,
        "bytes": 16065830,
        "unitPrice": 0.99
    },
    {
        "name": "Tomorrow's Dream",
        "albumId": 17,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne",
        "milliseconds": 192496,
        "bytes": 6252071,
        "unitPrice": 0.99
    },
    {
        "name": "Changes",
        "albumId": 17,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne",
        "milliseconds": 286275,
        "bytes": 9175517,
        "unitPrice": 0.99
    },
    {
        "name": "FX",
        "albumId": 17,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne",
        "milliseconds": 103157,
        "bytes": 3331776,
        "unitPrice": 0.99
    },
    {
        "name": "Supernaut",
        "albumId": 17,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne",
        "milliseconds": 285779,
        "bytes": 9245971,
        "unitPrice": 0.99
    },
    {
        "name": "Snowblind",
        "albumId": 17,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne",
        "milliseconds": 331676,
        "bytes": 10813386,
        "unitPrice": 0.99
    },
    {
        "name": "Cornucopia",
        "albumId": 17,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne",
        "milliseconds": 234814,
        "bytes": 7653880,
        "unitPrice": 0.99
    },
    {
        "name": "Laguna Sunrise",
        "albumId": 17,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne",
        "milliseconds": 173087,
        "bytes": 5671374,
        "unitPrice": 0.99
    },
    {
        "name": "St. Vitus Dance",
        "albumId": 17,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne",
        "milliseconds": 149655,
        "bytes": 4884969,
        "unitPrice": 0.99
    },
    {
        "name": "Under The Sun/Every Day Comes and Goes",
        "albumId": 17,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne",
        "milliseconds": 350458,
        "bytes": 11360486,
        "unitPrice": 0.99
    },
    {
        "name": "Smoked Pork",
        "albumId": 18,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": null,
        "milliseconds": 47333,
        "bytes": 1549074,
        "unitPrice": 0.99
    },
    {
        "name": "Body Count's In The House",
        "albumId": 18,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": null,
        "milliseconds": 204251,
        "bytes": 6715413,
        "unitPrice": 0.99
    },
    {
        "name": "Now Sports",
        "albumId": 18,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": null,
        "milliseconds": 4884,
        "bytes": 161266,
        "unitPrice": 0.99
    },
    {
        "name": "Body Count",
        "albumId": 18,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": null,
        "milliseconds": 317936,
        "bytes": 10489139,
        "unitPrice": 0.99
    },
    {
        "name": "A Statistic",
        "albumId": 18,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": null,
        "milliseconds": 6373,
        "bytes": 211997,
        "unitPrice": 0.99
    },
    {
        "name": "Bowels Of The Devil",
        "albumId": 18,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": null,
        "milliseconds": 223216,
        "bytes": 7324125,
        "unitPrice": 0.99
    },
    {
        "name": "The Real Problem",
        "albumId": 18,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": null,
        "milliseconds": 11650,
        "bytes": 387360,
        "unitPrice": 0.99
    },
    {
        "name": "KKK Bitch",
        "albumId": 18,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": null,
        "milliseconds": 173008,
        "bytes": 5709631,
        "unitPrice": 0.99
    },
    {
        "name": "D Note",
        "albumId": 18,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": null,
        "milliseconds": 95738,
        "bytes": 3067064,
        "unitPrice": 0.99
    },
    {
        "name": "Voodoo",
        "albumId": 18,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": null,
        "milliseconds": 300721,
        "bytes": 9875962,
        "unitPrice": 0.99
    },
    {
        "name": "The Winner Loses",
        "albumId": 18,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": null,
        "milliseconds": 392254,
        "bytes": 12843821,
        "unitPrice": 0.99
    },
    {
        "name": "There Goes The Neighborhood",
        "albumId": 18,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": null,
        "milliseconds": 350171,
        "bytes": 11443471,
        "unitPrice": 0.99
    },
    {
        "name": "Oprah",
        "albumId": 18,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": null,
        "milliseconds": 6635,
        "bytes": 224313,
        "unitPrice": 0.99
    },
    {
        "name": "Evil Dick",
        "albumId": 18,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": null,
        "milliseconds": 239020,
        "bytes": 7828873,
        "unitPrice": 0.99
    },
    {
        "name": "Body Count Anthem",
        "albumId": 18,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": null,
        "milliseconds": 166426,
        "bytes": 5463690,
        "unitPrice": 0.99
    },
    {
        "name": "Momma's Gotta Die Tonight",
        "albumId": 18,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": null,
        "milliseconds": 371539,
        "bytes": 12122946,
        "unitPrice": 0.99
    },
    {
        "name": "Freedom Of Speech",
        "albumId": 18,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": null,
        "milliseconds": 281234,
        "bytes": 9337917,
        "unitPrice": 0.99
    },
    {
        "name": "King In Crimson",
        "albumId": 19,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Roy Z",
        "milliseconds": 283167,
        "bytes": 9218499,
        "unitPrice": 0.99
    },
    {
        "name": "Chemical Wedding",
        "albumId": 19,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Roy Z",
        "milliseconds": 246177,
        "bytes": 8022764,
        "unitPrice": 0.99
    },
    {
        "name": "The Tower",
        "albumId": 19,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Roy Z",
        "milliseconds": 285257,
        "bytes": 9435693,
        "unitPrice": 0.99
    },
    {
        "name": "Killing Floor",
        "albumId": 19,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Adrian Smith",
        "milliseconds": 269557,
        "bytes": 8854240,
        "unitPrice": 0.99
    },
    {
        "name": "Book Of Thel",
        "albumId": 19,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Eddie Casillas/Roy Z",
        "milliseconds": 494393,
        "bytes": 16034404,
        "unitPrice": 0.99
    },
    {
        "name": "Gates Of Urizen",
        "albumId": 19,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Roy Z",
        "milliseconds": 265351,
        "bytes": 8627004,
        "unitPrice": 0.99
    },
    {
        "name": "Jerusalem",
        "albumId": 19,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Roy Z",
        "milliseconds": 402390,
        "bytes": 13194463,
        "unitPrice": 0.99
    },
    {
        "name": "Trupets Of Jericho",
        "albumId": 19,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Roy Z",
        "milliseconds": 359131,
        "bytes": 11820908,
        "unitPrice": 0.99
    },
    {
        "name": "Machine Men",
        "albumId": 19,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Adrian Smith",
        "milliseconds": 341655,
        "bytes": 11138147,
        "unitPrice": 0.99
    },
    {
        "name": "The Alchemist",
        "albumId": 19,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Roy Z",
        "milliseconds": 509413,
        "bytes": 16545657,
        "unitPrice": 0.99
    },
    {
        "name": "Realword",
        "albumId": 19,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Roy Z",
        "milliseconds": 237531,
        "bytes": 7802095,
        "unitPrice": 0.99
    },
    {
        "name": "First Time I Met The Blues",
        "albumId": 20,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Eurreal Montgomery",
        "milliseconds": 140434,
        "bytes": 4604995,
        "unitPrice": 0.99
    },
    {
        "name": "Let Me Love You Baby",
        "albumId": 20,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Willie Dixon",
        "milliseconds": 175386,
        "bytes": 5716994,
        "unitPrice": 0.99
    },
    {
        "name": "Stone Crazy",
        "albumId": 20,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Buddy Guy",
        "milliseconds": 433397,
        "bytes": 14184984,
        "unitPrice": 0.99
    },
    {
        "name": "Pretty Baby",
        "albumId": 20,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Willie Dixon",
        "milliseconds": 237662,
        "bytes": 7848282,
        "unitPrice": 0.99
    },
    {
        "name": "When My Left Eye Jumps",
        "albumId": 20,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Al Perkins/Willie Dixon",
        "milliseconds": 235311,
        "bytes": 7685363,
        "unitPrice": 0.99
    },
    {
        "name": "Leave My Girl Alone",
        "albumId": 20,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Buddy Guy",
        "milliseconds": 204721,
        "bytes": 6859518,
        "unitPrice": 0.99
    },
    {
        "name": "She Suits Me To A Tee",
        "albumId": 20,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Buddy Guy",
        "milliseconds": 136803,
        "bytes": 4456321,
        "unitPrice": 0.99
    },
    {
        "name": "Keep It To Myself (Aka Keep It To Yourself)",
        "albumId": 20,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Sonny Boy Williamson [I]",
        "milliseconds": 166060,
        "bytes": 5487056,
        "unitPrice": 0.99
    },
    {
        "name": "My Time After Awhile",
        "albumId": 20,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Robert Geddins/Ron Badger/Sheldon Feinberg",
        "milliseconds": 182491,
        "bytes": 6022698,
        "unitPrice": 0.99
    },
    {
        "name": "Too Many Ways (Alternate)",
        "albumId": 20,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Willie Dixon",
        "milliseconds": 135053,
        "bytes": 4459946,
        "unitPrice": 0.99
    },
    {
        "name": "Talkin' 'Bout Women Obviously",
        "albumId": 20,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Amos Blakemore/Buddy Guy",
        "milliseconds": 589531,
        "bytes": 19161377,
        "unitPrice": 0.99
    },
    {
        "name": "Jorge Da Capadócia",
        "albumId": 21,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Jorge Ben",
        "milliseconds": 177397,
        "bytes": 5842196,
        "unitPrice": 0.99
    },
    {
        "name": "Prenda Minha",
        "albumId": 21,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Tradicional",
        "milliseconds": 99369,
        "bytes": 3225364,
        "unitPrice": 0.99
    },
    {
        "name": "Meditação",
        "albumId": 21,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Tom Jobim - Newton Mendoça",
        "milliseconds": 148793,
        "bytes": 4865597,
        "unitPrice": 0.99
    },
    {
        "name": "Terra",
        "albumId": 21,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Caetano Veloso",
        "milliseconds": 482429,
        "bytes": 15889054,
        "unitPrice": 0.99
    },
    {
        "name": "Eclipse Oculto",
        "albumId": 21,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Caetano Veloso",
        "milliseconds": 221936,
        "bytes": 7382703,
        "unitPrice": 0.99
    },
    {
        "name": "Texto "Verdade Tropical"",
        "albumId": 21,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Caetano Veloso",
        "milliseconds": 84088,
        "bytes": 2752161,
        "unitPrice": 0.99
    },
    {
        "name": "Bem Devagar",
        "albumId": 21,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Gilberto Gil",
        "milliseconds": 133172,
        "bytes": 4333651,
        "unitPrice": 0.99
    },
    {
        "name": "Drão",
        "albumId": 21,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Gilberto Gil",
        "milliseconds": 156264,
        "bytes": 5065932,
        "unitPrice": 0.99
    },
    {
        "name": "Saudosismo",
        "albumId": 21,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Caetano Veloso",
        "milliseconds": 144326,
        "bytes": 4726981,
        "unitPrice": 0.99
    },
    {
        "name": "Carolina",
        "albumId": 21,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Chico Buarque",
        "milliseconds": 181812,
        "bytes": 5924159,
        "unitPrice": 0.99
    },
    {
        "name": "Sozinho",
        "albumId": 21,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Peninha",
        "milliseconds": 190589,
        "bytes": 6253200,
        "unitPrice": 0.99
    },
    {
        "name": "Esse Cara",
        "albumId": 21,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Caetano Veloso",
        "milliseconds": 223111,
        "bytes": 7217126,
        "unitPrice": 0.99
    },
    {
        "name": "Mel",
        "albumId": 21,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Caetano Veloso - Waly Salomão",
        "milliseconds": 294765,
        "bytes": 9854062,
        "unitPrice": 0.99
    },
    {
        "name": "Linha Do Equador",
        "albumId": 21,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Caetano Veloso - Djavan",
        "milliseconds": 299337,
        "bytes": 10003747,
        "unitPrice": 0.99
    },
    {
        "name": "Odara",
        "albumId": 21,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Caetano Veloso",
        "milliseconds": 141270,
        "bytes": 4704104,
        "unitPrice": 0.99
    },
    {
        "name": "A Luz De Tieta",
        "albumId": 21,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Caetano Veloso",
        "milliseconds": 251742,
        "bytes": 8507446,
        "unitPrice": 0.99
    },
    {
        "name": "Atrás Da Verd-E-Rosa Só Não Vai Quem Já Morreu",
        "albumId": 21,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "David Corrêa - Paulinho Carvalho - Carlos Sena - Bira do Ponto",
        "milliseconds": 307252,
        "bytes": 10364247,
        "unitPrice": 0.99
    },
    {
        "name": "Vida Boa",
        "albumId": 21,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Fausto Nilo - Armandinho",
        "milliseconds": 281730,
        "bytes": 9411272,
        "unitPrice": 0.99
    },
    {
        "name": "Sozinho (Hitmakers Classic Mix)",
        "albumId": 22,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 436636,
        "bytes": 14462072,
        "unitPrice": 0.99
    },
    {
        "name": "Sozinho (Hitmakers Classic Radio Edit)",
        "albumId": 22,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 195004,
        "bytes": 6455134,
        "unitPrice": 0.99
    },
    {
        "name": "Sozinho (Caêdrum 'n' Bass)",
        "albumId": 22,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 328071,
        "bytes": 10975007,
        "unitPrice": 0.99
    },
    {
        "name": "Carolina",
        "albumId": 23,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 163056,
        "bytes": 5375395,
        "unitPrice": 0.99
    },
    {
        "name": "Essa Moça Ta Diferente",
        "albumId": 23,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 167235,
        "bytes": 5568574,
        "unitPrice": 0.99
    },
    {
        "name": "Vai Passar",
        "albumId": 23,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 369763,
        "bytes": 12359161,
        "unitPrice": 0.99
    },
    {
        "name": "Samba De Orly",
        "albumId": 23,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 162429,
        "bytes": 5431854,
        "unitPrice": 0.99
    },
    {
        "name": "Bye, Bye Brasil",
        "albumId": 23,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 283402,
        "bytes": 9499590,
        "unitPrice": 0.99
    },
    {
        "name": "Atras Da Porta",
        "albumId": 23,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 189675,
        "bytes": 6132843,
        "unitPrice": 0.99
    },
    {
        "name": "Tatuagem",
        "albumId": 23,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 172120,
        "bytes": 5645703,
        "unitPrice": 0.99
    },
    {
        "name": "O Que Será (À Flor Da Terra)",
        "albumId": 23,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 167288,
        "bytes": 5574848,
        "unitPrice": 0.99
    },
    {
        "name": "Morena De Angola",
        "albumId": 23,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 186801,
        "bytes": 6373932,
        "unitPrice": 0.99
    },
    {
        "name": "Apesar De Você",
        "albumId": 23,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 234501,
        "bytes": 7886937,
        "unitPrice": 0.99
    },
    {
        "name": "A Banda",
        "albumId": 23,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 132493,
        "bytes": 4349539,
        "unitPrice": 0.99
    },
    {
        "name": "Minha Historia",
        "albumId": 23,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 182256,
        "bytes": 6029673,
        "unitPrice": 0.99
    },
    {
        "name": "Com Açúcar E Com Afeto",
        "albumId": 23,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 175386,
        "bytes": 5846442,
        "unitPrice": 0.99
    },
    {
        "name": "Brejo Da Cruz",
        "albumId": 23,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 214099,
        "bytes": 7270749,
        "unitPrice": 0.99
    },
    {
        "name": "Meu Caro Amigo",
        "albumId": 23,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 260257,
        "bytes": 8778172,
        "unitPrice": 0.99
    },
    {
        "name": "Geni E O Zepelim",
        "albumId": 23,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 317570,
        "bytes": 10342226,
        "unitPrice": 0.99
    },
    {
        "name": "Trocando Em Miúdos",
        "albumId": 23,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 169717,
        "bytes": 5461468,
        "unitPrice": 0.99
    },
    {
        "name": "Vai Trabalhar Vagabundo",
        "albumId": 23,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 139154,
        "bytes": 4693941,
        "unitPrice": 0.99
    },
    {
        "name": "Gota D'água",
        "albumId": 23,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 153208,
        "bytes": 5074189,
        "unitPrice": 0.99
    },
    {
        "name": "Construção / Deus Lhe Pague",
        "albumId": 23,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 383059,
        "bytes": 12675305,
        "unitPrice": 0.99
    },
    {
        "name": "Mateus Enter",
        "albumId": 24,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Chico Science",
        "milliseconds": 33149,
        "bytes": 1103013,
        "unitPrice": 0.99
    },
    {
        "name": "O Cidadão Do Mundo",
        "albumId": 24,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Chico Science",
        "milliseconds": 200933,
        "bytes": 6724966,
        "unitPrice": 0.99
    },
    {
        "name": "Etnia",
        "albumId": 24,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Chico Science",
        "milliseconds": 152555,
        "bytes": 5061413,
        "unitPrice": 0.99
    },
    {
        "name": "Quilombo Groove [Instrumental]",
        "albumId": 24,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Chico Science",
        "milliseconds": 151823,
        "bytes": 5042447,
        "unitPrice": 0.99
    },
    {
        "name": "Macô",
        "albumId": 24,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Chico Science",
        "milliseconds": 249600,
        "bytes": 8253934,
        "unitPrice": 0.99
    },
    {
        "name": "Um Passeio No Mundo Livre",
        "albumId": 24,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Chico Science",
        "milliseconds": 240091,
        "bytes": 7984291,
        "unitPrice": 0.99
    },
    {
        "name": "Samba Do Lado",
        "albumId": 24,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Chico Science",
        "milliseconds": 227317,
        "bytes": 7541688,
        "unitPrice": 0.99
    },
    {
        "name": "Maracatu Atômico",
        "albumId": 24,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Chico Science",
        "milliseconds": 284264,
        "bytes": 9670057,
        "unitPrice": 0.99
    },
    {
        "name": "O Encontro De Isaac Asimov Com Santos Dumont No Céu",
        "albumId": 24,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Chico Science",
        "milliseconds": 99108,
        "bytes": 3240816,
        "unitPrice": 0.99
    },
    {
        "name": "Corpo De Lama",
        "albumId": 24,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Chico Science",
        "milliseconds": 232672,
        "bytes": 7714954,
        "unitPrice": 0.99
    },
    {
        "name": "Sobremesa",
        "albumId": 24,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Chico Science",
        "milliseconds": 240091,
        "bytes": 7960868,
        "unitPrice": 0.99
    },
    {
        "name": "Manguetown",
        "albumId": 24,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Chico Science",
        "milliseconds": 194560,
        "bytes": 6475159,
        "unitPrice": 0.99
    },
    {
        "name": "Um Satélite Na Cabeça",
        "albumId": 24,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Chico Science",
        "milliseconds": 126615,
        "bytes": 4272821,
        "unitPrice": 0.99
    },
    {
        "name": "Baião Ambiental [Instrumental]",
        "albumId": 24,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Chico Science",
        "milliseconds": 152659,
        "bytes": 5198539,
        "unitPrice": 0.99
    },
    {
        "name": "Sangue De Bairro",
        "albumId": 24,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Chico Science",
        "milliseconds": 132231,
        "bytes": 4415557,
        "unitPrice": 0.99
    },
    {
        "name": "Enquanto O Mundo Explode",
        "albumId": 24,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Chico Science",
        "milliseconds": 88764,
        "bytes": 2968650,
        "unitPrice": 0.99
    },
    {
        "name": "Interlude Zumbi",
        "albumId": 24,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Chico Science",
        "milliseconds": 71627,
        "bytes": 2408550,
        "unitPrice": 0.99
    },
    {
        "name": "Criança De Domingo",
        "albumId": 24,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Chico Science",
        "milliseconds": 208222,
        "bytes": 6984813,
        "unitPrice": 0.99
    },
    {
        "name": "Amor De Muito",
        "albumId": 24,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Chico Science",
        "milliseconds": 175333,
        "bytes": 5881293,
        "unitPrice": 0.99
    },
    {
        "name": "Samidarish [Instrumental]",
        "albumId": 24,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Chico Science",
        "milliseconds": 272431,
        "bytes": 8911641,
        "unitPrice": 0.99
    },
    {
        "name": "Maracatu Atômico [Atomic Version]",
        "albumId": 24,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Chico Science",
        "milliseconds": 273084,
        "bytes": 9019677,
        "unitPrice": 0.99
    },
    {
        "name": "Maracatu Atômico [Ragga Mix]",
        "albumId": 24,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Chico Science",
        "milliseconds": 210155,
        "bytes": 6986421,
        "unitPrice": 0.99
    },
    {
        "name": "Maracatu Atômico [Trip Hop]",
        "albumId": 24,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Chico Science",
        "milliseconds": 221492,
        "bytes": 7380787,
        "unitPrice": 0.99
    },
    {
        "name": "Banditismo Por Uma Questa",
        "albumId": 25,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 307095,
        "bytes": 10251097,
        "unitPrice": 0.99
    },
    {
        "name": "Banditismo Por Uma Questa",
        "albumId": 25,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 243644,
        "bytes": 8147224,
        "unitPrice": 0.99
    },
    {
        "name": "Rios Pontes & Overdrives",
        "albumId": 25,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 286720,
        "bytes": 9659152,
        "unitPrice": 0.99
    },
    {
        "name": "Cidade",
        "albumId": 25,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 216346,
        "bytes": 7241817,
        "unitPrice": 0.99
    },
    {
        "name": "Praiera",
        "albumId": 25,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 183640,
        "bytes": 6172781,
        "unitPrice": 0.99
    },
    {
        "name": "Samba Makossa",
        "albumId": 25,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 271856,
        "bytes": 9095410,
        "unitPrice": 0.99
    },
    {
        "name": "Da Lama Ao Caos",
        "albumId": 25,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 251559,
        "bytes": 8378065,
        "unitPrice": 0.99
    },
    {
        "name": "Maracatu De Tiro Certeiro",
        "albumId": 25,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 88868,
        "bytes": 2901397,
        "unitPrice": 0.99
    },
    {
        "name": "Salustiano Song",
        "albumId": 25,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 215405,
        "bytes": 7183969,
        "unitPrice": 0.99
    },
    {
        "name": "Antene Se",
        "albumId": 25,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 248372,
        "bytes": 8253618,
        "unitPrice": 0.99
    },
    {
        "name": "Risoflora",
        "albumId": 25,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 105586,
        "bytes": 3536938,
        "unitPrice": 0.99
    },
    {
        "name": "Lixo Do Mangue",
        "albumId": 25,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 193253,
        "bytes": 6534200,
        "unitPrice": 0.99
    },
    {
        "name": "Computadores Fazem Arte",
        "albumId": 25,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 404323,
        "bytes": 13702771,
        "unitPrice": 0.99
    },
    {
        "name": "Girassol",
        "albumId": 26,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": "Bino Farias/Da Gama/Lazão/Pedro Luis/Toni Garrido",
        "milliseconds": 249808,
        "bytes": 8327676,
        "unitPrice": 0.99
    },
    {
        "name": "A Sombra Da Maldade",
        "albumId": 26,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": "Da Gama/Toni Garrido",
        "milliseconds": 230922,
        "bytes": 7697230,
        "unitPrice": 0.99
    },
    {
        "name": "Johnny B. Goode",
        "albumId": 26,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": "Chuck Berry",
        "milliseconds": 254615,
        "bytes": 8505985,
        "unitPrice": 0.99
    },
    {
        "name": "Soldado Da Paz",
        "albumId": 26,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": "Herbert Vianna",
        "milliseconds": 194220,
        "bytes": 6455080,
        "unitPrice": 0.99
    },
    {
        "name": "Firmamento",
        "albumId": 26,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": "Bino Farias/Da Gama/Henry Lawes/Lazão/Toni Garrido/Winston Foser-Vers",
        "milliseconds": 222145,
        "bytes": 7402658,
        "unitPrice": 0.99
    },
    {
        "name": "Extra",
        "albumId": 26,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": "Gilberto Gil",
        "milliseconds": 304352,
        "bytes": 10078050,
        "unitPrice": 0.99
    },
    {
        "name": "O Erê",
        "albumId": 26,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": "Bernardo Vilhena/Bino Farias/Da Gama/Lazão/Toni Garrido",
        "milliseconds": 236382,
        "bytes": 7866924,
        "unitPrice": 0.99
    },
    {
        "name": "Podes Crer",
        "albumId": 26,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": "Bino Farias/Da Gama/Lazão/Toni Garrido",
        "milliseconds": 232280,
        "bytes": 7747747,
        "unitPrice": 0.99
    },
    {
        "name": "A Estrada",
        "albumId": 26,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": "Bino Farias/Da Gama/Lazão/Toni Garrido",
        "milliseconds": 248842,
        "bytes": 8275673,
        "unitPrice": 0.99
    },
    {
        "name": "Berlim",
        "albumId": 26,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": "Da Gama/Toni Garrido",
        "milliseconds": 207542,
        "bytes": 6920424,
        "unitPrice": 0.99
    },
    {
        "name": "Já Foi",
        "albumId": 26,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": "Bino Farias/Da Gama/Lazão/Toni Garrido",
        "milliseconds": 221544,
        "bytes": 7388466,
        "unitPrice": 0.99
    },
    {
        "name": "Onde Você Mora?",
        "albumId": 26,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": "Marisa Monte/Nando Reis",
        "milliseconds": 256026,
        "bytes": 8502588,
        "unitPrice": 0.99
    },
    {
        "name": "Pensamento",
        "albumId": 26,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": "Bino Farias/Da Gamma/Lazão/Rás Bernard",
        "milliseconds": 173008,
        "bytes": 5748424,
        "unitPrice": 0.99
    },
    {
        "name": "Conciliação",
        "albumId": 26,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": "Da Gama/Lazão/Rás Bernardo",
        "milliseconds": 257619,
        "bytes": 8552474,
        "unitPrice": 0.99
    },
    {
        "name": "Realidade Virtual",
        "albumId": 26,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": "Bino Farias/Da Gama/Lazão/Toni Garrido",
        "milliseconds": 195239,
        "bytes": 6503533,
        "unitPrice": 0.99
    },
    {
        "name": "Mensagem",
        "albumId": 26,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": "Bino Farias/Da Gama/Lazão/Rás Bernardo",
        "milliseconds": 225332,
        "bytes": 7488852,
        "unitPrice": 0.99
    },
    {
        "name": "A Cor Do Sol",
        "albumId": 26,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": "Bernardo Vilhena/Da Gama/Lazão",
        "milliseconds": 231392,
        "bytes": 7663348,
        "unitPrice": 0.99
    },
    {
        "name": "Onde Você Mora?",
        "albumId": 27,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": "Marisa Monte/Nando Reis",
        "milliseconds": 298396,
        "bytes": 10056970,
        "unitPrice": 0.99
    },
    {
        "name": "O Erê",
        "albumId": 27,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": "Bernardo Vilhena/Bino/Da Gama/Lazao/Toni Garrido",
        "milliseconds": 206942,
        "bytes": 6950332,
        "unitPrice": 0.99
    },
    {
        "name": "A Sombra Da Maldade",
        "albumId": 27,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": "Da Gama/Toni Garrido",
        "milliseconds": 285231,
        "bytes": 9544383,
        "unitPrice": 0.99
    },
    {
        "name": "A Estrada",
        "albumId": 27,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": "Da Gama/Lazao/Toni Garrido",
        "milliseconds": 282174,
        "bytes": 9344477,
        "unitPrice": 0.99
    },
    {
        "name": "Falar A Verdade",
        "albumId": 27,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": "Bino/Da Gama/Ras Bernardo",
        "milliseconds": 244950,
        "bytes": 8189093,
        "unitPrice": 0.99
    },
    {
        "name": "Firmamento",
        "albumId": 27,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": "Harry Lawes/Winston Foster-Vers",
        "milliseconds": 225488,
        "bytes": 7507866,
        "unitPrice": 0.99
    },
    {
        "name": "Pensamento",
        "albumId": 27,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": "Bino/Da Gama/Ras Bernardo",
        "milliseconds": 192391,
        "bytes": 6399761,
        "unitPrice": 0.99
    },
    {
        "name": "Realidade Virtual",
        "albumId": 27,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": "Bino/Da Gamma/Lazao/Toni Garrido",
        "milliseconds": 240300,
        "bytes": 8069934,
        "unitPrice": 0.99
    },
    {
        "name": "Doutor",
        "albumId": 27,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": "Bino/Da Gama/Toni Garrido",
        "milliseconds": 178155,
        "bytes": 5950952,
        "unitPrice": 0.99
    },
    {
        "name": "Na Frente Da TV",
        "albumId": 27,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": "Bino/Da Gama/Lazao/Ras Bernardo",
        "milliseconds": 289750,
        "bytes": 9633659,
        "unitPrice": 0.99
    },
    {
        "name": "Downtown",
        "albumId": 27,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": "Cidade Negra",
        "milliseconds": 239725,
        "bytes": 8024386,
        "unitPrice": 0.99
    },
    {
        "name": "Sábado A Noite",
        "albumId": 27,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": "Lulu Santos",
        "milliseconds": 267363,
        "bytes": 8895073,
        "unitPrice": 0.99
    },
    {
        "name": "A Cor Do Sol",
        "albumId": 27,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": "Bernardo Vilhena/Da Gama/Lazao",
        "milliseconds": 273031,
        "bytes": 9142937,
        "unitPrice": 0.99
    },
    {
        "name": "Eu Também Quero Beijar",
        "albumId": 27,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": "Fausto Nilo/Moraes Moreira/Pepeu Gomes",
        "milliseconds": 211147,
        "bytes": 7029400,
        "unitPrice": 0.99
    },
    {
        "name": "Noite Do Prazer",
        "albumId": 28,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 311353,
        "bytes": 10309980,
        "unitPrice": 0.99
    },
    {
        "name": "À Francesa",
        "albumId": 28,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 244532,
        "bytes": 8150846,
        "unitPrice": 0.99
    },
    {
        "name": "Cada Um Cada Um (A Namoradeira)",
        "albumId": 28,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 253492,
        "bytes": 8441034,
        "unitPrice": 0.99
    },
    {
        "name": "Linha Do Equador",
        "albumId": 28,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 244715,
        "bytes": 8123466,
        "unitPrice": 0.99
    },
    {
        "name": "Amor Demais",
        "albumId": 28,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 254040,
        "bytes": 8420093,
        "unitPrice": 0.99
    },
    {
        "name": "Férias",
        "albumId": 28,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 264202,
        "bytes": 8731945,
        "unitPrice": 0.99
    },
    {
        "name": "Gostava Tanto De Você",
        "albumId": 28,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 230452,
        "bytes": 7685326,
        "unitPrice": 0.99
    },
    {
        "name": "Flor Do Futuro",
        "albumId": 28,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 275748,
        "bytes": 9205941,
        "unitPrice": 0.99
    },
    {
        "name": "Felicidade Urgente",
        "albumId": 28,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 266605,
        "bytes": 8873358,
        "unitPrice": 0.99
    },
    {
        "name": "Livre Pra Viver",
        "albumId": 28,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 214595,
        "bytes": 7111596,
        "unitPrice": 0.99
    },
    {
        "name": "Dig-Dig, Lambe-Lambe (Ao Vivo)",
        "albumId": 29,
        "mediaTypeId": 1,
        "genreId": 9,
        "composer": "Cassiano Costa/Cintia Maviane/J.F./Lucas Costa",
        "milliseconds": 205479,
        "bytes": 6892516,
        "unitPrice": 0.99
    },
    {
        "name": "Pererê",
        "albumId": 29,
        "mediaTypeId": 1,
        "genreId": 9,
        "composer": "Augusto Conceição/Chiclete Com Banana",
        "milliseconds": 198661,
        "bytes": 6643207,
        "unitPrice": 0.99
    },
    {
        "name": "TriboTchan",
        "albumId": 29,
        "mediaTypeId": 1,
        "genreId": 9,
        "composer": "Cal Adan/Paulo Levi",
        "milliseconds": 194194,
        "bytes": 6507950,
        "unitPrice": 0.99
    },
    {
        "name": "Tapa Aqui, Descobre Ali",
        "albumId": 29,
        "mediaTypeId": 1,
        "genreId": 9,
        "composer": "Paulo Levi/W. Rangel",
        "milliseconds": 188630,
        "bytes": 6327391,
        "unitPrice": 0.99
    },
    {
        "name": "Daniela",
        "albumId": 29,
        "mediaTypeId": 1,
        "genreId": 9,
        "composer": "Jorge Cardoso/Pierre Onasis",
        "milliseconds": 230791,
        "bytes": 7748006,
        "unitPrice": 0.99
    },
    {
        "name": "Bate Lata",
        "albumId": 29,
        "mediaTypeId": 1,
        "genreId": 9,
        "composer": "Fábio Nolasco/Gal Sales/Ivan Brasil",
        "milliseconds": 206733,
        "bytes": 7034985,
        "unitPrice": 0.99
    },
    {
        "name": "Garotas do Brasil",
        "albumId": 29,
        "mediaTypeId": 1,
        "genreId": 9,
        "composer": "Garay, Ricardo Engels/Luca Predabom/Ludwig, Carlos Henrique/Maurício Vieira",
        "milliseconds": 210155,
        "bytes": 6973625,
        "unitPrice": 0.99
    },
    {
        "name": "Levada do Amor (Ailoviu)",
        "albumId": 29,
        "mediaTypeId": 1,
        "genreId": 9,
        "composer": "Luiz Wanderley/Paulo Levi",
        "milliseconds": 190093,
        "bytes": 6457752,
        "unitPrice": 0.99
    },
    {
        "name": "Lavadeira",
        "albumId": 29,
        "mediaTypeId": 1,
        "genreId": 9,
        "composer": "Do Vale, Valverde/Gal Oliveira/Luciano Pinto",
        "milliseconds": 214256,
        "bytes": 7254147,
        "unitPrice": 0.99
    },
    {
        "name": "Reboladeira",
        "albumId": 29,
        "mediaTypeId": 1,
        "genreId": 9,
        "composer": "Cal Adan/Ferrugem/Julinho Carioca/Tríona Ní Dhomhnaill",
        "milliseconds": 210599,
        "bytes": 7027525,
        "unitPrice": 0.99
    },
    {
        "name": "É que Nessa Encarnação Eu Nasci Manga",
        "albumId": 29,
        "mediaTypeId": 1,
        "genreId": 9,
        "composer": "Lucina/Luli",
        "milliseconds": 196519,
        "bytes": 6568081,
        "unitPrice": 0.99
    },
    {
        "name": "Reggae Tchan",
        "albumId": 29,
        "mediaTypeId": 1,
        "genreId": 9,
        "composer": "Cal Adan/Del Rey, Tension/Edu Casanova",
        "milliseconds": 206654,
        "bytes": 6931328,
        "unitPrice": 0.99
    },
    {
        "name": "My Love",
        "albumId": 29,
        "mediaTypeId": 1,
        "genreId": 9,
        "composer": "Jauperi/Zeu Góes",
        "milliseconds": 203493,
        "bytes": 6772813,
        "unitPrice": 0.99
    },
    {
        "name": "Latinha de Cerveja",
        "albumId": 29,
        "mediaTypeId": 1,
        "genreId": 9,
        "composer": "Adriano Bernandes/Edmar Neves",
        "milliseconds": 166687,
        "bytes": 5532564,
        "unitPrice": 0.99
    },
    {
        "name": "You Shook Me",
        "albumId": 30,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "J B Lenoir/Willie Dixon",
        "milliseconds": 315951,
        "bytes": 10249958,
        "unitPrice": 0.99
    },
    {
        "name": "I Can't Quit You Baby",
        "albumId": 30,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Willie Dixon",
        "milliseconds": 263836,
        "bytes": 8581414,
        "unitPrice": 0.99
    },
    {
        "name": "Communication Breakdown",
        "albumId": 30,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page/John Bonham/John Paul Jones",
        "milliseconds": 192653,
        "bytes": 6287257,
        "unitPrice": 0.99
    },
    {
        "name": "Dazed and Confused",
        "albumId": 30,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page",
        "milliseconds": 401920,
        "bytes": 13035765,
        "unitPrice": 0.99
    },
    {
        "name": "The Girl I Love She Got Long Black Wavy Hair",
        "albumId": 30,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page/John Bonham/John Estes/John Paul Jones/Robert Plant",
        "milliseconds": 183327,
        "bytes": 5995686,
        "unitPrice": 0.99
    },
    {
        "name": "What is and Should Never Be",
        "albumId": 30,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page/Robert Plant",
        "milliseconds": 260675,
        "bytes": 8497116,
        "unitPrice": 0.99
    },
    {
        "name": "Communication Breakdown(2)",
        "albumId": 30,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page/John Bonham/John Paul Jones",
        "milliseconds": 161149,
        "bytes": 5261022,
        "unitPrice": 0.99
    },
    {
        "name": "Travelling Riverside Blues",
        "albumId": 30,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page/Robert Johnson/Robert Plant",
        "milliseconds": 312032,
        "bytes": 10232581,
        "unitPrice": 0.99
    },
    {
        "name": "Whole Lotta Love",
        "albumId": 30,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page/John Bonham/John Paul Jones/Robert Plant/Willie Dixon",
        "milliseconds": 373394,
        "bytes": 12258175,
        "unitPrice": 0.99
    },
    {
        "name": "Somethin' Else",
        "albumId": 30,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bob Cochran/Sharon Sheeley",
        "milliseconds": 127869,
        "bytes": 4165650,
        "unitPrice": 0.99
    },
    {
        "name": "Communication Breakdown(3)",
        "albumId": 30,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page/John Bonham/John Paul Jones",
        "milliseconds": 185260,
        "bytes": 6041133,
        "unitPrice": 0.99
    },
    {
        "name": "I Can't Quit You Baby(2)",
        "albumId": 30,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Willie Dixon",
        "milliseconds": 380551,
        "bytes": 12377615,
        "unitPrice": 0.99
    },
    {
        "name": "You Shook Me(2)",
        "albumId": 30,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "J B Lenoir/Willie Dixon",
        "milliseconds": 619467,
        "bytes": 20138673,
        "unitPrice": 0.99
    },
    {
        "name": "How Many More Times",
        "albumId": 30,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Chester Burnett/Jimmy Page/John Bonham/John Paul Jones/Robert Plant",
        "milliseconds": 711836,
        "bytes": 23092953,
        "unitPrice": 0.99
    },
    {
        "name": "Debra Kadabra",
        "albumId": 31,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Frank Zappa",
        "milliseconds": 234553,
        "bytes": 7649679,
        "unitPrice": 0.99
    },
    {
        "name": "Carolina Hard-Core Ecstasy",
        "albumId": 31,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Frank Zappa",
        "milliseconds": 359680,
        "bytes": 11731061,
        "unitPrice": 0.99
    },
    {
        "name": "Sam With The Showing Scalp Flat Top",
        "albumId": 31,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Don Van Vliet",
        "milliseconds": 171284,
        "bytes": 5572993,
        "unitPrice": 0.99
    },
    {
        "name": "Poofter's Froth Wyoming Plans Ahead",
        "albumId": 31,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Frank Zappa",
        "milliseconds": 183902,
        "bytes": 6007019,
        "unitPrice": 0.99
    },
    {
        "name": "200 Years Old",
        "albumId": 31,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Frank Zappa",
        "milliseconds": 272561,
        "bytes": 8912465,
        "unitPrice": 0.99
    },
    {
        "name": "Cucamonga",
        "albumId": 31,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Frank Zappa",
        "milliseconds": 144483,
        "bytes": 4728586,
        "unitPrice": 0.99
    },
    {
        "name": "Advance Romance",
        "albumId": 31,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Frank Zappa",
        "milliseconds": 677694,
        "bytes": 22080051,
        "unitPrice": 0.99
    },
    {
        "name": "Man With The Woman Head",
        "albumId": 31,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Don Van Vliet",
        "milliseconds": 88894,
        "bytes": 2922044,
        "unitPrice": 0.99
    },
    {
        "name": "Muffin Man",
        "albumId": 31,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Frank Zappa",
        "milliseconds": 332878,
        "bytes": 10891682,
        "unitPrice": 0.99
    },
    {
        "name": "Vai-Vai 2001",
        "albumId": 32,
        "mediaTypeId": 1,
        "genreId": 10,
        "composer": null,
        "milliseconds": 276349,
        "bytes": 9402241,
        "unitPrice": 0.99
    },
    {
        "name": "X-9 2001",
        "albumId": 32,
        "mediaTypeId": 1,
        "genreId": 10,
        "composer": null,
        "milliseconds": 273920,
        "bytes": 9310370,
        "unitPrice": 0.99
    },
    {
        "name": "Gavioes 2001",
        "albumId": 32,
        "mediaTypeId": 1,
        "genreId": 10,
        "composer": null,
        "milliseconds": 282723,
        "bytes": 9616640,
        "unitPrice": 0.99
    },
    {
        "name": "Nene 2001",
        "albumId": 32,
        "mediaTypeId": 1,
        "genreId": 10,
        "composer": null,
        "milliseconds": 284969,
        "bytes": 9694508,
        "unitPrice": 0.99
    },
    {
        "name": "Rosas De Ouro 2001",
        "albumId": 32,
        "mediaTypeId": 1,
        "genreId": 10,
        "composer": null,
        "milliseconds": 284342,
        "bytes": 9721084,
        "unitPrice": 0.99
    },
    {
        "name": "Mocidade Alegre 2001",
        "albumId": 32,
        "mediaTypeId": 1,
        "genreId": 10,
        "composer": null,
        "milliseconds": 282488,
        "bytes": 9599937,
        "unitPrice": 0.99
    },
    {
        "name": "Camisa Verde 2001",
        "albumId": 32,
        "mediaTypeId": 1,
        "genreId": 10,
        "composer": null,
        "milliseconds": 283454,
        "bytes": 9633755,
        "unitPrice": 0.99
    },
    {
        "name": "Leandro De Itaquera 2001",
        "albumId": 32,
        "mediaTypeId": 1,
        "genreId": 10,
        "composer": null,
        "milliseconds": 274808,
        "bytes": 9451845,
        "unitPrice": 0.99
    },
    {
        "name": "Tucuruvi 2001",
        "albumId": 32,
        "mediaTypeId": 1,
        "genreId": 10,
        "composer": null,
        "milliseconds": 287921,
        "bytes": 9883335,
        "unitPrice": 0.99
    },
    {
        "name": "Aguia De Ouro 2001",
        "albumId": 32,
        "mediaTypeId": 1,
        "genreId": 10,
        "composer": null,
        "milliseconds": 284160,
        "bytes": 9698729,
        "unitPrice": 0.99
    },
    {
        "name": "Ipiranga 2001",
        "albumId": 32,
        "mediaTypeId": 1,
        "genreId": 10,
        "composer": null,
        "milliseconds": 248293,
        "bytes": 8522591,
        "unitPrice": 0.99
    },
    {
        "name": "Morro Da Casa Verde 2001",
        "albumId": 32,
        "mediaTypeId": 1,
        "genreId": 10,
        "composer": null,
        "milliseconds": 284708,
        "bytes": 9718778,
        "unitPrice": 0.99
    },
    {
        "name": "Perola Negra 2001",
        "albumId": 32,
        "mediaTypeId": 1,
        "genreId": 10,
        "composer": null,
        "milliseconds": 281626,
        "bytes": 9619196,
        "unitPrice": 0.99
    },
    {
        "name": "Sao Lucas 2001",
        "albumId": 32,
        "mediaTypeId": 1,
        "genreId": 10,
        "composer": null,
        "milliseconds": 296254,
        "bytes": 10020122,
        "unitPrice": 0.99
    },
    {
        "name": "Guanabara",
        "albumId": 33,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Marcos Valle",
        "milliseconds": 247614,
        "bytes": 8499591,
        "unitPrice": 0.99
    },
    {
        "name": "Mas Que Nada",
        "albumId": 33,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Jorge Ben",
        "milliseconds": 248398,
        "bytes": 8255254,
        "unitPrice": 0.99
    },
    {
        "name": "Vôo Sobre o Horizonte",
        "albumId": 33,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "J.r.Bertami/Parana",
        "milliseconds": 225097,
        "bytes": 7528825,
        "unitPrice": 0.99
    },
    {
        "name": "A Paz",
        "albumId": 33,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Donato/Gilberto Gil",
        "milliseconds": 263183,
        "bytes": 8619173,
        "unitPrice": 0.99
    },
    {
        "name": "Wave (Vou te Contar)",
        "albumId": 33,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Antonio Carlos Jobim",
        "milliseconds": 271647,
        "bytes": 9057557,
        "unitPrice": 0.99
    },
    {
        "name": "Água de Beber",
        "albumId": 33,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Antonio Carlos Jobim/Vinicius de Moraes",
        "milliseconds": 146677,
        "bytes": 4866476,
        "unitPrice": 0.99
    },
    {
        "name": "Samba da Bençaco",
        "albumId": 33,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Baden Powell/Vinicius de Moraes",
        "milliseconds": 282200,
        "bytes": 9440676,
        "unitPrice": 0.99
    },
    {
        "name": "Pode Parar",
        "albumId": 33,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Jorge Vercilo/Jota Maranhao",
        "milliseconds": 179408,
        "bytes": 6046678,
        "unitPrice": 0.99
    },
    {
        "name": "Menino do Rio",
        "albumId": 33,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Caetano Veloso",
        "milliseconds": 262713,
        "bytes": 8737489,
        "unitPrice": 0.99
    },
    {
        "name": "Ando Meio Desligado",
        "albumId": 33,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Caetano Veloso",
        "milliseconds": 195813,
        "bytes": 6547648,
        "unitPrice": 0.99
    },
    {
        "name": "Mistério da Raça",
        "albumId": 33,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Luiz Melodia/Ricardo Augusto",
        "milliseconds": 184320,
        "bytes": 6191752,
        "unitPrice": 0.99
    },
    {
        "name": "All Star",
        "albumId": 33,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Nando Reis",
        "milliseconds": 176326,
        "bytes": 5891697,
        "unitPrice": 0.99
    },
    {
        "name": "Menina Bonita",
        "albumId": 33,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Alexandre Brazil/Pedro Luis/Rodrigo Cabelo",
        "milliseconds": 237087,
        "bytes": 7938246,
        "unitPrice": 0.99
    },
    {
        "name": "Pescador de Ilusões",
        "albumId": 33,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Macelo Yuka/O Rappa",
        "milliseconds": 245524,
        "bytes": 8267067,
        "unitPrice": 0.99
    },
    {
        "name": "À Vontade (Live Mix)",
        "albumId": 33,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Bombom/Ed Motta",
        "milliseconds": 180636,
        "bytes": 5972430,
        "unitPrice": 0.99
    },
    {
        "name": "Maria Fumaça",
        "albumId": 33,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Luiz Carlos/Oberdan",
        "milliseconds": 141008,
        "bytes": 4743149,
        "unitPrice": 0.99
    },
    {
        "name": "Sambassim (dj patife remix)",
        "albumId": 33,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Alba Carvalho/Fernando Porto",
        "milliseconds": 213655,
        "bytes": 7243166,
        "unitPrice": 0.99
    },
    {
        "name": "Garota De Ipanema",
        "albumId": 34,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Vários",
        "milliseconds": 279536,
        "bytes": 9141343,
        "unitPrice": 0.99
    },
    {
        "name": "Tim Tim Por Tim Tim",
        "albumId": 34,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Vários",
        "milliseconds": 213237,
        "bytes": 7143328,
        "unitPrice": 0.99
    },
    {
        "name": "Tarde Em Itapoã",
        "albumId": 34,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Vários",
        "milliseconds": 313704,
        "bytes": 10344491,
        "unitPrice": 0.99
    },
    {
        "name": "Tanto Tempo",
        "albumId": 34,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Vários",
        "milliseconds": 170292,
        "bytes": 5572240,
        "unitPrice": 0.99
    },
    {
        "name": "Eu Vim Da Bahia - Live",
        "albumId": 34,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Vários",
        "milliseconds": 157988,
        "bytes": 5115428,
        "unitPrice": 0.99
    },
    {
        "name": "Alô Alô Marciano",
        "albumId": 34,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Vários",
        "milliseconds": 238106,
        "bytes": 8013065,
        "unitPrice": 0.99
    },
    {
        "name": "Linha Do Horizonte",
        "albumId": 34,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Vários",
        "milliseconds": 279484,
        "bytes": 9275929,
        "unitPrice": 0.99
    },
    {
        "name": "Only A Dream In Rio",
        "albumId": 34,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Vários",
        "milliseconds": 371356,
        "bytes": 12192989,
        "unitPrice": 0.99
    },
    {
        "name": "Abrir A Porta",
        "albumId": 34,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Vários",
        "milliseconds": 271960,
        "bytes": 8991141,
        "unitPrice": 0.99
    },
    {
        "name": "Alice",
        "albumId": 34,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Vários",
        "milliseconds": 165982,
        "bytes": 5594341,
        "unitPrice": 0.99
    },
    {
        "name": "Momentos Que Marcam",
        "albumId": 34,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Vários",
        "milliseconds": 280137,
        "bytes": 9313740,
        "unitPrice": 0.99
    },
    {
        "name": "Um Jantar Pra Dois",
        "albumId": 34,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Vários",
        "milliseconds": 237714,
        "bytes": 7819755,
        "unitPrice": 0.99
    },
    {
        "name": "Bumbo Da Mangueira",
        "albumId": 34,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Vários",
        "milliseconds": 270158,
        "bytes": 9073350,
        "unitPrice": 0.99
    },
    {
        "name": "Mr Funk Samba",
        "albumId": 34,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Vários",
        "milliseconds": 213890,
        "bytes": 7102545,
        "unitPrice": 0.99
    },
    {
        "name": "Santo Antonio",
        "albumId": 34,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Vários",
        "milliseconds": 162716,
        "bytes": 5492069,
        "unitPrice": 0.99
    },
    {
        "name": "Por Você",
        "albumId": 34,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Vários",
        "milliseconds": 205557,
        "bytes": 6792493,
        "unitPrice": 0.99
    },
    {
        "name": "Só Tinha De Ser Com Você",
        "albumId": 34,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Vários",
        "milliseconds": 389642,
        "bytes": 13085596,
        "unitPrice": 0.99
    },
    {
        "name": "Free Speech For The Dumb",
        "albumId": 35,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Molaney/Morris/Roberts/Wainwright",
        "milliseconds": 155428,
        "bytes": 5076048,
        "unitPrice": 0.99
    },
    {
        "name": "It's Electric",
        "albumId": 35,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Harris/Tatler",
        "milliseconds": 213995,
        "bytes": 6978601,
        "unitPrice": 0.99
    },
    {
        "name": "Sabbra Cadabra",
        "albumId": 35,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Black Sabbath",
        "milliseconds": 380342,
        "bytes": 12418147,
        "unitPrice": 0.99
    },
    {
        "name": "Turn The Page",
        "albumId": 35,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Seger",
        "milliseconds": 366524,
        "bytes": 11946327,
        "unitPrice": 0.99
    },
    {
        "name": "Die Die My Darling",
        "albumId": 35,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Danzig",
        "milliseconds": 149315,
        "bytes": 4867667,
        "unitPrice": 0.99
    },
    {
        "name": "Loverman",
        "albumId": 35,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Cave",
        "milliseconds": 472764,
        "bytes": 15446975,
        "unitPrice": 0.99
    },
    {
        "name": "Mercyful Fate",
        "albumId": 35,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Diamond/Shermann",
        "milliseconds": 671712,
        "bytes": 21942829,
        "unitPrice": 0.99
    },
    {
        "name": "Astronomy",
        "albumId": 35,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "A.Bouchard/J.Bouchard/S.Pearlman",
        "milliseconds": 397531,
        "bytes": 13065612,
        "unitPrice": 0.99
    },
    {
        "name": "Whiskey In The Jar",
        "albumId": 35,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Traditional",
        "milliseconds": 305005,
        "bytes": 9943129,
        "unitPrice": 0.99
    },
    {
        "name": "Tuesday's Gone",
        "albumId": 35,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Collins/Van Zandt",
        "milliseconds": 545750,
        "bytes": 17900787,
        "unitPrice": 0.99
    },
    {
        "name": "The More I See",
        "albumId": 35,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Molaney/Morris/Roberts/Wainwright",
        "milliseconds": 287973,
        "bytes": 9378873,
        "unitPrice": 0.99
    },
    {
        "name": "A Kind Of Magic",
        "albumId": 36,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Roger Taylor",
        "milliseconds": 262608,
        "bytes": 8689618,
        "unitPrice": 0.99
    },
    {
        "name": "Under Pressure",
        "albumId": 36,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Queen & David Bowie",
        "milliseconds": 236617,
        "bytes": 7739042,
        "unitPrice": 0.99
    },
    {
        "name": "Radio GA GA",
        "albumId": 36,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Roger Taylor",
        "milliseconds": 343745,
        "bytes": 11358573,
        "unitPrice": 0.99
    },
    {
        "name": "I Want It All",
        "albumId": 36,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Queen",
        "milliseconds": 241684,
        "bytes": 7876564,
        "unitPrice": 0.99
    },
    {
        "name": "I Want To Break Free",
        "albumId": 36,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "John Deacon",
        "milliseconds": 259108,
        "bytes": 8552861,
        "unitPrice": 0.99
    },
    {
        "name": "Innuendo",
        "albumId": 36,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Queen",
        "milliseconds": 387761,
        "bytes": 12664591,
        "unitPrice": 0.99
    },
    {
        "name": "It's A Hard Life",
        "albumId": 36,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Freddie Mercury",
        "milliseconds": 249417,
        "bytes": 8112242,
        "unitPrice": 0.99
    },
    {
        "name": "Breakthru",
        "albumId": 36,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Queen",
        "milliseconds": 249234,
        "bytes": 8150479,
        "unitPrice": 0.99
    },
    {
        "name": "Who Wants To Live Forever",
        "albumId": 36,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Brian May",
        "milliseconds": 297691,
        "bytes": 9577577,
        "unitPrice": 0.99
    },
    {
        "name": "Headlong",
        "albumId": 36,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Queen",
        "milliseconds": 273057,
        "bytes": 8921404,
        "unitPrice": 0.99
    },
    {
        "name": "The Miracle",
        "albumId": 36,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Queen",
        "milliseconds": 294974,
        "bytes": 9671923,
        "unitPrice": 0.99
    },
    {
        "name": "I'm Going Slightly Mad",
        "albumId": 36,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Queen",
        "milliseconds": 248032,
        "bytes": 8192339,
        "unitPrice": 0.99
    },
    {
        "name": "The Invisible Man",
        "albumId": 36,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Queen",
        "milliseconds": 238994,
        "bytes": 7920353,
        "unitPrice": 0.99
    },
    {
        "name": "Hammer To Fall",
        "albumId": 36,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Brian May",
        "milliseconds": 220316,
        "bytes": 7255404,
        "unitPrice": 0.99
    },
    {
        "name": "Friends Will Be Friends",
        "albumId": 36,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Freddie Mercury & John Deacon",
        "milliseconds": 248920,
        "bytes": 8114582,
        "unitPrice": 0.99
    },
    {
        "name": "The Show Must Go On",
        "albumId": 36,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Queen",
        "milliseconds": 263784,
        "bytes": 8526760,
        "unitPrice": 0.99
    },
    {
        "name": "One Vision",
        "albumId": 36,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Queen",
        "milliseconds": 242599,
        "bytes": 7936928,
        "unitPrice": 0.99
    },
    {
        "name": "Detroit Rock City",
        "albumId": 37,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Paul Stanley, B. Ezrin",
        "milliseconds": 218880,
        "bytes": 7146372,
        "unitPrice": 0.99
    },
    {
        "name": "Black Diamond",
        "albumId": 37,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Paul Stanley",
        "milliseconds": 314148,
        "bytes": 10266007,
        "unitPrice": 0.99
    },
    {
        "name": "Hard Luck Woman",
        "albumId": 37,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Paul Stanley",
        "milliseconds": 216032,
        "bytes": 7109267,
        "unitPrice": 0.99
    },
    {
        "name": "Sure Know Something",
        "albumId": 37,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Paul Stanley, Vincent Poncia",
        "milliseconds": 242468,
        "bytes": 7939886,
        "unitPrice": 0.99
    },
    {
        "name": "Love Gun",
        "albumId": 37,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Paul Stanley",
        "milliseconds": 196257,
        "bytes": 6424915,
        "unitPrice": 0.99
    },
    {
        "name": "Deuce",
        "albumId": 37,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Gene Simmons",
        "milliseconds": 185077,
        "bytes": 6097210,
        "unitPrice": 0.99
    },
    {
        "name": "Goin' Blind",
        "albumId": 37,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Gene Simmons, S. Coronel",
        "milliseconds": 216215,
        "bytes": 7045314,
        "unitPrice": 0.99
    },
    {
        "name": "Shock Me",
        "albumId": 37,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Ace Frehley",
        "milliseconds": 227291,
        "bytes": 7529336,
        "unitPrice": 0.99
    },
    {
        "name": "Do You Love Me",
        "albumId": 37,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Paul Stanley, B. Ezrin, K. Fowley",
        "milliseconds": 214987,
        "bytes": 6976194,
        "unitPrice": 0.99
    },
    {
        "name": "She",
        "albumId": 37,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Gene Simmons, S. Coronel",
        "milliseconds": 248346,
        "bytes": 8229734,
        "unitPrice": 0.99
    },
    {
        "name": "I Was Made For Loving You",
        "albumId": 37,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Paul Stanley, Vincent Poncia, Desmond Child",
        "milliseconds": 271360,
        "bytes": 9018078,
        "unitPrice": 0.99
    },
    {
        "name": "Shout It Out Loud",
        "albumId": 37,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Paul Stanley, Gene Simmons, B. Ezrin",
        "milliseconds": 219742,
        "bytes": 7194424,
        "unitPrice": 0.99
    },
    {
        "name": "God Of Thunder",
        "albumId": 37,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Paul Stanley",
        "milliseconds": 255791,
        "bytes": 8309077,
        "unitPrice": 0.99
    },
    {
        "name": "Calling Dr. Love",
        "albumId": 37,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Gene Simmons",
        "milliseconds": 225332,
        "bytes": 7395034,
        "unitPrice": 0.99
    },
    {
        "name": "Beth",
        "albumId": 37,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "S. Penridge, Bob Ezrin, Peter Criss",
        "milliseconds": 166974,
        "bytes": 5360574,
        "unitPrice": 0.99
    },
    {
        "name": "Strutter",
        "albumId": 37,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Paul Stanley, Gene Simmons",
        "milliseconds": 192496,
        "bytes": 6317021,
        "unitPrice": 0.99
    },
    {
        "name": "Rock And Roll All Nite",
        "albumId": 37,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Paul Stanley, Gene Simmons",
        "milliseconds": 173609,
        "bytes": 5735902,
        "unitPrice": 0.99
    },
    {
        "name": "Cold Gin",
        "albumId": 37,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Ace Frehley",
        "milliseconds": 262243,
        "bytes": 8609783,
        "unitPrice": 0.99
    },
    {
        "name": "Plaster Caster",
        "albumId": 37,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Gene Simmons",
        "milliseconds": 207333,
        "bytes": 6801116,
        "unitPrice": 0.99
    },
    {
        "name": "God Gave Rock 'n' Roll To You",
        "albumId": 37,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Paul Stanley, Gene Simmons, Rus Ballard, Bob Ezrin",
        "milliseconds": 320444,
        "bytes": 10441590,
        "unitPrice": 0.99
    },
    {
        "name": "Heart of the Night",
        "albumId": 38,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": null,
        "milliseconds": 273737,
        "bytes": 9098263,
        "unitPrice": 0.99
    },
    {
        "name": "De La Luz",
        "albumId": 38,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": null,
        "milliseconds": 315219,
        "bytes": 10518284,
        "unitPrice": 0.99
    },
    {
        "name": "Westwood Moon",
        "albumId": 38,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": null,
        "milliseconds": 295627,
        "bytes": 9765802,
        "unitPrice": 0.99
    },
    {
        "name": "Midnight",
        "albumId": 38,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": null,
        "milliseconds": 266866,
        "bytes": 8851060,
        "unitPrice": 0.99
    },
    {
        "name": "Playtime",
        "albumId": 38,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": null,
        "milliseconds": 273580,
        "bytes": 9070880,
        "unitPrice": 0.99
    },
    {
        "name": "Surrender",
        "albumId": 38,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": null,
        "milliseconds": 287634,
        "bytes": 9422926,
        "unitPrice": 0.99
    },
    {
        "name": "Valentino's",
        "albumId": 38,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": null,
        "milliseconds": 296124,
        "bytes": 9848545,
        "unitPrice": 0.99
    },
    {
        "name": "Believe",
        "albumId": 38,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": null,
        "milliseconds": 310778,
        "bytes": 10317185,
        "unitPrice": 0.99
    },
    {
        "name": "As We Sleep",
        "albumId": 38,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": null,
        "milliseconds": 316865,
        "bytes": 10429398,
        "unitPrice": 0.99
    },
    {
        "name": "When Evening Falls",
        "albumId": 38,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": null,
        "milliseconds": 298135,
        "bytes": 9863942,
        "unitPrice": 0.99
    },
    {
        "name": "J Squared",
        "albumId": 38,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": null,
        "milliseconds": 288757,
        "bytes": 9480777,
        "unitPrice": 0.99
    },
    {
        "name": "Best Thing",
        "albumId": 38,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": null,
        "milliseconds": 274259,
        "bytes": 9069394,
        "unitPrice": 0.99
    },
    {
        "name": "Maria",
        "albumId": 39,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billie Joe Armstrong -Words Green Day -Music",
        "milliseconds": 167262,
        "bytes": 5484747,
        "unitPrice": 0.99
    },
    {
        "name": "Poprocks And Coke",
        "albumId": 39,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billie Joe Armstrong -Words Green Day -Music",
        "milliseconds": 158354,
        "bytes": 5243078,
        "unitPrice": 0.99
    },
    {
        "name": "Longview",
        "albumId": 39,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billie Joe Armstrong -Words Green Day -Music",
        "milliseconds": 234083,
        "bytes": 7714939,
        "unitPrice": 0.99
    },
    {
        "name": "Welcome To Paradise",
        "albumId": 39,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billie Joe Armstrong -Words Green Day -Music",
        "milliseconds": 224208,
        "bytes": 7406008,
        "unitPrice": 0.99
    },
    {
        "name": "Basket Case",
        "albumId": 39,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billie Joe Armstrong -Words Green Day -Music",
        "milliseconds": 181629,
        "bytes": 5951736,
        "unitPrice": 0.99
    },
    {
        "name": "When I Come Around",
        "albumId": 39,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billie Joe Armstrong -Words Green Day -Music",
        "milliseconds": 178364,
        "bytes": 5839426,
        "unitPrice": 0.99
    },
    {
        "name": "She",
        "albumId": 39,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billie Joe Armstrong -Words Green Day -Music",
        "milliseconds": 134164,
        "bytes": 4425128,
        "unitPrice": 0.99
    },
    {
        "name": "J.A.R. (Jason Andrew Relva)",
        "albumId": 39,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Mike Dirnt -Words Green Day -Music",
        "milliseconds": 170997,
        "bytes": 5645755,
        "unitPrice": 0.99
    },
    {
        "name": "Geek Stink Breath",
        "albumId": 39,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billie Joe Armstrong -Words Green Day -Music",
        "milliseconds": 135888,
        "bytes": 4408983,
        "unitPrice": 0.99
    },
    {
        "name": "Brain Stew",
        "albumId": 39,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billie Joe Armstrong -Words Green Day -Music",
        "milliseconds": 193149,
        "bytes": 6305550,
        "unitPrice": 0.99
    },
    {
        "name": "Jaded",
        "albumId": 39,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billie Joe Armstrong -Words Green Day -Music",
        "milliseconds": 90331,
        "bytes": 2950224,
        "unitPrice": 0.99
    },
    {
        "name": "Walking Contradiction",
        "albumId": 39,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billie Joe Armstrong -Words Green Day -Music",
        "milliseconds": 151170,
        "bytes": 4932366,
        "unitPrice": 0.99
    },
    {
        "name": "Stuck With Me",
        "albumId": 39,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billie Joe Armstrong -Words Green Day -Music",
        "milliseconds": 135523,
        "bytes": 4431357,
        "unitPrice": 0.99
    },
    {
        "name": "Hitchin' A Ride",
        "albumId": 39,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billie Joe Armstrong -Words Green Day -Music",
        "milliseconds": 171546,
        "bytes": 5616891,
        "unitPrice": 0.99
    },
    {
        "name": "Good Riddance (Time Of Your Life)",
        "albumId": 39,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billie Joe Armstrong -Words Green Day -Music",
        "milliseconds": 153600,
        "bytes": 5075241,
        "unitPrice": 0.99
    },
    {
        "name": "Redundant",
        "albumId": 39,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billie Joe Armstrong -Words Green Day -Music",
        "milliseconds": 198164,
        "bytes": 6481753,
        "unitPrice": 0.99
    },
    {
        "name": "Nice Guys Finish Last",
        "albumId": 39,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billie Joe Armstrong -Words Green Day -Music",
        "milliseconds": 170187,
        "bytes": 5604618,
        "unitPrice": 0.99
    },
    {
        "name": "Minority",
        "albumId": 39,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billie Joe Armstrong -Words Green Day -Music",
        "milliseconds": 168803,
        "bytes": 5535061,
        "unitPrice": 0.99
    },
    {
        "name": "Warning",
        "albumId": 39,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billie Joe Armstrong -Words Green Day -Music",
        "milliseconds": 221910,
        "bytes": 7343176,
        "unitPrice": 0.99
    },
    {
        "name": "Waiting",
        "albumId": 39,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billie Joe Armstrong -Words Green Day -Music",
        "milliseconds": 192757,
        "bytes": 6316430,
        "unitPrice": 0.99
    },
    {
        "name": "Macy's Day Parade",
        "albumId": 39,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billie Joe Armstrong -Words Green Day -Music",
        "milliseconds": 213420,
        "bytes": 7075573,
        "unitPrice": 0.99
    },
    {
        "name": "Into The Light",
        "albumId": 40,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "David Coverdale",
        "milliseconds": 76303,
        "bytes": 2452653,
        "unitPrice": 0.99
    },
    {
        "name": "River Song",
        "albumId": 40,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "David Coverdale",
        "milliseconds": 439510,
        "bytes": 14359478,
        "unitPrice": 0.99
    },
    {
        "name": "She Give Me ...",
        "albumId": 40,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "David Coverdale",
        "milliseconds": 252551,
        "bytes": 8385478,
        "unitPrice": 0.99
    },
    {
        "name": "Don't You Cry",
        "albumId": 40,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "David Coverdale",
        "milliseconds": 347036,
        "bytes": 11269612,
        "unitPrice": 0.99
    },
    {
        "name": "Love Is Blind",
        "albumId": 40,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "David Coverdale/Earl Slick",
        "milliseconds": 344999,
        "bytes": 11409720,
        "unitPrice": 0.99
    },
    {
        "name": "Slave",
        "albumId": 40,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "David Coverdale/Earl Slick",
        "milliseconds": 291892,
        "bytes": 9425200,
        "unitPrice": 0.99
    },
    {
        "name": "Cry For Love",
        "albumId": 40,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bossi/David Coverdale/Earl Slick",
        "milliseconds": 293015,
        "bytes": 9567075,
        "unitPrice": 0.99
    },
    {
        "name": "Living On Love",
        "albumId": 40,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bossi/David Coverdale/Earl Slick",
        "milliseconds": 391549,
        "bytes": 12785876,
        "unitPrice": 0.99
    },
    {
        "name": "Midnight Blue",
        "albumId": 40,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "David Coverdale/Earl Slick",
        "milliseconds": 298631,
        "bytes": 9750990,
        "unitPrice": 0.99
    },
    {
        "name": "Too Many Tears",
        "albumId": 40,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Adrian Vanderberg/David Coverdale",
        "milliseconds": 359497,
        "bytes": 11810238,
        "unitPrice": 0.99
    },
    {
        "name": "Don't Lie To Me",
        "albumId": 40,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "David Coverdale/Earl Slick",
        "milliseconds": 283585,
        "bytes": 9288007,
        "unitPrice": 0.99
    },
    {
        "name": "Wherever You May Go",
        "albumId": 40,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "David Coverdale",
        "milliseconds": 239699,
        "bytes": 7803074,
        "unitPrice": 0.99
    },
    {
        "name": "Grito De Alerta",
        "albumId": 41,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Gonzaga Jr.",
        "milliseconds": 202213,
        "bytes": 6539422,
        "unitPrice": 0.99
    },
    {
        "name": "Não Dá Mais Pra Segurar (Explode Coração)",
        "albumId": 41,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 219768,
        "bytes": 7083012,
        "unitPrice": 0.99
    },
    {
        "name": "Começaria Tudo Outra Vez",
        "albumId": 41,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 196545,
        "bytes": 6473395,
        "unitPrice": 0.99
    },
    {
        "name": "O Que É O Que É ?",
        "albumId": 41,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 259291,
        "bytes": 8650647,
        "unitPrice": 0.99
    },
    {
        "name": "Sangrando",
        "albumId": 41,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Gonzaga Jr/Gonzaguinha",
        "milliseconds": 169717,
        "bytes": 5494406,
        "unitPrice": 0.99
    },
    {
        "name": "Diga Lá, Coração",
        "albumId": 41,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 255921,
        "bytes": 8280636,
        "unitPrice": 0.99
    },
    {
        "name": "Lindo Lago Do Amor",
        "albumId": 41,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Gonzaga Jr.",
        "milliseconds": 249678,
        "bytes": 8353191,
        "unitPrice": 0.99
    },
    {
        "name": "Eu Apenas Queria Que Voçê Soubesse",
        "albumId": 41,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 155637,
        "bytes": 5130056,
        "unitPrice": 0.99
    },
    {
        "name": "Com A Perna No Mundo",
        "albumId": 41,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Gonzaga Jr.",
        "milliseconds": 227448,
        "bytes": 7747108,
        "unitPrice": 0.99
    },
    {
        "name": "E Vamos À Luta",
        "albumId": 41,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 222406,
        "bytes": 7585112,
        "unitPrice": 0.99
    },
    {
        "name": "Um Homem Também Chora (Guerreiro Menino)",
        "albumId": 41,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 207229,
        "bytes": 6854219,
        "unitPrice": 0.99
    },
    {
        "name": "Comportamento Geral",
        "albumId": 41,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Gonzaga Jr",
        "milliseconds": 181577,
        "bytes": 5997444,
        "unitPrice": 0.99
    },
    {
        "name": "Ponto De Interrogação",
        "albumId": 41,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 180950,
        "bytes": 5946265,
        "unitPrice": 0.99
    },
    {
        "name": "Espere Por Mim, Morena",
        "albumId": 41,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Gonzaguinha",
        "milliseconds": 207072,
        "bytes": 6796523,
        "unitPrice": 0.99
    },
    {
        "name": "Meia-Lua Inteira",
        "albumId": 23,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 222093,
        "bytes": 7466288,
        "unitPrice": 0.99
    },
    {
        "name": "Voce e Linda",
        "albumId": 23,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 242938,
        "bytes": 8050268,
        "unitPrice": 0.99
    },
    {
        "name": "Um Indio",
        "albumId": 23,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 195944,
        "bytes": 6453213,
        "unitPrice": 0.99
    },
    {
        "name": "Podres Poderes",
        "albumId": 23,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 259761,
        "bytes": 8622495,
        "unitPrice": 0.99
    },
    {
        "name": "Voce Nao Entende Nada - Cotidiano",
        "albumId": 23,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 421982,
        "bytes": 13885612,
        "unitPrice": 0.99
    },
    {
        "name": "O Estrangeiro",
        "albumId": 23,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 374700,
        "bytes": 12472890,
        "unitPrice": 0.99
    },
    {
        "name": "Menino Do Rio",
        "albumId": 23,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 147670,
        "bytes": 4862277,
        "unitPrice": 0.99
    },
    {
        "name": "Qualquer Coisa",
        "albumId": 23,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 193410,
        "bytes": 6372433,
        "unitPrice": 0.99
    },
    {
        "name": "Sampa",
        "albumId": 23,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 185051,
        "bytes": 6151831,
        "unitPrice": 0.99
    },
    {
        "name": "Queixa",
        "albumId": 23,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 299676,
        "bytes": 9953962,
        "unitPrice": 0.99
    },
    {
        "name": "O Leaozinho",
        "albumId": 23,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 184398,
        "bytes": 6098150,
        "unitPrice": 0.99
    },
    {
        "name": "Fora Da Ordem",
        "albumId": 23,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 354011,
        "bytes": 11746781,
        "unitPrice": 0.99
    },
    {
        "name": "Terra",
        "albumId": 23,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 401319,
        "bytes": 13224055,
        "unitPrice": 0.99
    },
    {
        "name": "Alegria, Alegria",
        "albumId": 23,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 169221,
        "bytes": 5497025,
        "unitPrice": 0.99
    },
    {
        "name": "Balada Do Louco",
        "albumId": 42,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Arnaldo Baptista - Rita Lee",
        "milliseconds": 241057,
        "bytes": 7852328,
        "unitPrice": 0.99
    },
    {
        "name": "Ando Meio Desligado",
        "albumId": 42,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Arnaldo Baptista - Rita Lee -  Sérgio Dias",
        "milliseconds": 287817,
        "bytes": 9484504,
        "unitPrice": 0.99
    },
    {
        "name": "Top Top",
        "albumId": 42,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Os Mutantes - Arnolpho Lima Filho",
        "milliseconds": 146938,
        "bytes": 4875374,
        "unitPrice": 0.99
    },
    {
        "name": "Baby",
        "albumId": 42,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Caetano Veloso",
        "milliseconds": 177188,
        "bytes": 5798202,
        "unitPrice": 0.99
    },
    {
        "name": "A E O Z",
        "albumId": 42,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Mutantes",
        "milliseconds": 518556,
        "bytes": 16873005,
        "unitPrice": 0.99
    },
    {
        "name": "Panis Et Circenses",
        "albumId": 42,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Caetano Veloso - Gilberto Gil",
        "milliseconds": 125152,
        "bytes": 4069688,
        "unitPrice": 0.99
    },
    {
        "name": "Chão De Estrelas",
        "albumId": 42,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Orestes Barbosa-Sílvio Caldas",
        "milliseconds": 284813,
        "bytes": 9433620,
        "unitPrice": 0.99
    },
    {
        "name": "Vida De Cachorro",
        "albumId": 42,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Rita Lee - Arnaldo Baptista - Sérgio Baptista",
        "milliseconds": 195186,
        "bytes": 6411149,
        "unitPrice": 0.99
    },
    {
        "name": "Bat Macumba",
        "albumId": 42,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Gilberto Gil - Caetano Veloso",
        "milliseconds": 187794,
        "bytes": 6295223,
        "unitPrice": 0.99
    },
    {
        "name": "Desculpe Babe",
        "albumId": 42,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Arnaldo Baptista - Rita Lee",
        "milliseconds": 170422,
        "bytes": 5637959,
        "unitPrice": 0.99
    },
    {
        "name": "Rita Lee",
        "albumId": 42,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Arnaldo Baptista/Rita Lee/Sérgio Dias",
        "milliseconds": 189257,
        "bytes": 6270503,
        "unitPrice": 0.99
    },
    {
        "name": "Posso Perder Minha Mulher, Minha Mãe, Desde Que Eu Tenha O Rock And Roll",
        "albumId": 42,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Arnaldo Baptista - Rita Lee - Arnolpho Lima Filho",
        "milliseconds": 222955,
        "bytes": 7346254,
        "unitPrice": 0.99
    },
    {
        "name": "Banho De Lua",
        "albumId": 42,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "B. de Filippi - F. Migliaci - Versão: Fred Jorge",
        "milliseconds": 221831,
        "bytes": 7232123,
        "unitPrice": 0.99
    },
    {
        "name": "Meu Refrigerador Não Funciona",
        "albumId": 42,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Arnaldo Baptista - Rita Lee - Sérgio Dias",
        "milliseconds": 382981,
        "bytes": 12495906,
        "unitPrice": 0.99
    },
    {
        "name": "Burn",
        "albumId": 43,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Coverdale/Lord/Paice",
        "milliseconds": 453955,
        "bytes": 14775708,
        "unitPrice": 0.99
    },
    {
        "name": "Stormbringer",
        "albumId": 43,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Coverdale",
        "milliseconds": 277133,
        "bytes": 9050022,
        "unitPrice": 0.99
    },
    {
        "name": "Gypsy",
        "albumId": 43,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Coverdale/Hughes/Lord/Paice",
        "milliseconds": 339173,
        "bytes": 11046952,
        "unitPrice": 0.99
    },
    {
        "name": "Lady Double Dealer",
        "albumId": 43,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Coverdale",
        "milliseconds": 233586,
        "bytes": 7608759,
        "unitPrice": 0.99
    },
    {
        "name": "Mistreated",
        "albumId": 43,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Coverdale",
        "milliseconds": 758648,
        "bytes": 24596235,
        "unitPrice": 0.99
    },
    {
        "name": "Smoke On The Water",
        "albumId": 43,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Gillan/Glover/Lord/Paice",
        "milliseconds": 618031,
        "bytes": 20103125,
        "unitPrice": 0.99
    },
    {
        "name": "You Fool No One",
        "albumId": 43,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Coverdale/Lord/Paice",
        "milliseconds": 804101,
        "bytes": 26369966,
        "unitPrice": 0.99
    },
    {
        "name": "Custard Pie",
        "albumId": 44,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page/Robert Plant",
        "milliseconds": 253962,
        "bytes": 8348257,
        "unitPrice": 0.99
    },
    {
        "name": "The Rover",
        "albumId": 44,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page/Robert Plant",
        "milliseconds": 337084,
        "bytes": 11011286,
        "unitPrice": 0.99
    },
    {
        "name": "In My Time Of Dying",
        "albumId": 44,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "John Bonham/John Paul Jones",
        "milliseconds": 666017,
        "bytes": 21676727,
        "unitPrice": 0.99
    },
    {
        "name": "Houses Of The Holy",
        "albumId": 44,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page/Robert Plant",
        "milliseconds": 242494,
        "bytes": 7972503,
        "unitPrice": 0.99
    },
    {
        "name": "Trampled Under Foot",
        "albumId": 44,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "John Paul Jones",
        "milliseconds": 336692,
        "bytes": 11154468,
        "unitPrice": 0.99
    },
    {
        "name": "Kashmir",
        "albumId": 44,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "John Bonham",
        "milliseconds": 508604,
        "bytes": 16686580,
        "unitPrice": 0.99
    },
    {
        "name": "Imperatriz",
        "albumId": 45,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Guga/Marquinho Lessa/Tuninho Professor",
        "milliseconds": 339173,
        "bytes": 11348710,
        "unitPrice": 0.99
    },
    {
        "name": "Beija-Flor",
        "albumId": 45,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Caruso/Cleber/Deo/Osmar",
        "milliseconds": 327000,
        "bytes": 10991159,
        "unitPrice": 0.99
    },
    {
        "name": "Viradouro",
        "albumId": 45,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Dadinho/Gilbreto Gomes/Gustavo/P.C. Portugal/R. Mocoto",
        "milliseconds": 344320,
        "bytes": 11484362,
        "unitPrice": 0.99
    },
    {
        "name": "Mocidade",
        "albumId": 45,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Domenil/J. Brito/Joaozinho/Rap, Marcelo Do",
        "milliseconds": 261720,
        "bytes": 8817757,
        "unitPrice": 0.99
    },
    {
        "name": "Unidos Da Tijuca",
        "albumId": 45,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Douglas/Neves, Vicente Das/Silva, Gilmar L./Toninho Gentil/Wantuir",
        "milliseconds": 338834,
        "bytes": 11440689,
        "unitPrice": 0.99
    },
    {
        "name": "Salgueiro",
        "albumId": 45,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Augusto/Craig Negoescu/Rocco Filho/Saara, Ze Carlos Da",
        "milliseconds": 305920,
        "bytes": 10294741,
        "unitPrice": 0.99
    },
    {
        "name": "Mangueira",
        "albumId": 45,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Bizuca/Clóvis Pê/Gilson Bernini/Marelo D'Aguia",
        "milliseconds": 298318,
        "bytes": 9999506,
        "unitPrice": 0.99
    },
    {
        "name": "União Da Ilha",
        "albumId": 45,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Dito/Djalma Falcao/Ilha, Almir Da/Márcio André",
        "milliseconds": 330945,
        "bytes": 11100945,
        "unitPrice": 0.99
    },
    {
        "name": "Grande Rio",
        "albumId": 45,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Carlos Santos/Ciro/Claudio Russo/Zé Luiz",
        "milliseconds": 307252,
        "bytes": 10251428,
        "unitPrice": 0.99
    },
    {
        "name": "Portela",
        "albumId": 45,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Flavio Bororo/Paulo Apparicio/Wagner Alves/Zeca Sereno",
        "milliseconds": 319608,
        "bytes": 10712216,
        "unitPrice": 0.99
    },
    {
        "name": "Caprichosos",
        "albumId": 45,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Gule/Jorge 101/Lequinho/Luiz Piao",
        "milliseconds": 351320,
        "bytes": 11870956,
        "unitPrice": 0.99
    },
    {
        "name": "Tradição",
        "albumId": 45,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Adalto Magalha/Lourenco",
        "milliseconds": 269165,
        "bytes": 9114880,
        "unitPrice": 0.99
    },
    {
        "name": "Império Serrano",
        "albumId": 45,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Arlindo Cruz/Carlos Sena/Elmo Caetano/Mauricao",
        "milliseconds": 334942,
        "bytes": 11161196,
        "unitPrice": 0.99
    },
    {
        "name": "Tuiuti",
        "albumId": 45,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Claudio Martins/David Lima/Kleber Rodrigues/Livre, Cesare Som",
        "milliseconds": 259657,
        "bytes": 8749492,
        "unitPrice": 0.99
    },
    {
        "name": "(Da Le) Yaleo",
        "albumId": 46,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Santana",
        "milliseconds": 353488,
        "bytes": 11769507,
        "unitPrice": 0.99
    },
    {
        "name": "Love Of My Life",
        "albumId": 46,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Carlos Santana & Dave Matthews",
        "milliseconds": 347820,
        "bytes": 11634337,
        "unitPrice": 0.99
    },
    {
        "name": "Put Your Lights On",
        "albumId": 46,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "E. Shrody",
        "milliseconds": 285178,
        "bytes": 9394769,
        "unitPrice": 0.99
    },
    {
        "name": "Africa Bamba",
        "albumId": 46,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "I. Toure, S. Tidiane Toure, Carlos Santana & K. Perazzo",
        "milliseconds": 282827,
        "bytes": 9492487,
        "unitPrice": 0.99
    },
    {
        "name": "Smooth",
        "albumId": 46,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "M. Itaal Shur & Rob Thomas",
        "milliseconds": 298161,
        "bytes": 9867455,
        "unitPrice": 0.99
    },
    {
        "name": "Do You Like The Way",
        "albumId": 46,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "L. Hill",
        "milliseconds": 354899,
        "bytes": 11741062,
        "unitPrice": 0.99
    },
    {
        "name": "Maria Maria",
        "albumId": 46,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "W. Jean, J. Duplessis, Carlos Santana, K. Perazzo & R. Rekow",
        "milliseconds": 262635,
        "bytes": 8664601,
        "unitPrice": 0.99
    },
    {
        "name": "Migra",
        "albumId": 46,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "R. Taha, Carlos Santana & T. Lindsay",
        "milliseconds": 329064,
        "bytes": 10963305,
        "unitPrice": 0.99
    },
    {
        "name": "Corazon Espinado",
        "albumId": 46,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "F. Olivera",
        "milliseconds": 276114,
        "bytes": 9206802,
        "unitPrice": 0.99
    },
    {
        "name": "Wishing It Was",
        "albumId": 46,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Eale-Eye Cherry, M. Simpson, J. King & M. Nishita",
        "milliseconds": 292832,
        "bytes": 9771348,
        "unitPrice": 0.99
    },
    {
        "name": "El Farol",
        "albumId": 46,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Carlos Santana & KC Porter",
        "milliseconds": 291160,
        "bytes": 9599353,
        "unitPrice": 0.99
    },
    {
        "name": "Primavera",
        "albumId": 46,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "KC Porter & JB Eckl",
        "milliseconds": 378618,
        "bytes": 12504234,
        "unitPrice": 0.99
    },
    {
        "name": "The Calling",
        "albumId": 46,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Carlos Santana & C. Thompson",
        "milliseconds": 747755,
        "bytes": 24703884,
        "unitPrice": 0.99
    },
    {
        "name": "Solução",
        "albumId": 47,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 247431,
        "bytes": 8100449,
        "unitPrice": 0.99
    },
    {
        "name": "Manuel",
        "albumId": 47,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 230269,
        "bytes": 7677671,
        "unitPrice": 0.99
    },
    {
        "name": "Entre E Ouça",
        "albumId": 47,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 286302,
        "bytes": 9391004,
        "unitPrice": 0.99
    },
    {
        "name": "Um Contrato Com Deus",
        "albumId": 47,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 202501,
        "bytes": 6636465,
        "unitPrice": 0.99
    },
    {
        "name": "Um Jantar Pra Dois",
        "albumId": 47,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 244009,
        "bytes": 8021589,
        "unitPrice": 0.99
    },
    {
        "name": "Vamos Dançar",
        "albumId": 47,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 226194,
        "bytes": 7617432,
        "unitPrice": 0.99
    },
    {
        "name": "Um Love",
        "albumId": 47,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 181603,
        "bytes": 6095524,
        "unitPrice": 0.99
    },
    {
        "name": "Seis Da Tarde",
        "albumId": 47,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 238445,
        "bytes": 7935898,
        "unitPrice": 0.99
    },
    {
        "name": "Baixo Rio",
        "albumId": 47,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 198008,
        "bytes": 6521676,
        "unitPrice": 0.99
    },
    {
        "name": "Sombras Do Meu Destino",
        "albumId": 47,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 280685,
        "bytes": 9161539,
        "unitPrice": 0.99
    },
    {
        "name": "Do You Have Other Loves?",
        "albumId": 47,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 295235,
        "bytes": 9604273,
        "unitPrice": 0.99
    },
    {
        "name": "Agora Que O Dia Acordou",
        "albumId": 47,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 323213,
        "bytes": 10572752,
        "unitPrice": 0.99
    },
    {
        "name": "Já!!!",
        "albumId": 47,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 217782,
        "bytes": 7103608,
        "unitPrice": 0.99
    },
    {
        "name": "A Rua",
        "albumId": 47,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 238027,
        "bytes": 7930264,
        "unitPrice": 0.99
    },
    {
        "name": "Now's The Time",
        "albumId": 48,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Miles Davis",
        "milliseconds": 197459,
        "bytes": 6358868,
        "unitPrice": 0.99
    },
    {
        "name": "Jeru",
        "albumId": 48,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Miles Davis",
        "milliseconds": 193410,
        "bytes": 6222536,
        "unitPrice": 0.99
    },
    {
        "name": "Compulsion",
        "albumId": 48,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Miles Davis",
        "milliseconds": 345025,
        "bytes": 11254474,
        "unitPrice": 0.99
    },
    {
        "name": "Tempus Fugit",
        "albumId": 48,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Miles Davis",
        "milliseconds": 231784,
        "bytes": 7548434,
        "unitPrice": 0.99
    },
    {
        "name": "Walkin'",
        "albumId": 48,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Miles Davis",
        "milliseconds": 807392,
        "bytes": 26411634,
        "unitPrice": 0.99
    },
    {
        "name": "'Round Midnight",
        "albumId": 48,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Miles Davis",
        "milliseconds": 357459,
        "bytes": 11590284,
        "unitPrice": 0.99
    },
    {
        "name": "Bye Bye Blackbird",
        "albumId": 48,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Miles Davis",
        "milliseconds": 476003,
        "bytes": 15549224,
        "unitPrice": 0.99
    },
    {
        "name": "New Rhumba",
        "albumId": 48,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Miles Davis",
        "milliseconds": 277968,
        "bytes": 9018024,
        "unitPrice": 0.99
    },
    {
        "name": "Generique",
        "albumId": 48,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Miles Davis",
        "milliseconds": 168777,
        "bytes": 5437017,
        "unitPrice": 0.99
    },
    {
        "name": "Summertime",
        "albumId": 48,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Miles Davis",
        "milliseconds": 200437,
        "bytes": 6461370,
        "unitPrice": 0.99
    },
    {
        "name": "So What",
        "albumId": 48,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Miles Davis",
        "milliseconds": 564009,
        "bytes": 18360449,
        "unitPrice": 0.99
    },
    {
        "name": "The Pan Piper",
        "albumId": 48,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Miles Davis",
        "milliseconds": 233769,
        "bytes": 7593713,
        "unitPrice": 0.99
    },
    {
        "name": "Someday My Prince Will Come",
        "albumId": 48,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Miles Davis",
        "milliseconds": 544078,
        "bytes": 17890773,
        "unitPrice": 0.99
    },
    {
        "name": "My Funny Valentine (Live)",
        "albumId": 49,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Miles Davis",
        "milliseconds": 907520,
        "bytes": 29416781,
        "unitPrice": 0.99
    },
    {
        "name": "E.S.P.",
        "albumId": 49,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Miles Davis",
        "milliseconds": 330684,
        "bytes": 11079866,
        "unitPrice": 0.99
    },
    {
        "name": "Nefertiti",
        "albumId": 49,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Miles Davis",
        "milliseconds": 473495,
        "bytes": 15478450,
        "unitPrice": 0.99
    },
    {
        "name": "Petits Machins (Little Stuff)",
        "albumId": 49,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Miles Davis",
        "milliseconds": 487392,
        "bytes": 16131272,
        "unitPrice": 0.99
    },
    {
        "name": "Miles Runs The Voodoo Down",
        "albumId": 49,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Miles Davis",
        "milliseconds": 843964,
        "bytes": 27967919,
        "unitPrice": 0.99
    },
    {
        "name": "Little Church (Live)",
        "albumId": 49,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Miles Davis",
        "milliseconds": 196101,
        "bytes": 6273225,
        "unitPrice": 0.99
    },
    {
        "name": "Black Satin",
        "albumId": 49,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Miles Davis",
        "milliseconds": 316682,
        "bytes": 10529483,
        "unitPrice": 0.99
    },
    {
        "name": "Jean Pierre (Live)",
        "albumId": 49,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Miles Davis",
        "milliseconds": 243461,
        "bytes": 7955114,
        "unitPrice": 0.99
    },
    {
        "name": "Time After Time",
        "albumId": 49,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Miles Davis",
        "milliseconds": 220734,
        "bytes": 7292197,
        "unitPrice": 0.99
    },
    {
        "name": "Portia",
        "albumId": 49,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Miles Davis",
        "milliseconds": 378775,
        "bytes": 12520126,
        "unitPrice": 0.99
    },
    {
        "name": "Space Truckin'",
        "albumId": 50,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Blackmore/Gillan/Glover/Lord/Paice",
        "milliseconds": 1196094,
        "bytes": 39267613,
        "unitPrice": 0.99
    },
    {
        "name": "Going Down / Highway Star",
        "albumId": 50,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Gillan/Glover/Lord/Nix - Blackmore/Paice",
        "milliseconds": 913658,
        "bytes": 29846063,
        "unitPrice": 0.99
    },
    {
        "name": "Mistreated (Alternate Version)",
        "albumId": 50,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Blackmore/Coverdale",
        "milliseconds": 854700,
        "bytes": 27775442,
        "unitPrice": 0.99
    },
    {
        "name": "You Fool No One (Alternate Version)",
        "albumId": 50,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Blackmore/Coverdale/Lord/Paice",
        "milliseconds": 763924,
        "bytes": 24887209,
        "unitPrice": 0.99
    },
    {
        "name": "Jeepers Creepers",
        "albumId": 51,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": null,
        "milliseconds": 185965,
        "bytes": 5991903,
        "unitPrice": 0.99
    },
    {
        "name": "Blue Rythm Fantasy",
        "albumId": 51,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": null,
        "milliseconds": 348212,
        "bytes": 11204006,
        "unitPrice": 0.99
    },
    {
        "name": "Drum Boogie",
        "albumId": 51,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": null,
        "milliseconds": 191555,
        "bytes": 6185636,
        "unitPrice": 0.99
    },
    {
        "name": "Let Me Off Uptown",
        "albumId": 51,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": null,
        "milliseconds": 187637,
        "bytes": 6034685,
        "unitPrice": 0.99
    },
    {
        "name": "Leave Us Leap",
        "albumId": 51,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": null,
        "milliseconds": 182726,
        "bytes": 5898810,
        "unitPrice": 0.99
    },
    {
        "name": "Opus No.1",
        "albumId": 51,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": null,
        "milliseconds": 179800,
        "bytes": 5846041,
        "unitPrice": 0.99
    },
    {
        "name": "Boogie Blues",
        "albumId": 51,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": null,
        "milliseconds": 204199,
        "bytes": 6603153,
        "unitPrice": 0.99
    },
    {
        "name": "How High The Moon",
        "albumId": 51,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": null,
        "milliseconds": 201430,
        "bytes": 6529487,
        "unitPrice": 0.99
    },
    {
        "name": "Disc Jockey Jump",
        "albumId": 51,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": null,
        "milliseconds": 193149,
        "bytes": 6260820,
        "unitPrice": 0.99
    },
    {
        "name": "Up An' Atom",
        "albumId": 51,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": null,
        "milliseconds": 179565,
        "bytes": 5822645,
        "unitPrice": 0.99
    },
    {
        "name": "Bop Boogie",
        "albumId": 51,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": null,
        "milliseconds": 189596,
        "bytes": 6093124,
        "unitPrice": 0.99
    },
    {
        "name": "Lemon Drop",
        "albumId": 51,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": null,
        "milliseconds": 194089,
        "bytes": 6287531,
        "unitPrice": 0.99
    },
    {
        "name": "Coronation Drop",
        "albumId": 51,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": null,
        "milliseconds": 176222,
        "bytes": 5899898,
        "unitPrice": 0.99
    },
    {
        "name": "Overtime",
        "albumId": 51,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": null,
        "milliseconds": 163030,
        "bytes": 5432236,
        "unitPrice": 0.99
    },
    {
        "name": "Imagination",
        "albumId": 51,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": null,
        "milliseconds": 289306,
        "bytes": 9444385,
        "unitPrice": 0.99
    },
    {
        "name": "Don't Take Your Love From Me",
        "albumId": 51,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": null,
        "milliseconds": 282331,
        "bytes": 9244238,
        "unitPrice": 0.99
    },
    {
        "name": "Midget",
        "albumId": 51,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": null,
        "milliseconds": 217025,
        "bytes": 7257663,
        "unitPrice": 0.99
    },
    {
        "name": "I'm Coming Virginia",
        "albumId": 51,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": null,
        "milliseconds": 280163,
        "bytes": 9209827,
        "unitPrice": 0.99
    },
    {
        "name": "Payin' Them Dues Blues",
        "albumId": 51,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": null,
        "milliseconds": 198556,
        "bytes": 6536918,
        "unitPrice": 0.99
    },
    {
        "name": "Jungle Drums",
        "albumId": 51,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": null,
        "milliseconds": 199627,
        "bytes": 6546063,
        "unitPrice": 0.99
    },
    {
        "name": "Showcase",
        "albumId": 51,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": null,
        "milliseconds": 201560,
        "bytes": 6697510,
        "unitPrice": 0.99
    },
    {
        "name": "Swedish Schnapps",
        "albumId": 51,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": null,
        "milliseconds": 191268,
        "bytes": 6359750,
        "unitPrice": 0.99
    },
    {
        "name": "Samba Da Bênção",
        "albumId": 52,
        "mediaTypeId": 1,
        "genreId": 11,
        "composer": null,
        "milliseconds": 409965,
        "bytes": 13490008,
        "unitPrice": 0.99
    },
    {
        "name": "Pot-Pourri N.º 4",
        "albumId": 52,
        "mediaTypeId": 1,
        "genreId": 11,
        "composer": null,
        "milliseconds": 392437,
        "bytes": 13125975,
        "unitPrice": 0.99
    },
    {
        "name": "Onde Anda Você",
        "albumId": 52,
        "mediaTypeId": 1,
        "genreId": 11,
        "composer": null,
        "milliseconds": 168437,
        "bytes": 5550356,
        "unitPrice": 0.99
    },
    {
        "name": "Samba Da Volta",
        "albumId": 52,
        "mediaTypeId": 1,
        "genreId": 11,
        "composer": null,
        "milliseconds": 170631,
        "bytes": 5676090,
        "unitPrice": 0.99
    },
    {
        "name": "Canto De Ossanha",
        "albumId": 52,
        "mediaTypeId": 1,
        "genreId": 11,
        "composer": null,
        "milliseconds": 204956,
        "bytes": 6771624,
        "unitPrice": 0.99
    },
    {
        "name": "Pot-Pourri N.º 5",
        "albumId": 52,
        "mediaTypeId": 1,
        "genreId": 11,
        "composer": null,
        "milliseconds": 219898,
        "bytes": 7117769,
        "unitPrice": 0.99
    },
    {
        "name": "Formosa",
        "albumId": 52,
        "mediaTypeId": 1,
        "genreId": 11,
        "composer": null,
        "milliseconds": 137482,
        "bytes": 4560873,
        "unitPrice": 0.99
    },
    {
        "name": "Como É Duro Trabalhar",
        "albumId": 52,
        "mediaTypeId": 1,
        "genreId": 11,
        "composer": null,
        "milliseconds": 226168,
        "bytes": 7541177,
        "unitPrice": 0.99
    },
    {
        "name": "Minha Namorada",
        "albumId": 52,
        "mediaTypeId": 1,
        "genreId": 11,
        "composer": null,
        "milliseconds": 244297,
        "bytes": 7927967,
        "unitPrice": 0.99
    },
    {
        "name": "Por Que Será",
        "albumId": 52,
        "mediaTypeId": 1,
        "genreId": 11,
        "composer": null,
        "milliseconds": 162142,
        "bytes": 5371483,
        "unitPrice": 0.99
    },
    {
        "name": "Berimbau",
        "albumId": 52,
        "mediaTypeId": 1,
        "genreId": 11,
        "composer": null,
        "milliseconds": 190667,
        "bytes": 6335548,
        "unitPrice": 0.99
    },
    {
        "name": "Deixa",
        "albumId": 52,
        "mediaTypeId": 1,
        "genreId": 11,
        "composer": null,
        "milliseconds": 179826,
        "bytes": 5932799,
        "unitPrice": 0.99
    },
    {
        "name": "Pot-Pourri N.º 2",
        "albumId": 52,
        "mediaTypeId": 1,
        "genreId": 11,
        "composer": null,
        "milliseconds": 211748,
        "bytes": 6878359,
        "unitPrice": 0.99
    },
    {
        "name": "Samba Em Prelúdio",
        "albumId": 52,
        "mediaTypeId": 1,
        "genreId": 11,
        "composer": null,
        "milliseconds": 212636,
        "bytes": 6923473,
        "unitPrice": 0.99
    },
    {
        "name": "Carta Ao Tom 74",
        "albumId": 52,
        "mediaTypeId": 1,
        "genreId": 11,
        "composer": null,
        "milliseconds": 162560,
        "bytes": 5382354,
        "unitPrice": 0.99
    },
    {
        "name": "Linha de Passe (João Bosco)",
        "albumId": 53,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 230948,
        "bytes": 7902328,
        "unitPrice": 0.99
    },
    {
        "name": "Pela Luz dos Olhos Teus (Miúcha e Tom Jobim)",
        "albumId": 53,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 163970,
        "bytes": 5399626,
        "unitPrice": 0.99
    },
    {
        "name": "Chão de Giz (Elba Ramalho)",
        "albumId": 53,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 274834,
        "bytes": 9016916,
        "unitPrice": 0.99
    },
    {
        "name": "Marina (Dorival Caymmi)",
        "albumId": 53,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 172643,
        "bytes": 5523628,
        "unitPrice": 0.99
    },
    {
        "name": "Aquarela (Toquinho)",
        "albumId": 53,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 259944,
        "bytes": 8480140,
        "unitPrice": 0.99
    },
    {
        "name": "Coração do Agreste (Fafá de Belém)",
        "albumId": 53,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 258194,
        "bytes": 8380320,
        "unitPrice": 0.99
    },
    {
        "name": "Dona (Roupa Nova)",
        "albumId": 53,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 243356,
        "bytes": 7991295,
        "unitPrice": 0.99
    },
    {
        "name": "Começaria Tudo Outra Vez (Maria Creuza)",
        "albumId": 53,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 206994,
        "bytes": 6851151,
        "unitPrice": 0.99
    },
    {
        "name": "Caçador de Mim (Sá & Guarabyra)",
        "albumId": 53,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 238341,
        "bytes": 7751360,
        "unitPrice": 0.99
    },
    {
        "name": "Romaria (Renato Teixeira)",
        "albumId": 53,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 244793,
        "bytes": 8033885,
        "unitPrice": 0.99
    },
    {
        "name": "As Rosas Não Falam (Beth Carvalho)",
        "albumId": 53,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 116767,
        "bytes": 3836641,
        "unitPrice": 0.99
    },
    {
        "name": "Wave (Os Cariocas)",
        "albumId": 53,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 130063,
        "bytes": 4298006,
        "unitPrice": 0.99
    },
    {
        "name": "Garota de Ipanema (Dick Farney)",
        "albumId": 53,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 174367,
        "bytes": 5767474,
        "unitPrice": 0.99
    },
    {
        "name": "Preciso Apender a Viver Só (Maysa)",
        "albumId": 53,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 143464,
        "bytes": 4642359,
        "unitPrice": 0.99
    },
    {
        "name": "Susie Q",
        "albumId": 54,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Hawkins-Lewis-Broadwater",
        "milliseconds": 275565,
        "bytes": 9043825,
        "unitPrice": 0.99
    },
    {
        "name": "I Put A Spell On You",
        "albumId": 54,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jay Hawkins",
        "milliseconds": 272091,
        "bytes": 8943000,
        "unitPrice": 0.99
    },
    {
        "name": "Proud Mary",
        "albumId": 54,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "J. C. Fogerty",
        "milliseconds": 189022,
        "bytes": 6229590,
        "unitPrice": 0.99
    },
    {
        "name": "Bad Moon Rising",
        "albumId": 54,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "J. C. Fogerty",
        "milliseconds": 140146,
        "bytes": 4609835,
        "unitPrice": 0.99
    },
    {
        "name": "Lodi",
        "albumId": 54,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "J. C. Fogerty",
        "milliseconds": 191451,
        "bytes": 6260214,
        "unitPrice": 0.99
    },
    {
        "name": "Green River",
        "albumId": 54,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "J. C. Fogerty",
        "milliseconds": 154279,
        "bytes": 5105874,
        "unitPrice": 0.99
    },
    {
        "name": "Commotion",
        "albumId": 54,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "J. C. Fogerty",
        "milliseconds": 162899,
        "bytes": 5354252,
        "unitPrice": 0.99
    },
    {
        "name": "Down On The Corner",
        "albumId": 54,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "J. C. Fogerty",
        "milliseconds": 164858,
        "bytes": 5521804,
        "unitPrice": 0.99
    },
    {
        "name": "Fortunate Son",
        "albumId": 54,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "J. C. Fogerty",
        "milliseconds": 140329,
        "bytes": 4617559,
        "unitPrice": 0.99
    },
    {
        "name": "Travelin' Band",
        "albumId": 54,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "J. C. Fogerty",
        "milliseconds": 129358,
        "bytes": 4270414,
        "unitPrice": 0.99
    },
    {
        "name": "Who'll Stop The Rain",
        "albumId": 54,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "J. C. Fogerty",
        "milliseconds": 149394,
        "bytes": 4899579,
        "unitPrice": 0.99
    },
    {
        "name": "Up Around The Bend",
        "albumId": 54,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "J. C. Fogerty",
        "milliseconds": 162429,
        "bytes": 5368701,
        "unitPrice": 0.99
    },
    {
        "name": "Run Through The Jungle",
        "albumId": 54,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "J. C. Fogerty",
        "milliseconds": 186044,
        "bytes": 6156567,
        "unitPrice": 0.99
    },
    {
        "name": "Lookin' Out My Back Door",
        "albumId": 54,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "J. C. Fogerty",
        "milliseconds": 152946,
        "bytes": 5034670,
        "unitPrice": 0.99
    },
    {
        "name": "Long As I Can See The Light",
        "albumId": 54,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "J. C. Fogerty",
        "milliseconds": 213237,
        "bytes": 6924024,
        "unitPrice": 0.99
    },
    {
        "name": "I Heard It Through The Grapevine",
        "albumId": 54,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Whitfield-Strong",
        "milliseconds": 664894,
        "bytes": 21947845,
        "unitPrice": 0.99
    },
    {
        "name": "Have You Ever Seen The Rain?",
        "albumId": 54,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "J. C. Fogerty",
        "milliseconds": 160052,
        "bytes": 5263675,
        "unitPrice": 0.99
    },
    {
        "name": "Hey Tonight",
        "albumId": 54,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "J. C. Fogerty",
        "milliseconds": 162847,
        "bytes": 5343807,
        "unitPrice": 0.99
    },
    {
        "name": "Sweet Hitch-Hiker",
        "albumId": 54,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "J. C. Fogerty",
        "milliseconds": 175490,
        "bytes": 5716603,
        "unitPrice": 0.99
    },
    {
        "name": "Someday Never Comes",
        "albumId": 54,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "J. C. Fogerty",
        "milliseconds": 239360,
        "bytes": 7945235,
        "unitPrice": 0.99
    },
    {
        "name": "Walking On The Water",
        "albumId": 55,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "J.C. Fogerty",
        "milliseconds": 281286,
        "bytes": 9302129,
        "unitPrice": 0.99
    },
    {
        "name": "Suzie-Q, Pt. 2",
        "albumId": 55,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "J.C. Fogerty",
        "milliseconds": 244114,
        "bytes": 7986637,
        "unitPrice": 0.99
    },
    {
        "name": "Born On The Bayou",
        "albumId": 55,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "J.C. Fogerty",
        "milliseconds": 316630,
        "bytes": 10361866,
        "unitPrice": 0.99
    },
    {
        "name": "Good Golly Miss Molly",
        "albumId": 55,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "J.C. Fogerty",
        "milliseconds": 163604,
        "bytes": 5348175,
        "unitPrice": 0.99
    },
    {
        "name": "Tombstone Shadow",
        "albumId": 55,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "J.C. Fogerty",
        "milliseconds": 218880,
        "bytes": 7209080,
        "unitPrice": 0.99
    },
    {
        "name": "Wrote A Song For Everyone",
        "albumId": 55,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "J.C. Fogerty",
        "milliseconds": 296385,
        "bytes": 9675875,
        "unitPrice": 0.99
    },
    {
        "name": "Night Time Is The Right Time",
        "albumId": 55,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "J.C. Fogerty",
        "milliseconds": 190119,
        "bytes": 6211173,
        "unitPrice": 0.99
    },
    {
        "name": "Cotton Fields",
        "albumId": 55,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "J.C. Fogerty",
        "milliseconds": 178181,
        "bytes": 5919224,
        "unitPrice": 0.99
    },
    {
        "name": "It Came Out Of The Sky",
        "albumId": 55,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "J.C. Fogerty",
        "milliseconds": 176718,
        "bytes": 5807474,
        "unitPrice": 0.99
    },
    {
        "name": "Don't Look Now",
        "albumId": 55,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "J.C. Fogerty",
        "milliseconds": 131918,
        "bytes": 4366455,
        "unitPrice": 0.99
    },
    {
        "name": "The Midnight Special",
        "albumId": 55,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "J.C. Fogerty",
        "milliseconds": 253596,
        "bytes": 8297482,
        "unitPrice": 0.99
    },
    {
        "name": "Before You Accuse Me",
        "albumId": 55,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "J.C. Fogerty",
        "milliseconds": 207804,
        "bytes": 6815126,
        "unitPrice": 0.99
    },
    {
        "name": "My Baby Left Me",
        "albumId": 55,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "J.C. Fogerty",
        "milliseconds": 140460,
        "bytes": 4633440,
        "unitPrice": 0.99
    },
    {
        "name": "Pagan Baby",
        "albumId": 55,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "J.C. Fogerty",
        "milliseconds": 385619,
        "bytes": 12713813,
        "unitPrice": 0.99
    },
    {
        "name": "(Wish I Could) Hideaway",
        "albumId": 55,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "J.C. Fogerty",
        "milliseconds": 228466,
        "bytes": 7432978,
        "unitPrice": 0.99
    },
    {
        "name": "It's Just A Thought",
        "albumId": 55,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "J.C. Fogerty",
        "milliseconds": 237374,
        "bytes": 7778319,
        "unitPrice": 0.99
    },
    {
        "name": "Molina",
        "albumId": 55,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "J.C. Fogerty",
        "milliseconds": 163239,
        "bytes": 5390811,
        "unitPrice": 0.99
    },
    {
        "name": "Born To Move",
        "albumId": 55,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "J.C. Fogerty",
        "milliseconds": 342804,
        "bytes": 11260814,
        "unitPrice": 0.99
    },
    {
        "name": "Lookin' For A Reason",
        "albumId": 55,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "J.C. Fogerty",
        "milliseconds": 209789,
        "bytes": 6933135,
        "unitPrice": 0.99
    },
    {
        "name": "Hello Mary Lou",
        "albumId": 55,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "J.C. Fogerty",
        "milliseconds": 132832,
        "bytes": 4476563,
        "unitPrice": 0.99
    },
    {
        "name": "Gatas Extraordinárias",
        "albumId": 56,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 212506,
        "bytes": 7095702,
        "unitPrice": 0.99
    },
    {
        "name": "Brasil",
        "albumId": 56,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 243696,
        "bytes": 7911683,
        "unitPrice": 0.99
    },
    {
        "name": "Eu Sou Neguinha (Ao Vivo)",
        "albumId": 56,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 251768,
        "bytes": 8376000,
        "unitPrice": 0.99
    },
    {
        "name": "Geração Coca-Cola (Ao Vivo)",
        "albumId": 56,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 228153,
        "bytes": 7573301,
        "unitPrice": 0.99
    },
    {
        "name": "Lanterna Dos Afogados",
        "albumId": 56,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 204538,
        "bytes": 6714582,
        "unitPrice": 0.99
    },
    {
        "name": "Coroné Antonio Bento",
        "albumId": 56,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 200437,
        "bytes": 6713066,
        "unitPrice": 0.99
    },
    {
        "name": "Você Passa, Eu Acho Graça (Ao Vivo)",
        "albumId": 56,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 206733,
        "bytes": 6943576,
        "unitPrice": 0.99
    },
    {
        "name": "Meu Mundo Fica Completo (Com Você)",
        "albumId": 56,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 247771,
        "bytes": 8322240,
        "unitPrice": 0.99
    },
    {
        "name": "1° De Julho",
        "albumId": 56,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 270262,
        "bytes": 9017535,
        "unitPrice": 0.99
    },
    {
        "name": "Música Urbana 2",
        "albumId": 56,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 194899,
        "bytes": 6383472,
        "unitPrice": 0.99
    },
    {
        "name": "Vida Bandida (Ao Vivo)",
        "albumId": 56,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 192626,
        "bytes": 6360785,
        "unitPrice": 0.99
    },
    {
        "name": "Palavras Ao Vento",
        "albumId": 56,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 212453,
        "bytes": 7048676,
        "unitPrice": 0.99
    },
    {
        "name": "Não Sei O Que Eu Quero Da Vida",
        "albumId": 56,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 151849,
        "bytes": 5024963,
        "unitPrice": 0.99
    },
    {
        "name": "Woman Is The Nigger Of The World (Ao Vivo)",
        "albumId": 56,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 298919,
        "bytes": 9724145,
        "unitPrice": 0.99
    },
    {
        "name": "Juventude Transviada (Ao Vivo)",
        "albumId": 56,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 278622,
        "bytes": 9183808,
        "unitPrice": 0.99
    },
    {
        "name": "Malandragem",
        "albumId": 57,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 247588,
        "bytes": 8165048,
        "unitPrice": 0.99
    },
    {
        "name": "O Segundo Sol",
        "albumId": 57,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 252133,
        "bytes": 8335629,
        "unitPrice": 0.99
    },
    {
        "name": "Smells Like Teen Spirit (Ao Vivo)",
        "albumId": 57,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 316865,
        "bytes": 10384506,
        "unitPrice": 0.99
    },
    {
        "name": "E.C.T.",
        "albumId": 57,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 227500,
        "bytes": 7571834,
        "unitPrice": 0.99
    },
    {
        "name": "Todo Amor Que Houver Nesta Vida",
        "albumId": 57,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 227160,
        "bytes": 7420347,
        "unitPrice": 0.99
    },
    {
        "name": "Metrô. Linha 743",
        "albumId": 57,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 174654,
        "bytes": 5837495,
        "unitPrice": 0.99
    },
    {
        "name": "Nós (Ao Vivo)",
        "albumId": 57,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 193828,
        "bytes": 6498661,
        "unitPrice": 0.99
    },
    {
        "name": "Na Cadência Do Samba",
        "albumId": 57,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 196075,
        "bytes": 6483952,
        "unitPrice": 0.99
    },
    {
        "name": "Admirável Gado Novo",
        "albumId": 57,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 274390,
        "bytes": 9144031,
        "unitPrice": 0.99
    },
    {
        "name": "Eleanor Rigby",
        "albumId": 57,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 189466,
        "bytes": 6303205,
        "unitPrice": 0.99
    },
    {
        "name": "Socorro",
        "albumId": 57,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 258586,
        "bytes": 8549393,
        "unitPrice": 0.99
    },
    {
        "name": "Blues Da Piedade",
        "albumId": 57,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 257123,
        "bytes": 8472964,
        "unitPrice": 0.99
    },
    {
        "name": "Rubens",
        "albumId": 57,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 211853,
        "bytes": 7026317,
        "unitPrice": 0.99
    },
    {
        "name": "Não Deixe O Samba Morrer - Cassia Eller e Alcione",
        "albumId": 57,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 268173,
        "bytes": 8936345,
        "unitPrice": 0.99
    },
    {
        "name": "Mis Penas Lloraba Yo (Ao Vivo) Soy Gitano (Tangos)",
        "albumId": 57,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 188473,
        "bytes": 6195854,
        "unitPrice": 0.99
    },
    {
        "name": "Comin' Home",
        "albumId": 58,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bolin/Coverdale/Paice",
        "milliseconds": 235781,
        "bytes": 7644604,
        "unitPrice": 0.99
    },
    {
        "name": "Lady Luck",
        "albumId": 58,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Cook/Coverdale",
        "milliseconds": 168202,
        "bytes": 5501379,
        "unitPrice": 0.99
    },
    {
        "name": "Gettin' Tighter",
        "albumId": 58,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bolin/Hughes",
        "milliseconds": 218044,
        "bytes": 7176909,
        "unitPrice": 0.99
    },
    {
        "name": "Dealer",
        "albumId": 58,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bolin/Coverdale",
        "milliseconds": 230922,
        "bytes": 7591066,
        "unitPrice": 0.99
    },
    {
        "name": "I Need Love",
        "albumId": 58,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bolin/Coverdale",
        "milliseconds": 263836,
        "bytes": 8701064,
        "unitPrice": 0.99
    },
    {
        "name": "Drifter",
        "albumId": 58,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bolin/Coverdale",
        "milliseconds": 242834,
        "bytes": 8001505,
        "unitPrice": 0.99
    },
    {
        "name": "Love Child",
        "albumId": 58,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bolin/Coverdale",
        "milliseconds": 188160,
        "bytes": 6173806,
        "unitPrice": 0.99
    },
    {
        "name": "This Time Around / Owed to 'G' [Instrumental]",
        "albumId": 58,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bolin/Hughes/Lord",
        "milliseconds": 370102,
        "bytes": 11995679,
        "unitPrice": 0.99
    },
    {
        "name": "You Keep On Moving",
        "albumId": 58,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Coverdale/Hughes",
        "milliseconds": 319111,
        "bytes": 10447868,
        "unitPrice": 0.99
    },
    {
        "name": "Speed King",
        "albumId": 59,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Blackmore, Gillan, Glover, Lord, Paice",
        "milliseconds": 264385,
        "bytes": 8587578,
        "unitPrice": 0.99
    },
    {
        "name": "Bloodsucker",
        "albumId": 59,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Blackmore, Gillan, Glover, Lord, Paice",
        "milliseconds": 256261,
        "bytes": 8344405,
        "unitPrice": 0.99
    },
    {
        "name": "Child In Time",
        "albumId": 59,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Blackmore, Gillan, Glover, Lord, Paice",
        "milliseconds": 620460,
        "bytes": 20230089,
        "unitPrice": 0.99
    },
    {
        "name": "Flight Of The Rat",
        "albumId": 59,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Blackmore, Gillan, Glover, Lord, Paice",
        "milliseconds": 478302,
        "bytes": 15563967,
        "unitPrice": 0.99
    },
    {
        "name": "Into The Fire",
        "albumId": 59,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Blackmore, Gillan, Glover, Lord, Paice",
        "milliseconds": 210259,
        "bytes": 6849310,
        "unitPrice": 0.99
    },
    {
        "name": "Living Wreck",
        "albumId": 59,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Blackmore, Gillan, Glover, Lord, Paice",
        "milliseconds": 274886,
        "bytes": 8993056,
        "unitPrice": 0.99
    },
    {
        "name": "Hard Lovin' Man",
        "albumId": 59,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Blackmore, Gillan, Glover, Lord, Paice",
        "milliseconds": 431203,
        "bytes": 13931179,
        "unitPrice": 0.99
    },
    {
        "name": "Fireball",
        "albumId": 60,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Ritchie Blackmore, Ian Gillan, Roger Glover, Jon Lord, Ian Paice",
        "milliseconds": 204721,
        "bytes": 6714807,
        "unitPrice": 0.99
    },
    {
        "name": "No No No",
        "albumId": 60,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Ritchie Blackmore, Ian Gillan, Roger Glover, Jon Lord, Ian Paice",
        "milliseconds": 414902,
        "bytes": 13646606,
        "unitPrice": 0.99
    },
    {
        "name": "Strange Kind Of Woman",
        "albumId": 60,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Ritchie Blackmore, Ian Gillan, Roger Glover, Jon Lord, Ian Paice",
        "milliseconds": 247092,
        "bytes": 8072036,
        "unitPrice": 0.99
    },
    {
        "name": "Anyone's Daughter",
        "albumId": 60,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Ritchie Blackmore, Ian Gillan, Roger Glover, Jon Lord, Ian Paice",
        "milliseconds": 284682,
        "bytes": 9354480,
        "unitPrice": 0.99
    },
    {
        "name": "The Mule",
        "albumId": 60,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Ritchie Blackmore, Ian Gillan, Roger Glover, Jon Lord, Ian Paice",
        "milliseconds": 322063,
        "bytes": 10638390,
        "unitPrice": 0.99
    },
    {
        "name": "Fools",
        "albumId": 60,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Ritchie Blackmore, Ian Gillan, Roger Glover, Jon Lord, Ian Paice",
        "milliseconds": 500427,
        "bytes": 16279366,
        "unitPrice": 0.99
    },
    {
        "name": "No One Came",
        "albumId": 60,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Ritchie Blackmore, Ian Gillan, Roger Glover, Jon Lord, Ian Paice",
        "milliseconds": 385880,
        "bytes": 12643813,
        "unitPrice": 0.99
    },
    {
        "name": "Knocking At Your Back Door",
        "albumId": 61,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Richie Blackmore, Ian Gillian, Roger Glover",
        "milliseconds": 424829,
        "bytes": 13779332,
        "unitPrice": 0.99
    },
    {
        "name": "Bad Attitude",
        "albumId": 61,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Richie Blackmore, Ian Gillian, Roger Glover, Jon Lord",
        "milliseconds": 307905,
        "bytes": 10035180,
        "unitPrice": 0.99
    },
    {
        "name": "Child In Time (Son Of Aleric - Instrumental)",
        "albumId": 61,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Richie Blackmore, Ian Gillian, Roger Glover, Jon Lord, Ian Paice",
        "milliseconds": 602880,
        "bytes": 19712753,
        "unitPrice": 0.99
    },
    {
        "name": "Nobody's Home",
        "albumId": 61,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Richie Blackmore, Ian Gillian, Roger Glover, Jon Lord, Ian Paice",
        "milliseconds": 243017,
        "bytes": 7929493,
        "unitPrice": 0.99
    },
    {
        "name": "Black Night",
        "albumId": 61,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Richie Blackmore, Ian Gillian, Roger Glover, Jon Lord, Ian Paice",
        "milliseconds": 368770,
        "bytes": 12058906,
        "unitPrice": 0.99
    },
    {
        "name": "Perfect Strangers",
        "albumId": 61,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Richie Blackmore, Ian Gillian, Roger Glover",
        "milliseconds": 321149,
        "bytes": 10445353,
        "unitPrice": 0.99
    },
    {
        "name": "The Unwritten Law",
        "albumId": 61,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Richie Blackmore, Ian Gillian, Roger Glover, Ian Paice",
        "milliseconds": 295053,
        "bytes": 9740361,
        "unitPrice": 0.99
    },
    {
        "name": "Call Of The Wild",
        "albumId": 61,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Richie Blackmore, Ian Gillian, Roger Glover, Jon Lord",
        "milliseconds": 293851,
        "bytes": 9575295,
        "unitPrice": 0.99
    },
    {
        "name": "Hush",
        "albumId": 61,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "South",
        "milliseconds": 213054,
        "bytes": 6944928,
        "unitPrice": 0.99
    },
    {
        "name": "Smoke On The Water",
        "albumId": 61,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Richie Blackmore, Ian Gillian, Roger Glover, Jon Lord, Ian Paice",
        "milliseconds": 464378,
        "bytes": 15180849,
        "unitPrice": 0.99
    },
    {
        "name": "Space Trucking",
        "albumId": 61,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Richie Blackmore, Ian Gillian, Roger Glover, Jon Lord, Ian Paice",
        "milliseconds": 341185,
        "bytes": 11122183,
        "unitPrice": 0.99
    },
    {
        "name": "Highway Star",
        "albumId": 62,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Ian Gillan/Ian Paice/Jon Lord/Ritchie Blckmore/Roger Glover",
        "milliseconds": 368770,
        "bytes": 12012452,
        "unitPrice": 0.99
    },
    {
        "name": "Maybe I'm A Leo",
        "albumId": 62,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Ian Gillan/Ian Paice/Jon Lord/Ritchie Blckmore/Roger Glover",
        "milliseconds": 290455,
        "bytes": 9502646,
        "unitPrice": 0.99
    },
    {
        "name": "Pictures Of Home",
        "albumId": 62,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Ian Gillan/Ian Paice/Jon Lord/Ritchie Blckmore/Roger Glover",
        "milliseconds": 303777,
        "bytes": 9903835,
        "unitPrice": 0.99
    },
    {
        "name": "Never Before",
        "albumId": 62,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Ian Gillan/Ian Paice/Jon Lord/Ritchie Blckmore/Roger Glover",
        "milliseconds": 239830,
        "bytes": 7832790,
        "unitPrice": 0.99
    },
    {
        "name": "Smoke On The Water",
        "albumId": 62,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Ian Gillan/Ian Paice/Jon Lord/Ritchie Blckmore/Roger Glover",
        "milliseconds": 340871,
        "bytes": 11246496,
        "unitPrice": 0.99
    },
    {
        "name": "Lazy",
        "albumId": 62,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Ian Gillan/Ian Paice/Jon Lord/Ritchie Blckmore/Roger Glover",
        "milliseconds": 442096,
        "bytes": 14397671,
        "unitPrice": 0.99
    },
    {
        "name": "Space Truckin'",
        "albumId": 62,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Ian Gillan/Ian Paice/Jon Lord/Ritchie Blckmore/Roger Glover",
        "milliseconds": 272796,
        "bytes": 8981030,
        "unitPrice": 0.99
    },
    {
        "name": "Vavoom : Ted The Mechanic",
        "albumId": 63,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Ian Gillan, Roger Glover, Jon Lord, Steve Morse, Ian Paice",
        "milliseconds": 257384,
        "bytes": 8510755,
        "unitPrice": 0.99
    },
    {
        "name": "Loosen My Strings",
        "albumId": 63,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Ian Gillan, Roger Glover, Jon Lord, Steve Morse, Ian Paice",
        "milliseconds": 359680,
        "bytes": 11702232,
        "unitPrice": 0.99
    },
    {
        "name": "Soon Forgotten",
        "albumId": 63,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Ian Gillan, Roger Glover, Jon Lord, Steve Morse, Ian Paice",
        "milliseconds": 287791,
        "bytes": 9401383,
        "unitPrice": 0.99
    },
    {
        "name": "Sometimes I Feel Like Screaming",
        "albumId": 63,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Ian Gillan, Roger Glover, Jon Lord, Steve Morse, Ian Paice",
        "milliseconds": 451840,
        "bytes": 14789410,
        "unitPrice": 0.99
    },
    {
        "name": "Cascades : I'm Not Your Lover",
        "albumId": 63,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Ian Gillan, Roger Glover, Jon Lord, Steve Morse, Ian Paice",
        "milliseconds": 283689,
        "bytes": 9209693,
        "unitPrice": 0.99
    },
    {
        "name": "The Aviator",
        "albumId": 63,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Ian Gillan, Roger Glover, Jon Lord, Steve Morse, Ian Paice",
        "milliseconds": 320992,
        "bytes": 10532053,
        "unitPrice": 0.99
    },
    {
        "name": "Rosa's Cantina",
        "albumId": 63,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Ian Gillan, Roger Glover, Jon Lord, Steve Morse, Ian Paice",
        "milliseconds": 312372,
        "bytes": 10323804,
        "unitPrice": 0.99
    },
    {
        "name": "A Castle Full Of Rascals",
        "albumId": 63,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Ian Gillan, Roger Glover, Jon Lord, Steve Morse, Ian Paice",
        "milliseconds": 311693,
        "bytes": 10159566,
        "unitPrice": 0.99
    },
    {
        "name": "A Touch Away",
        "albumId": 63,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Ian Gillan, Roger Glover, Jon Lord, Steve Morse, Ian Paice",
        "milliseconds": 276323,
        "bytes": 9098561,
        "unitPrice": 0.99
    },
    {
        "name": "Hey Cisco",
        "albumId": 63,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Ian Gillan, Roger Glover, Jon Lord, Steve Morse, Ian Paice",
        "milliseconds": 354089,
        "bytes": 11600029,
        "unitPrice": 0.99
    },
    {
        "name": "Somebody Stole My Guitar",
        "albumId": 63,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Ian Gillan, Roger Glover, Jon Lord, Steve Morse, Ian Paice",
        "milliseconds": 249443,
        "bytes": 8180421,
        "unitPrice": 0.99
    },
    {
        "name": "The Purpendicular Waltz",
        "albumId": 63,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Ian Gillan, Roger Glover, Jon Lord, Steve Morse, Ian Paice",
        "milliseconds": 283924,
        "bytes": 9299131,
        "unitPrice": 0.99
    },
    {
        "name": "King Of Dreams",
        "albumId": 64,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Blackmore, Glover, Turner",
        "milliseconds": 328385,
        "bytes": 10733847,
        "unitPrice": 0.99
    },
    {
        "name": "The Cut Runs Deep",
        "albumId": 64,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Blackmore, Glover, Turner, Lord, Paice",
        "milliseconds": 342752,
        "bytes": 11191650,
        "unitPrice": 0.99
    },
    {
        "name": "Fire In The Basement",
        "albumId": 64,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Blackmore, Glover, Turner, Lord, Paice",
        "milliseconds": 283977,
        "bytes": 9267550,
        "unitPrice": 0.99
    },
    {
        "name": "Truth Hurts",
        "albumId": 64,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Blackmore, Glover, Turner",
        "milliseconds": 314827,
        "bytes": 10224612,
        "unitPrice": 0.99
    },
    {
        "name": "Breakfast In Bed",
        "albumId": 64,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Blackmore, Glover, Turner",
        "milliseconds": 317126,
        "bytes": 10323804,
        "unitPrice": 0.99
    },
    {
        "name": "Love Conquers All",
        "albumId": 64,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Blackmore, Glover, Turner",
        "milliseconds": 227186,
        "bytes": 7328516,
        "unitPrice": 0.99
    },
    {
        "name": "Fortuneteller",
        "albumId": 64,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Blackmore, Glover, Turner, Lord, Paice",
        "milliseconds": 349335,
        "bytes": 11369671,
        "unitPrice": 0.99
    },
    {
        "name": "Too Much Is Not Enough",
        "albumId": 64,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Turner, Held, Greenwood",
        "milliseconds": 257724,
        "bytes": 8382800,
        "unitPrice": 0.99
    },
    {
        "name": "Wicked Ways",
        "albumId": 64,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Blackmore, Glover, Turner, Lord, Paice",
        "milliseconds": 393691,
        "bytes": 12826582,
        "unitPrice": 0.99
    },
    {
        "name": "Stormbringer",
        "albumId": 65,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "D.Coverdale/R.Blackmore/Ritchie Blackmore",
        "milliseconds": 246413,
        "bytes": 8044864,
        "unitPrice": 0.99
    },
    {
        "name": "Love Don't Mean a Thing",
        "albumId": 65,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "D.Coverdale/G.Hughes/Glenn Hughes/I.Paice/Ian Paice/J.Lord/John Lord/R.Blackmore/Ritchie Blackmore",
        "milliseconds": 263862,
        "bytes": 8675026,
        "unitPrice": 0.99
    },
    {
        "name": "Holy Man",
        "albumId": 65,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "D.Coverdale/G.Hughes/Glenn Hughes/J.Lord/John Lord",
        "milliseconds": 270236,
        "bytes": 8818093,
        "unitPrice": 0.99
    },
    {
        "name": "Hold On",
        "albumId": 65,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "D.Coverdal/G.Hughes/Glenn Hughes/I.Paice/Ian Paice/J.Lord/John Lord",
        "milliseconds": 306860,
        "bytes": 10022428,
        "unitPrice": 0.99
    },
    {
        "name": "Lady Double Dealer",
        "albumId": 65,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "D.Coverdale/R.Blackmore/Ritchie Blackmore",
        "milliseconds": 201482,
        "bytes": 6554330,
        "unitPrice": 0.99
    },
    {
        "name": "You Can't Do it Right (With the One You Love)",
        "albumId": 65,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "D.Coverdale/G.Hughes/Glenn Hughes/R.Blackmore/Ritchie Blackmore",
        "milliseconds": 203755,
        "bytes": 6709579,
        "unitPrice": 0.99
    },
    {
        "name": "High Ball Shooter",
        "albumId": 65,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "D.Coverdale/G.Hughes/Glenn Hughes/I.Paice/Ian Paice/J.Lord/John Lord/R.Blackmore/Ritchie Blackmore",
        "milliseconds": 267833,
        "bytes": 8772471,
        "unitPrice": 0.99
    },
    {
        "name": "The Gypsy",
        "albumId": 65,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "D.Coverdale/G.Hughes/Glenn Hughes/I.Paice/Ian Paice/J.Lord/John Lord/R.Blackmore/Ritchie Blackmore",
        "milliseconds": 242886,
        "bytes": 7946614,
        "unitPrice": 0.99
    },
    {
        "name": "Soldier Of Fortune",
        "albumId": 65,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "D.Coverdale/R.Blackmore/Ritchie Blackmore",
        "milliseconds": 193750,
        "bytes": 6315321,
        "unitPrice": 0.99
    },
    {
        "name": "The Battle Rages On",
        "albumId": 66,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "ian paice/jon lord",
        "milliseconds": 356963,
        "bytes": 11626228,
        "unitPrice": 0.99
    },
    {
        "name": "Lick It Up",
        "albumId": 66,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "roger glover",
        "milliseconds": 240274,
        "bytes": 7792604,
        "unitPrice": 0.99
    },
    {
        "name": "Anya",
        "albumId": 66,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "jon lord/roger glover",
        "milliseconds": 392437,
        "bytes": 12754921,
        "unitPrice": 0.99
    },
    {
        "name": "Talk About Love",
        "albumId": 66,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "roger glover",
        "milliseconds": 247823,
        "bytes": 8072171,
        "unitPrice": 0.99
    },
    {
        "name": "Time To Kill",
        "albumId": 66,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "roger glover",
        "milliseconds": 351033,
        "bytes": 11354742,
        "unitPrice": 0.99
    },
    {
        "name": "Ramshackle Man",
        "albumId": 66,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "roger glover",
        "milliseconds": 334445,
        "bytes": 10874679,
        "unitPrice": 0.99
    },
    {
        "name": "A Twist In The Tail",
        "albumId": 66,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "roger glover",
        "milliseconds": 257462,
        "bytes": 8413103,
        "unitPrice": 0.99
    },
    {
        "name": "Nasty Piece Of Work",
        "albumId": 66,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "jon lord/roger glover",
        "milliseconds": 276662,
        "bytes": 9076997,
        "unitPrice": 0.99
    },
    {
        "name": "Solitaire",
        "albumId": 66,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "roger glover",
        "milliseconds": 282226,
        "bytes": 9157021,
        "unitPrice": 0.99
    },
    {
        "name": "One Man's Meat",
        "albumId": 66,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "roger glover",
        "milliseconds": 278804,
        "bytes": 9068960,
        "unitPrice": 0.99
    },
    {
        "name": "Pour Some Sugar On Me",
        "albumId": 67,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 292519,
        "bytes": 9518842,
        "unitPrice": 0.99
    },
    {
        "name": "Photograph",
        "albumId": 67,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 248633,
        "bytes": 8108507,
        "unitPrice": 0.99
    },
    {
        "name": "Love Bites",
        "albumId": 67,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 346853,
        "bytes": 11305791,
        "unitPrice": 0.99
    },
    {
        "name": "Let's Get Rocked",
        "albumId": 67,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 296019,
        "bytes": 9724150,
        "unitPrice": 0.99
    },
    {
        "name": "Two Steps Behind [Acoustic Version]",
        "albumId": 67,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 259787,
        "bytes": 8523388,
        "unitPrice": 0.99
    },
    {
        "name": "Animal",
        "albumId": 67,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 244741,
        "bytes": 7985133,
        "unitPrice": 0.99
    },
    {
        "name": "Heaven Is",
        "albumId": 67,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 214021,
        "bytes": 6988128,
        "unitPrice": 0.99
    },
    {
        "name": "Rocket",
        "albumId": 67,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 247248,
        "bytes": 8092463,
        "unitPrice": 0.99
    },
    {
        "name": "When Love & Hate Collide",
        "albumId": 67,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 257280,
        "bytes": 8364633,
        "unitPrice": 0.99
    },
    {
        "name": "Action",
        "albumId": 67,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 220604,
        "bytes": 7130830,
        "unitPrice": 0.99
    },
    {
        "name": "Make Love Like A Man",
        "albumId": 67,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 255660,
        "bytes": 8309725,
        "unitPrice": 0.99
    },
    {
        "name": "Armageddon It",
        "albumId": 67,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 322455,
        "bytes": 10522352,
        "unitPrice": 0.99
    },
    {
        "name": "Have You Ever Needed Someone So Bad",
        "albumId": 67,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 319320,
        "bytes": 10400020,
        "unitPrice": 0.99
    },
    {
        "name": "Rock Of Ages",
        "albumId": 67,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 248424,
        "bytes": 8150318,
        "unitPrice": 0.99
    },
    {
        "name": "Hysteria",
        "albumId": 67,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 355056,
        "bytes": 11622738,
        "unitPrice": 0.99
    },
    {
        "name": "Bringin' On The Heartbreak",
        "albumId": 67,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 272457,
        "bytes": 8853324,
        "unitPrice": 0.99
    },
    {
        "name": "Roll Call",
        "albumId": 68,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Jim Beard",
        "milliseconds": 321358,
        "bytes": 10653494,
        "unitPrice": 0.99
    },
    {
        "name": "Otay",
        "albumId": 68,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "John Scofield, Robert Aries, Milton Chambers and Gary Grainger",
        "milliseconds": 423653,
        "bytes": 14176083,
        "unitPrice": 0.99
    },
    {
        "name": "Groovus Interruptus",
        "albumId": 68,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Jim Beard",
        "milliseconds": 319373,
        "bytes": 10602166,
        "unitPrice": 0.99
    },
    {
        "name": "Paris On Mine",
        "albumId": 68,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Jon Herington",
        "milliseconds": 368875,
        "bytes": 12059507,
        "unitPrice": 0.99
    },
    {
        "name": "In Time",
        "albumId": 68,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Sylvester Stewart",
        "milliseconds": 368953,
        "bytes": 12287103,
        "unitPrice": 0.99
    },
    {
        "name": "Plan B",
        "albumId": 68,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Dean Brown, Dennis Chambers & Jim Beard",
        "milliseconds": 272039,
        "bytes": 9032315,
        "unitPrice": 0.99
    },
    {
        "name": "Outbreak",
        "albumId": 68,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Jim Beard & Jon Herington",
        "milliseconds": 659226,
        "bytes": 21685807,
        "unitPrice": 0.99
    },
    {
        "name": "Baltimore, DC",
        "albumId": 68,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "John Scofield",
        "milliseconds": 346932,
        "bytes": 11394473,
        "unitPrice": 0.99
    },
    {
        "name": "Talkin Loud and Saying Nothin",
        "albumId": 68,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "James Brown & Bobby Byrd",
        "milliseconds": 360411,
        "bytes": 11994859,
        "unitPrice": 0.99
    },
    {
        "name": "Pétala",
        "albumId": 69,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 270080,
        "bytes": 8856165,
        "unitPrice": 0.99
    },
    {
        "name": "Meu Bem-Querer",
        "albumId": 69,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 255608,
        "bytes": 8330047,
        "unitPrice": 0.99
    },
    {
        "name": "Cigano",
        "albumId": 69,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 304692,
        "bytes": 10037362,
        "unitPrice": 0.99
    },
    {
        "name": "Boa Noite",
        "albumId": 69,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 338755,
        "bytes": 11283582,
        "unitPrice": 0.99
    },
    {
        "name": "Fato Consumado",
        "albumId": 69,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 211565,
        "bytes": 7018586,
        "unitPrice": 0.99
    },
    {
        "name": "Faltando Um Pedaço",
        "albumId": 69,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 267728,
        "bytes": 8788760,
        "unitPrice": 0.99
    },
    {
        "name": "Álibi",
        "albumId": 69,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 213237,
        "bytes": 6928434,
        "unitPrice": 0.99
    },
    {
        "name": "Esquinas",
        "albumId": 69,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 280999,
        "bytes": 9096726,
        "unitPrice": 0.99
    },
    {
        "name": "Se...",
        "albumId": 69,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 286432,
        "bytes": 9413777,
        "unitPrice": 0.99
    },
    {
        "name": "Eu Te Devoro",
        "albumId": 69,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 311614,
        "bytes": 10312775,
        "unitPrice": 0.99
    },
    {
        "name": "Lilás",
        "albumId": 69,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 274181,
        "bytes": 9049542,
        "unitPrice": 0.99
    },
    {
        "name": "Acelerou",
        "albumId": 69,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 284081,
        "bytes": 9396942,
        "unitPrice": 0.99
    },
    {
        "name": "Um Amor Puro",
        "albumId": 69,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 327784,
        "bytes": 10687311,
        "unitPrice": 0.99
    },
    {
        "name": "Samurai",
        "albumId": 70,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Djavan",
        "milliseconds": 330997,
        "bytes": 10872787,
        "unitPrice": 0.99
    },
    {
        "name": "Nem Um Dia",
        "albumId": 70,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Djavan",
        "milliseconds": 337423,
        "bytes": 11181446,
        "unitPrice": 0.99
    },
    {
        "name": "Oceano",
        "albumId": 70,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Djavan",
        "milliseconds": 217338,
        "bytes": 7026441,
        "unitPrice": 0.99
    },
    {
        "name": "Açai",
        "albumId": 70,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Djavan",
        "milliseconds": 270968,
        "bytes": 8893682,
        "unitPrice": 0.99
    },
    {
        "name": "Serrado",
        "albumId": 70,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Djavan",
        "milliseconds": 295314,
        "bytes": 9842240,
        "unitPrice": 0.99
    },
    {
        "name": "Flor De Lis",
        "albumId": 70,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Djavan",
        "milliseconds": 236355,
        "bytes": 7801108,
        "unitPrice": 0.99
    },
    {
        "name": "Amar É Tudo",
        "albumId": 70,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Djavan",
        "milliseconds": 211617,
        "bytes": 7073899,
        "unitPrice": 0.99
    },
    {
        "name": "Azul",
        "albumId": 70,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Djavan",
        "milliseconds": 253962,
        "bytes": 8381029,
        "unitPrice": 0.99
    },
    {
        "name": "Seduzir",
        "albumId": 70,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Djavan",
        "milliseconds": 277524,
        "bytes": 9163253,
        "unitPrice": 0.99
    },
    {
        "name": "A Carta",
        "albumId": 70,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Djavan - Gabriel, O Pensador",
        "milliseconds": 347297,
        "bytes": 11493463,
        "unitPrice": 0.99
    },
    {
        "name": "Sina",
        "albumId": 70,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Djavan",
        "milliseconds": 268173,
        "bytes": 8906539,
        "unitPrice": 0.99
    },
    {
        "name": "Acelerou",
        "albumId": 70,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Djavan",
        "milliseconds": 284133,
        "bytes": 9391439,
        "unitPrice": 0.99
    },
    {
        "name": "Um Amor Puro",
        "albumId": 70,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Djavan",
        "milliseconds": 327105,
        "bytes": 10664698,
        "unitPrice": 0.99
    },
    {
        "name": "O Bêbado e a Equilibrista",
        "albumId": 71,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 223059,
        "bytes": 7306143,
        "unitPrice": 0.99
    },
    {
        "name": "O Mestre-Sala dos Mares",
        "albumId": 71,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 186226,
        "bytes": 6180414,
        "unitPrice": 0.99
    },
    {
        "name": "Atrás da Porta",
        "albumId": 71,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 166608,
        "bytes": 5432518,
        "unitPrice": 0.99
    },
    {
        "name": "Dois Pra Lá, Dois Pra Cá",
        "albumId": 71,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 263026,
        "bytes": 8684639,
        "unitPrice": 0.99
    },
    {
        "name": "Casa no Campo",
        "albumId": 71,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 170788,
        "bytes": 5531841,
        "unitPrice": 0.99
    },
    {
        "name": "Romaria",
        "albumId": 71,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 242834,
        "bytes": 7968525,
        "unitPrice": 0.99
    },
    {
        "name": "Alô, Alô, Marciano",
        "albumId": 71,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 241397,
        "bytes": 8137254,
        "unitPrice": 0.99
    },
    {
        "name": "Me Deixas Louca",
        "albumId": 71,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 214831,
        "bytes": 6888030,
        "unitPrice": 0.99
    },
    {
        "name": "Fascinação",
        "albumId": 71,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 180793,
        "bytes": 5793959,
        "unitPrice": 0.99
    },
    {
        "name": "Saudosa Maloca",
        "albumId": 71,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 278125,
        "bytes": 9059416,
        "unitPrice": 0.99
    },
    {
        "name": "As Aparências Enganam",
        "albumId": 71,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 247379,
        "bytes": 8014346,
        "unitPrice": 0.99
    },
    {
        "name": "Madalena",
        "albumId": 71,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 157387,
        "bytes": 5243721,
        "unitPrice": 0.99
    },
    {
        "name": "Maria Rosa",
        "albumId": 71,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 232803,
        "bytes": 7592504,
        "unitPrice": 0.99
    },
    {
        "name": "Aprendendo A Jogar",
        "albumId": 71,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 290664,
        "bytes": 9391041,
        "unitPrice": 0.99
    },
    {
        "name": "Layla",
        "albumId": 72,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Clapton/Gordon",
        "milliseconds": 430733,
        "bytes": 14115792,
        "unitPrice": 0.99
    },
    {
        "name": "Badge",
        "albumId": 72,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Clapton/Harrison",
        "milliseconds": 163552,
        "bytes": 5322942,
        "unitPrice": 0.99
    },
    {
        "name": "I Feel Free",
        "albumId": 72,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Bruce/Clapton",
        "milliseconds": 174576,
        "bytes": 5725684,
        "unitPrice": 0.99
    },
    {
        "name": "Sunshine Of Your Love",
        "albumId": 72,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Bruce/Clapton",
        "milliseconds": 252891,
        "bytes": 8225889,
        "unitPrice": 0.99
    },
    {
        "name": "Crossroads",
        "albumId": 72,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Clapton/Robert Johnson Arr: Eric Clapton",
        "milliseconds": 253335,
        "bytes": 8273540,
        "unitPrice": 0.99
    },
    {
        "name": "Strange Brew",
        "albumId": 72,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Clapton/Collins/Pappalardi",
        "milliseconds": 167810,
        "bytes": 5489787,
        "unitPrice": 0.99
    },
    {
        "name": "White Room",
        "albumId": 72,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Bruce/Clapton",
        "milliseconds": 301583,
        "bytes": 9872606,
        "unitPrice": 0.99
    },
    {
        "name": "Bell Bottom Blues",
        "albumId": 72,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Clapton",
        "milliseconds": 304744,
        "bytes": 9946681,
        "unitPrice": 0.99
    },
    {
        "name": "Cocaine",
        "albumId": 72,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Cale/Clapton",
        "milliseconds": 215928,
        "bytes": 7138399,
        "unitPrice": 0.99
    },
    {
        "name": "I Shot The Sheriff",
        "albumId": 72,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Marley",
        "milliseconds": 263862,
        "bytes": 8738973,
        "unitPrice": 0.99
    },
    {
        "name": "After Midnight",
        "albumId": 72,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Clapton/J. J. Cale",
        "milliseconds": 191320,
        "bytes": 6460941,
        "unitPrice": 0.99
    },
    {
        "name": "Swing Low Sweet Chariot",
        "albumId": 72,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Clapton/Trad. Arr. Clapton",
        "milliseconds": 208143,
        "bytes": 6896288,
        "unitPrice": 0.99
    },
    {
        "name": "Lay Down Sally",
        "albumId": 72,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Clapton/Levy",
        "milliseconds": 231732,
        "bytes": 7774207,
        "unitPrice": 0.99
    },
    {
        "name": "Knockin On Heavens Door",
        "albumId": 72,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Clapton/Dylan",
        "milliseconds": 264411,
        "bytes": 8758819,
        "unitPrice": 0.99
    },
    {
        "name": "Wonderful Tonight",
        "albumId": 72,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Clapton",
        "milliseconds": 221387,
        "bytes": 7326923,
        "unitPrice": 0.99
    },
    {
        "name": "Let It Grow",
        "albumId": 72,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Clapton",
        "milliseconds": 297064,
        "bytes": 9742568,
        "unitPrice": 0.99
    },
    {
        "name": "Promises",
        "albumId": 72,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Clapton/F.eldman/Linn",
        "milliseconds": 180401,
        "bytes": 6006154,
        "unitPrice": 0.99
    },
    {
        "name": "I Can't Stand It",
        "albumId": 72,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Clapton",
        "milliseconds": 249730,
        "bytes": 8271980,
        "unitPrice": 0.99
    },
    {
        "name": "Signe",
        "albumId": 73,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Eric Clapton",
        "milliseconds": 193515,
        "bytes": 6475042,
        "unitPrice": 0.99
    },
    {
        "name": "Before You Accuse Me",
        "albumId": 73,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Eugene McDaniel",
        "milliseconds": 224339,
        "bytes": 7456807,
        "unitPrice": 0.99
    },
    {
        "name": "Hey Hey",
        "albumId": 73,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Big Bill Broonzy",
        "milliseconds": 196466,
        "bytes": 6543487,
        "unitPrice": 0.99
    },
    {
        "name": "Tears In Heaven",
        "albumId": 73,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Eric Clapton, Will Jennings",
        "milliseconds": 274729,
        "bytes": 9032835,
        "unitPrice": 0.99
    },
    {
        "name": "Lonely Stranger",
        "albumId": 73,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Eric Clapton",
        "milliseconds": 328724,
        "bytes": 10894406,
        "unitPrice": 0.99
    },
    {
        "name": "Nobody Knows You When You're Down & Out",
        "albumId": 73,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Jimmy Cox",
        "milliseconds": 231836,
        "bytes": 7669922,
        "unitPrice": 0.99
    },
    {
        "name": "Layla",
        "albumId": 73,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Eric Clapton, Jim Gordon",
        "milliseconds": 285387,
        "bytes": 9490542,
        "unitPrice": 0.99
    },
    {
        "name": "Running On Faith",
        "albumId": 73,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Jerry Lynn Williams",
        "milliseconds": 378984,
        "bytes": 12536275,
        "unitPrice": 0.99
    },
    {
        "name": "Walkin' Blues",
        "albumId": 73,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Robert Johnson",
        "milliseconds": 226429,
        "bytes": 7435192,
        "unitPrice": 0.99
    },
    {
        "name": "Alberta",
        "albumId": 73,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Traditional",
        "milliseconds": 222406,
        "bytes": 7412975,
        "unitPrice": 0.99
    },
    {
        "name": "San Francisco Bay Blues",
        "albumId": 73,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Jesse Fuller",
        "milliseconds": 203363,
        "bytes": 6724021,
        "unitPrice": 0.99
    },
    {
        "name": "Malted Milk",
        "albumId": 73,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Robert Johnson",
        "milliseconds": 216528,
        "bytes": 7096781,
        "unitPrice": 0.99
    },
    {
        "name": "Old Love",
        "albumId": 73,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Eric Clapton, Robert Cray",
        "milliseconds": 472920,
        "bytes": 15780747,
        "unitPrice": 0.99
    },
    {
        "name": "Rollin' And Tumblin'",
        "albumId": 73,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "McKinley Morgenfield (Muddy Waters)",
        "milliseconds": 251768,
        "bytes": 8407355,
        "unitPrice": 0.99
    },
    {
        "name": "Collision",
        "albumId": 74,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Jon Hudson/Mike Patton",
        "milliseconds": 204303,
        "bytes": 6656596,
        "unitPrice": 0.99
    },
    {
        "name": "Stripsearch",
        "albumId": 74,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Jon Hudson/Mike Bordin/Mike Patton",
        "milliseconds": 270106,
        "bytes": 8861119,
        "unitPrice": 0.99
    },
    {
        "name": "Last Cup Of Sorrow",
        "albumId": 74,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Bill Gould/Mike Patton",
        "milliseconds": 251663,
        "bytes": 8221247,
        "unitPrice": 0.99
    },
    {
        "name": "Naked In Front Of The Computer",
        "albumId": 74,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Mike Patton",
        "milliseconds": 128757,
        "bytes": 4225077,
        "unitPrice": 0.99
    },
    {
        "name": "Helpless",
        "albumId": 74,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Bill Gould/Mike Bordin/Mike Patton",
        "milliseconds": 326217,
        "bytes": 10753135,
        "unitPrice": 0.99
    },
    {
        "name": "Mouth To Mouth",
        "albumId": 74,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Bill Gould/Jon Hudson/Mike Bordin/Mike Patton",
        "milliseconds": 228493,
        "bytes": 7505887,
        "unitPrice": 0.99
    },
    {
        "name": "Ashes To Ashes",
        "albumId": 74,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Bill Gould/Jon Hudson/Mike Bordin/Mike Patton/Roddy Bottum",
        "milliseconds": 217391,
        "bytes": 7093746,
        "unitPrice": 0.99
    },
    {
        "name": "She Loves Me Not",
        "albumId": 74,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Bill Gould/Mike Bordin/Mike Patton",
        "milliseconds": 209867,
        "bytes": 6887544,
        "unitPrice": 0.99
    },
    {
        "name": "Got That Feeling",
        "albumId": 74,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Mike Patton",
        "milliseconds": 140852,
        "bytes": 4643227,
        "unitPrice": 0.99
    },
    {
        "name": "Paths Of Glory",
        "albumId": 74,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Bill Gould/Jon Hudson/Mike Bordin/Mike Patton/Roddy Bottum",
        "milliseconds": 257253,
        "bytes": 8436300,
        "unitPrice": 0.99
    },
    {
        "name": "Home Sick Home",
        "albumId": 74,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Mike Patton",
        "milliseconds": 119040,
        "bytes": 3898976,
        "unitPrice": 0.99
    },
    {
        "name": "Pristina",
        "albumId": 74,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Bill Gould/Mike Patton",
        "milliseconds": 232698,
        "bytes": 7497361,
        "unitPrice": 0.99
    },
    {
        "name": "Land Of Sunshine",
        "albumId": 75,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": null,
        "milliseconds": 223921,
        "bytes": 7353567,
        "unitPrice": 0.99
    },
    {
        "name": "Caffeine",
        "albumId": 75,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": null,
        "milliseconds": 267937,
        "bytes": 8747367,
        "unitPrice": 0.99
    },
    {
        "name": "Midlife Crisis",
        "albumId": 75,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": null,
        "milliseconds": 263235,
        "bytes": 8628841,
        "unitPrice": 0.99
    },
    {
        "name": "RV",
        "albumId": 75,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": null,
        "milliseconds": 223242,
        "bytes": 7288162,
        "unitPrice": 0.99
    },
    {
        "name": "Smaller And Smaller",
        "albumId": 75,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": null,
        "milliseconds": 310831,
        "bytes": 10180103,
        "unitPrice": 0.99
    },
    {
        "name": "Everything's Ruined",
        "albumId": 75,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": null,
        "milliseconds": 273658,
        "bytes": 9010917,
        "unitPrice": 0.99
    },
    {
        "name": "Malpractice",
        "albumId": 75,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": null,
        "milliseconds": 241371,
        "bytes": 7900683,
        "unitPrice": 0.99
    },
    {
        "name": "Kindergarten",
        "albumId": 75,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": null,
        "milliseconds": 270680,
        "bytes": 8853647,
        "unitPrice": 0.99
    },
    {
        "name": "Be Aggressive",
        "albumId": 75,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": null,
        "milliseconds": 222432,
        "bytes": 7298027,
        "unitPrice": 0.99
    },
    {
        "name": "A Small Victory",
        "albumId": 75,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": null,
        "milliseconds": 297168,
        "bytes": 9733572,
        "unitPrice": 0.99
    },
    {
        "name": "Crack Hitler",
        "albumId": 75,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": null,
        "milliseconds": 279144,
        "bytes": 9162435,
        "unitPrice": 0.99
    },
    {
        "name": "Jizzlobber",
        "albumId": 75,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": null,
        "milliseconds": 398341,
        "bytes": 12926140,
        "unitPrice": 0.99
    },
    {
        "name": "Midnight Cowboy",
        "albumId": 75,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": null,
        "milliseconds": 251924,
        "bytes": 8242626,
        "unitPrice": 0.99
    },
    {
        "name": "Easy",
        "albumId": 75,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": null,
        "milliseconds": 185835,
        "bytes": 6073008,
        "unitPrice": 0.99
    },
    {
        "name": "Get Out",
        "albumId": 76,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Mike Bordin, Billy Gould, Mike Patton",
        "milliseconds": 137482,
        "bytes": 4524972,
        "unitPrice": 0.99
    },
    {
        "name": "Ricochet",
        "albumId": 76,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Mike Bordin, Billy Gould, Mike Patton",
        "milliseconds": 269400,
        "bytes": 8808812,
        "unitPrice": 0.99
    },
    {
        "name": "Evidence",
        "albumId": 76,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Mike Bordin, Billy Gould, Mike Patton, Trey Spruance",
        "milliseconds": 293590,
        "bytes": 9626136,
        "unitPrice": 0.99
    },
    {
        "name": "The Gentle Art Of Making Enemies",
        "albumId": 76,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Mike Bordin, Billy Gould, Mike Patton",
        "milliseconds": 209319,
        "bytes": 6908609,
        "unitPrice": 0.99
    },
    {
        "name": "Star A.D.",
        "albumId": 76,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Mike Bordin, Billy Gould, Mike Patton",
        "milliseconds": 203807,
        "bytes": 6747658,
        "unitPrice": 0.99
    },
    {
        "name": "Cuckoo For Caca",
        "albumId": 76,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Mike Bordin, Billy Gould, Mike Patton, Trey Spruance",
        "milliseconds": 222902,
        "bytes": 7388369,
        "unitPrice": 0.99
    },
    {
        "name": "Caralho Voador",
        "albumId": 76,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Mike Bordin, Billy Gould, Mike Patton, Trey Spruance",
        "milliseconds": 242102,
        "bytes": 8029054,
        "unitPrice": 0.99
    },
    {
        "name": "Ugly In The Morning",
        "albumId": 76,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Mike Bordin, Billy Gould, Mike Patton",
        "milliseconds": 186435,
        "bytes": 6224997,
        "unitPrice": 0.99
    },
    {
        "name": "Digging The Grave",
        "albumId": 76,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Mike Bordin, Billy Gould, Mike Patton",
        "milliseconds": 185129,
        "bytes": 6109259,
        "unitPrice": 0.99
    },
    {
        "name": "Take This Bottle",
        "albumId": 76,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Mike Bordin, Billy Gould, Mike Patton, Trey Spruance",
        "milliseconds": 298997,
        "bytes": 9779971,
        "unitPrice": 0.99
    },
    {
        "name": "King For A Day",
        "albumId": 76,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Mike Bordin, Billy Gould, Mike Patton, Trey Spruance",
        "milliseconds": 395859,
        "bytes": 13163733,
        "unitPrice": 0.99
    },
    {
        "name": "What A Day",
        "albumId": 76,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Mike Bordin, Billy Gould, Mike Patton",
        "milliseconds": 158275,
        "bytes": 5203430,
        "unitPrice": 0.99
    },
    {
        "name": "The Last To Know",
        "albumId": 76,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Mike Bordin, Billy Gould, Mike Patton",
        "milliseconds": 267833,
        "bytes": 8736776,
        "unitPrice": 0.99
    },
    {
        "name": "Just A Man",
        "albumId": 76,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Mike Bordin, Billy Gould, Mike Patton",
        "milliseconds": 336666,
        "bytes": 11031254,
        "unitPrice": 0.99
    },
    {
        "name": "Absolute Zero",
        "albumId": 76,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Mike Bordin, Billy Gould, Mike Patton",
        "milliseconds": 181995,
        "bytes": 5929427,
        "unitPrice": 0.99
    },
    {
        "name": "From Out Of Nowhere",
        "albumId": 77,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Faith No More",
        "milliseconds": 202527,
        "bytes": 6587802,
        "unitPrice": 0.99
    },
    {
        "name": "Epic",
        "albumId": 77,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Faith No More",
        "milliseconds": 294008,
        "bytes": 9631296,
        "unitPrice": 0.99
    },
    {
        "name": "Falling To Pieces",
        "albumId": 77,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Faith No More",
        "milliseconds": 316055,
        "bytes": 10333123,
        "unitPrice": 0.99
    },
    {
        "name": "Surprise! You're Dead!",
        "albumId": 77,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Faith No More",
        "milliseconds": 147226,
        "bytes": 4823036,
        "unitPrice": 0.99
    },
    {
        "name": "Zombie Eaters",
        "albumId": 77,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Faith No More",
        "milliseconds": 360881,
        "bytes": 11835367,
        "unitPrice": 0.99
    },
    {
        "name": "The Real Thing",
        "albumId": 77,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Faith No More",
        "milliseconds": 493635,
        "bytes": 16233080,
        "unitPrice": 0.99
    },
    {
        "name": "Underwater Love",
        "albumId": 77,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Faith No More",
        "milliseconds": 231993,
        "bytes": 7634387,
        "unitPrice": 0.99
    },
    {
        "name": "The Morning After",
        "albumId": 77,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Faith No More",
        "milliseconds": 223764,
        "bytes": 7355898,
        "unitPrice": 0.99
    },
    {
        "name": "Woodpecker From Mars",
        "albumId": 77,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Faith No More",
        "milliseconds": 340532,
        "bytes": 11174250,
        "unitPrice": 0.99
    },
    {
        "name": "War Pigs",
        "albumId": 77,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne",
        "milliseconds": 464770,
        "bytes": 15267802,
        "unitPrice": 0.99
    },
    {
        "name": "Edge Of The World",
        "albumId": 77,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Faith No More",
        "milliseconds": 250357,
        "bytes": 8235607,
        "unitPrice": 0.99
    },
    {
        "name": "Deixa Entrar",
        "albumId": 78,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 33619,
        "bytes": 1095012,
        "unitPrice": 0.99
    },
    {
        "name": "Falamansa Song",
        "albumId": 78,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 237165,
        "bytes": 7921313,
        "unitPrice": 0.99
    },
    {
        "name": "Xote Dos Milagres",
        "albumId": 78,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 269557,
        "bytes": 8897778,
        "unitPrice": 0.99
    },
    {
        "name": "Rindo À Toa",
        "albumId": 78,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 222066,
        "bytes": 7365321,
        "unitPrice": 0.99
    },
    {
        "name": "Confidência",
        "albumId": 78,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 222197,
        "bytes": 7460829,
        "unitPrice": 0.99
    },
    {
        "name": "Forró De Tóquio",
        "albumId": 78,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 169273,
        "bytes": 5588756,
        "unitPrice": 0.99
    },
    {
        "name": "Zeca Violeiro",
        "albumId": 78,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 143673,
        "bytes": 4781949,
        "unitPrice": 0.99
    },
    {
        "name": "Avisa",
        "albumId": 78,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 355030,
        "bytes": 11844320,
        "unitPrice": 0.99
    },
    {
        "name": "Principiando/Decolagem",
        "albumId": 78,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 116767,
        "bytes": 3923789,
        "unitPrice": 0.99
    },
    {
        "name": "Asas",
        "albumId": 78,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 231915,
        "bytes": 7711669,
        "unitPrice": 0.99
    },
    {
        "name": "Medo De Escuro",
        "albumId": 78,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 213760,
        "bytes": 7056323,
        "unitPrice": 0.99
    },
    {
        "name": "Oração",
        "albumId": 78,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 271072,
        "bytes": 9003882,
        "unitPrice": 0.99
    },
    {
        "name": "Minha Gata",
        "albumId": 78,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 181838,
        "bytes": 6039502,
        "unitPrice": 0.99
    },
    {
        "name": "Desaforo",
        "albumId": 78,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 174524,
        "bytes": 5853561,
        "unitPrice": 0.99
    },
    {
        "name": "In Your Honor",
        "albumId": 79,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett",
        "milliseconds": 230191,
        "bytes": 7468463,
        "unitPrice": 0.99
    },
    {
        "name": "No Way Back",
        "albumId": 79,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett",
        "milliseconds": 196675,
        "bytes": 6421400,
        "unitPrice": 0.99
    },
    {
        "name": "Best Of You",
        "albumId": 79,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett",
        "milliseconds": 255712,
        "bytes": 8363467,
        "unitPrice": 0.99
    },
    {
        "name": "DOA",
        "albumId": 79,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett",
        "milliseconds": 252186,
        "bytes": 8232342,
        "unitPrice": 0.99
    },
    {
        "name": "Hell",
        "albumId": 79,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett",
        "milliseconds": 117080,
        "bytes": 3819255,
        "unitPrice": 0.99
    },
    {
        "name": "The Last Song",
        "albumId": 79,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett",
        "milliseconds": 199523,
        "bytes": 6496742,
        "unitPrice": 0.99
    },
    {
        "name": "Free Me",
        "albumId": 79,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett",
        "milliseconds": 278700,
        "bytes": 9109340,
        "unitPrice": 0.99
    },
    {
        "name": "Resolve",
        "albumId": 79,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett",
        "milliseconds": 288731,
        "bytes": 9416186,
        "unitPrice": 0.99
    },
    {
        "name": "The Deepest Blues Are Black",
        "albumId": 79,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett",
        "milliseconds": 238419,
        "bytes": 7735473,
        "unitPrice": 0.99
    },
    {
        "name": "End Over End",
        "albumId": 79,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett",
        "milliseconds": 352078,
        "bytes": 11395296,
        "unitPrice": 0.99
    },
    {
        "name": "Still",
        "albumId": 80,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett/FOO FIGHTERS",
        "milliseconds": 313182,
        "bytes": 10323157,
        "unitPrice": 0.99
    },
    {
        "name": "What If I Do?",
        "albumId": 80,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett/FOO FIGHTERS",
        "milliseconds": 302994,
        "bytes": 9929799,
        "unitPrice": 0.99
    },
    {
        "name": "Miracle",
        "albumId": 80,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett/FOO FIGHTERS",
        "milliseconds": 209684,
        "bytes": 6877994,
        "unitPrice": 0.99
    },
    {
        "name": "Another Round",
        "albumId": 80,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett/FOO FIGHTERS",
        "milliseconds": 265848,
        "bytes": 8752670,
        "unitPrice": 0.99
    },
    {
        "name": "Friend Of A Friend",
        "albumId": 80,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett/FOO FIGHTERS",
        "milliseconds": 193280,
        "bytes": 6355088,
        "unitPrice": 0.99
    },
    {
        "name": "Over And Out",
        "albumId": 80,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett/FOO FIGHTERS",
        "milliseconds": 316264,
        "bytes": 10428382,
        "unitPrice": 0.99
    },
    {
        "name": "On The Mend",
        "albumId": 80,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett/FOO FIGHTERS",
        "milliseconds": 271908,
        "bytes": 9071997,
        "unitPrice": 0.99
    },
    {
        "name": "Virginia Moon",
        "albumId": 80,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett/FOO FIGHTERS",
        "milliseconds": 229198,
        "bytes": 7494639,
        "unitPrice": 0.99
    },
    {
        "name": "Cold Day In The Sun",
        "albumId": 80,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett/FOO FIGHTERS",
        "milliseconds": 200724,
        "bytes": 6596617,
        "unitPrice": 0.99
    },
    {
        "name": "Razor",
        "albumId": 80,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave Grohl, Taylor Hawkins, Nate Mendel, Chris Shiflett/FOO FIGHTERS",
        "milliseconds": 293276,
        "bytes": 9721373,
        "unitPrice": 0.99
    },
    {
        "name": "All My Life",
        "albumId": 81,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Foo Fighters",
        "milliseconds": 263653,
        "bytes": 8665545,
        "unitPrice": 0.99
    },
    {
        "name": "Low",
        "albumId": 81,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Foo Fighters",
        "milliseconds": 268120,
        "bytes": 8847196,
        "unitPrice": 0.99
    },
    {
        "name": "Have It All",
        "albumId": 81,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Foo Fighters",
        "milliseconds": 298057,
        "bytes": 9729292,
        "unitPrice": 0.99
    },
    {
        "name": "Times Like These",
        "albumId": 81,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Foo Fighters",
        "milliseconds": 266370,
        "bytes": 8624691,
        "unitPrice": 0.99
    },
    {
        "name": "Disenchanted Lullaby",
        "albumId": 81,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Foo Fighters",
        "milliseconds": 273528,
        "bytes": 8919111,
        "unitPrice": 0.99
    },
    {
        "name": "Tired Of You",
        "albumId": 81,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Foo Fighters",
        "milliseconds": 311353,
        "bytes": 10094743,
        "unitPrice": 0.99
    },
    {
        "name": "Halo",
        "albumId": 81,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Foo Fighters",
        "milliseconds": 306442,
        "bytes": 10026371,
        "unitPrice": 0.99
    },
    {
        "name": "Lonely As You",
        "albumId": 81,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Foo Fighters",
        "milliseconds": 277185,
        "bytes": 9022628,
        "unitPrice": 0.99
    },
    {
        "name": "Overdrive",
        "albumId": 81,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Foo Fighters",
        "milliseconds": 270550,
        "bytes": 8793187,
        "unitPrice": 0.99
    },
    {
        "name": "Burn Away",
        "albumId": 81,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Foo Fighters",
        "milliseconds": 298396,
        "bytes": 9678073,
        "unitPrice": 0.99
    },
    {
        "name": "Come Back",
        "albumId": 81,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Foo Fighters",
        "milliseconds": 469968,
        "bytes": 15371980,
        "unitPrice": 0.99
    },
    {
        "name": "Doll",
        "albumId": 82,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave, Taylor, Nate, Chris",
        "milliseconds": 83487,
        "bytes": 2702572,
        "unitPrice": 0.99
    },
    {
        "name": "Monkey Wrench",
        "albumId": 82,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave, Taylor, Nate, Chris",
        "milliseconds": 231523,
        "bytes": 7527531,
        "unitPrice": 0.99
    },
    {
        "name": "Hey, Johnny Park!",
        "albumId": 82,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave, Taylor, Nate, Chris",
        "milliseconds": 248528,
        "bytes": 8079480,
        "unitPrice": 0.99
    },
    {
        "name": "My Poor Brain",
        "albumId": 82,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave, Taylor, Nate, Chris",
        "milliseconds": 213446,
        "bytes": 6973746,
        "unitPrice": 0.99
    },
    {
        "name": "Wind Up",
        "albumId": 82,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave, Taylor, Nate, Chris",
        "milliseconds": 152163,
        "bytes": 4950667,
        "unitPrice": 0.99
    },
    {
        "name": "Up In Arms",
        "albumId": 82,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave, Taylor, Nate, Chris",
        "milliseconds": 135732,
        "bytes": 4406227,
        "unitPrice": 0.99
    },
    {
        "name": "My Hero",
        "albumId": 82,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave, Taylor, Nate, Chris",
        "milliseconds": 260101,
        "bytes": 8472365,
        "unitPrice": 0.99
    },
    {
        "name": "See You",
        "albumId": 82,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave, Taylor, Nate, Chris",
        "milliseconds": 146782,
        "bytes": 4888173,
        "unitPrice": 0.99
    },
    {
        "name": "Enough Space",
        "albumId": 82,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave Grohl",
        "milliseconds": 157387,
        "bytes": 5169280,
        "unitPrice": 0.99
    },
    {
        "name": "February Stars",
        "albumId": 82,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave, Taylor, Nate, Chris",
        "milliseconds": 289306,
        "bytes": 9344875,
        "unitPrice": 0.99
    },
    {
        "name": "Everlong",
        "albumId": 82,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave Grohl",
        "milliseconds": 250749,
        "bytes": 8270816,
        "unitPrice": 0.99
    },
    {
        "name": "Walking After You",
        "albumId": 82,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave Grohl",
        "milliseconds": 303856,
        "bytes": 9898992,
        "unitPrice": 0.99
    },
    {
        "name": "New Way Home",
        "albumId": 82,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave, Taylor, Nate, Chris",
        "milliseconds": 342230,
        "bytes": 11205664,
        "unitPrice": 0.99
    },
    {
        "name": "My Way",
        "albumId": 83,
        "mediaTypeId": 1,
        "genreId": 12,
        "composer": "claude françois/gilles thibault/jacques revaux/paul anka",
        "milliseconds": 275879,
        "bytes": 8928684,
        "unitPrice": 0.99
    },
    {
        "name": "Strangers In The Night",
        "albumId": 83,
        "mediaTypeId": 1,
        "genreId": 12,
        "composer": "berthold kaempfert/charles singleton/eddie snyder",
        "milliseconds": 155794,
        "bytes": 5055295,
        "unitPrice": 0.99
    },
    {
        "name": "New York, New York",
        "albumId": 83,
        "mediaTypeId": 1,
        "genreId": 12,
        "composer": "fred ebb/john kander",
        "milliseconds": 206001,
        "bytes": 6707993,
        "unitPrice": 0.99
    },
    {
        "name": "I Get A Kick Out Of You",
        "albumId": 83,
        "mediaTypeId": 1,
        "genreId": 12,
        "composer": "cole porter",
        "milliseconds": 194429,
        "bytes": 6332441,
        "unitPrice": 0.99
    },
    {
        "name": "Something Stupid",
        "albumId": 83,
        "mediaTypeId": 1,
        "genreId": 12,
        "composer": "carson c. parks",
        "milliseconds": 158615,
        "bytes": 5210643,
        "unitPrice": 0.99
    },
    {
        "name": "Moon River",
        "albumId": 83,
        "mediaTypeId": 1,
        "genreId": 12,
        "composer": "henry mancini/johnny mercer",
        "milliseconds": 198922,
        "bytes": 6395808,
        "unitPrice": 0.99
    },
    {
        "name": "What Now My Love",
        "albumId": 83,
        "mediaTypeId": 1,
        "genreId": 12,
        "composer": "carl sigman/gilbert becaud/pierre leroyer",
        "milliseconds": 149995,
        "bytes": 4913383,
        "unitPrice": 0.99
    },
    {
        "name": "Summer Love",
        "albumId": 83,
        "mediaTypeId": 1,
        "genreId": 12,
        "composer": "hans bradtke/heinz meier/johnny mercer",
        "milliseconds": 174994,
        "bytes": 5693242,
        "unitPrice": 0.99
    },
    {
        "name": "For Once In My Life",
        "albumId": 83,
        "mediaTypeId": 1,
        "genreId": 12,
        "composer": "orlando murden/ronald miller",
        "milliseconds": 171154,
        "bytes": 5557537,
        "unitPrice": 0.99
    },
    {
        "name": "Love And Marriage",
        "albumId": 83,
        "mediaTypeId": 1,
        "genreId": 12,
        "composer": "jimmy van heusen/sammy cahn",
        "milliseconds": 89730,
        "bytes": 2930596,
        "unitPrice": 0.99
    },
    {
        "name": "They Can't Take That Away From Me",
        "albumId": 83,
        "mediaTypeId": 1,
        "genreId": 12,
        "composer": "george gershwin/ira gershwin",
        "milliseconds": 161227,
        "bytes": 5240043,
        "unitPrice": 0.99
    },
    {
        "name": "My Kind Of Town",
        "albumId": 83,
        "mediaTypeId": 1,
        "genreId": 12,
        "composer": "jimmy van heusen/sammy cahn",
        "milliseconds": 188499,
        "bytes": 6119915,
        "unitPrice": 0.99
    },
    {
        "name": "Fly Me To The Moon",
        "albumId": 83,
        "mediaTypeId": 1,
        "genreId": 12,
        "composer": "bart howard",
        "milliseconds": 149263,
        "bytes": 4856954,
        "unitPrice": 0.99
    },
    {
        "name": "I've Got You Under My Skin",
        "albumId": 83,
        "mediaTypeId": 1,
        "genreId": 12,
        "composer": "cole porter",
        "milliseconds": 210808,
        "bytes": 6883787,
        "unitPrice": 0.99
    },
    {
        "name": "The Best Is Yet To Come",
        "albumId": 83,
        "mediaTypeId": 1,
        "genreId": 12,
        "composer": "carolyn leigh/cy coleman",
        "milliseconds": 173583,
        "bytes": 5633730,
        "unitPrice": 0.99
    },
    {
        "name": "It Was A Very Good Year",
        "albumId": 83,
        "mediaTypeId": 1,
        "genreId": 12,
        "composer": "ervin drake",
        "milliseconds": 266605,
        "bytes": 8554066,
        "unitPrice": 0.99
    },
    {
        "name": "Come Fly With Me",
        "albumId": 83,
        "mediaTypeId": 1,
        "genreId": 12,
        "composer": "jimmy van heusen/sammy cahn",
        "milliseconds": 190458,
        "bytes": 6231029,
        "unitPrice": 0.99
    },
    {
        "name": "That's Life",
        "albumId": 83,
        "mediaTypeId": 1,
        "genreId": 12,
        "composer": "dean kay thompson/kelly gordon",
        "milliseconds": 187010,
        "bytes": 6095727,
        "unitPrice": 0.99
    },
    {
        "name": "The Girl From Ipanema",
        "albumId": 83,
        "mediaTypeId": 1,
        "genreId": 12,
        "composer": "antonio carlos jobim/norman gimbel/vinicius de moraes",
        "milliseconds": 193750,
        "bytes": 6410674,
        "unitPrice": 0.99
    },
    {
        "name": "The Lady Is A Tramp",
        "albumId": 83,
        "mediaTypeId": 1,
        "genreId": 12,
        "composer": "lorenz hart/richard rodgers",
        "milliseconds": 184111,
        "bytes": 5987372,
        "unitPrice": 0.99
    },
    {
        "name": "Bad, Bad Leroy Brown",
        "albumId": 83,
        "mediaTypeId": 1,
        "genreId": 12,
        "composer": "jim croce",
        "milliseconds": 169900,
        "bytes": 5548581,
        "unitPrice": 0.99
    },
    {
        "name": "Mack The Knife",
        "albumId": 83,
        "mediaTypeId": 1,
        "genreId": 12,
        "composer": "bert brecht/kurt weill/marc blitzstein",
        "milliseconds": 292075,
        "bytes": 9541052,
        "unitPrice": 0.99
    },
    {
        "name": "Loves Been Good To Me",
        "albumId": 83,
        "mediaTypeId": 1,
        "genreId": 12,
        "composer": "rod mckuen",
        "milliseconds": 203964,
        "bytes": 6645365,
        "unitPrice": 0.99
    },
    {
        "name": "L.A. Is My Lady",
        "albumId": 83,
        "mediaTypeId": 1,
        "genreId": 12,
        "composer": "alan bergman/marilyn bergman/peggy lipton jones/quincy jones",
        "milliseconds": 193175,
        "bytes": 6378511,
        "unitPrice": 0.99
    },
    {
        "name": "Entrando Na Sua (Intro)",
        "albumId": 84,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 179252,
        "bytes": 5840027,
        "unitPrice": 0.99
    },
    {
        "name": "Nervosa",
        "albumId": 84,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 229537,
        "bytes": 7680421,
        "unitPrice": 0.99
    },
    {
        "name": "Funk De Bamba (Com Fernanda Abreu)",
        "albumId": 84,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 237191,
        "bytes": 7866165,
        "unitPrice": 0.99
    },
    {
        "name": "Call Me At Cleo´s",
        "albumId": 84,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 236617,
        "bytes": 7920510,
        "unitPrice": 0.99
    },
    {
        "name": "Olhos Coloridos (Com Sandra De Sá)",
        "albumId": 84,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 321332,
        "bytes": 10567404,
        "unitPrice": 0.99
    },
    {
        "name": "Zambação",
        "albumId": 84,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 301113,
        "bytes": 10030604,
        "unitPrice": 0.99
    },
    {
        "name": "Funk Hum",
        "albumId": 84,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 244453,
        "bytes": 8084475,
        "unitPrice": 0.99
    },
    {
        "name": "Forty Days (Com DJ Hum)",
        "albumId": 84,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 221727,
        "bytes": 7347172,
        "unitPrice": 0.99
    },
    {
        "name": "Balada Da Paula",
        "albumId": 84,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Emerson Villani",
        "milliseconds": 322821,
        "bytes": 10603717,
        "unitPrice": 0.99
    },
    {
        "name": "Dujji",
        "albumId": 84,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 324597,
        "bytes": 10833935,
        "unitPrice": 0.99
    },
    {
        "name": "Meu Guarda-Chuva",
        "albumId": 84,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 248528,
        "bytes": 8216625,
        "unitPrice": 0.99
    },
    {
        "name": "Motéis",
        "albumId": 84,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 213498,
        "bytes": 7041077,
        "unitPrice": 0.99
    },
    {
        "name": "Whistle Stop",
        "albumId": 84,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 526132,
        "bytes": 17533664,
        "unitPrice": 0.99
    },
    {
        "name": "16 Toneladas",
        "albumId": 84,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 191634,
        "bytes": 6390885,
        "unitPrice": 0.99
    },
    {
        "name": "Divirta-Se (Saindo Da Sua)",
        "albumId": 84,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 74919,
        "bytes": 2439206,
        "unitPrice": 0.99
    },
    {
        "name": "Forty Days Instrumental",
        "albumId": 84,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 292493,
        "bytes": 9584317,
        "unitPrice": 0.99
    },
    {
        "name": "Óia Eu Aqui De Novo",
        "albumId": 85,
        "mediaTypeId": 1,
        "genreId": 10,
        "composer": null,
        "milliseconds": 219454,
        "bytes": 7469735,
        "unitPrice": 0.99
    },
    {
        "name": "Baião Da Penha",
        "albumId": 85,
        "mediaTypeId": 1,
        "genreId": 10,
        "composer": null,
        "milliseconds": 247928,
        "bytes": 8393047,
        "unitPrice": 0.99
    },
    {
        "name": "Esperando Na Janela",
        "albumId": 85,
        "mediaTypeId": 1,
        "genreId": 10,
        "composer": "Manuca/Raimundinho DoAcordion/Targino Godim",
        "milliseconds": 261041,
        "bytes": 8660617,
        "unitPrice": 0.99
    },
    {
        "name": "Juazeiro",
        "albumId": 85,
        "mediaTypeId": 1,
        "genreId": 10,
        "composer": "Humberto Teixeira/Luiz Gonzaga",
        "milliseconds": 222275,
        "bytes": 7349779,
        "unitPrice": 0.99
    },
    {
        "name": "Último Pau-De-Arara",
        "albumId": 85,
        "mediaTypeId": 1,
        "genreId": 10,
        "composer": "Corumbá/José Gumarães/Venancio",
        "milliseconds": 200437,
        "bytes": 6638563,
        "unitPrice": 0.99
    },
    {
        "name": "Asa Branca",
        "albumId": 85,
        "mediaTypeId": 1,
        "genreId": 10,
        "composer": "Humberto Teixeira/Luiz Gonzaga",
        "milliseconds": 217051,
        "bytes": 7387183,
        "unitPrice": 0.99
    },
    {
        "name": "Qui Nem Jiló",
        "albumId": 85,
        "mediaTypeId": 1,
        "genreId": 10,
        "composer": "Humberto Teixeira/Luiz Gonzaga",
        "milliseconds": 204695,
        "bytes": 6937472,
        "unitPrice": 0.99
    },
    {
        "name": "Assum Preto",
        "albumId": 85,
        "mediaTypeId": 1,
        "genreId": 10,
        "composer": "Humberto Teixeira/Luiz Gonzaga",
        "milliseconds": 199653,
        "bytes": 6625000,
        "unitPrice": 0.99
    },
    {
        "name": "Pau-De-Arara",
        "albumId": 85,
        "mediaTypeId": 1,
        "genreId": 10,
        "composer": "Guio De Morais E Seus "Parentes"/Luiz Gonzaga",
        "milliseconds": 191660,
        "bytes": 6340649,
        "unitPrice": 0.99
    },
    {
        "name": "A Volta Da Asa Branca",
        "albumId": 85,
        "mediaTypeId": 1,
        "genreId": 10,
        "composer": "Luiz Gonzaga/Zé Dantas",
        "milliseconds": 271020,
        "bytes": 9098093,
        "unitPrice": 0.99
    },
    {
        "name": "O Amor Daqui De Casa",
        "albumId": 85,
        "mediaTypeId": 1,
        "genreId": 10,
        "composer": "Gilberto Gil",
        "milliseconds": 148636,
        "bytes": 4888292,
        "unitPrice": 0.99
    },
    {
        "name": "As Pegadas Do Amor",
        "albumId": 85,
        "mediaTypeId": 1,
        "genreId": 10,
        "composer": "Gilberto Gil",
        "milliseconds": 209136,
        "bytes": 6899062,
        "unitPrice": 0.99
    },
    {
        "name": "Lamento Sertanejo",
        "albumId": 85,
        "mediaTypeId": 1,
        "genreId": 10,
        "composer": "Dominguinhos/Gilberto Gil",
        "milliseconds": 260963,
        "bytes": 8518290,
        "unitPrice": 0.99
    },
    {
        "name": "Casinha Feliz",
        "albumId": 85,
        "mediaTypeId": 1,
        "genreId": 10,
        "composer": "Gilberto Gil",
        "milliseconds": 32287,
        "bytes": 1039615,
        "unitPrice": 0.99
    },
    {
        "name": "Introdução (Live)",
        "albumId": 86,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 154096,
        "bytes": 5227579,
        "unitPrice": 0.99
    },
    {
        "name": "Palco (Live)",
        "albumId": 86,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 238315,
        "bytes": 8026622,
        "unitPrice": 0.99
    },
    {
        "name": "Is This Love (Live)",
        "albumId": 86,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 295262,
        "bytes": 9819759,
        "unitPrice": 0.99
    },
    {
        "name": "Stir It Up (Live)",
        "albumId": 86,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 282409,
        "bytes": 9594738,
        "unitPrice": 0.99
    },
    {
        "name": "Refavela (Live)",
        "albumId": 86,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 236695,
        "bytes": 7985305,
        "unitPrice": 0.99
    },
    {
        "name": "Vendedor De Caranguejo (Live)",
        "albumId": 86,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 248842,
        "bytes": 8358128,
        "unitPrice": 0.99
    },
    {
        "name": "Quanta (Live)",
        "albumId": 86,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 357485,
        "bytes": 11774865,
        "unitPrice": 0.99
    },
    {
        "name": "Estrela (Live)",
        "albumId": 86,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 285309,
        "bytes": 9436411,
        "unitPrice": 0.99
    },
    {
        "name": "Pela Internet (Live)",
        "albumId": 86,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 263471,
        "bytes": 8804401,
        "unitPrice": 0.99
    },
    {
        "name": "Cérebro Eletrônico (Live)",
        "albumId": 86,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 231627,
        "bytes": 7805352,
        "unitPrice": 0.99
    },
    {
        "name": "Opachorô (Live)",
        "albumId": 86,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 259526,
        "bytes": 8596384,
        "unitPrice": 0.99
    },
    {
        "name": "Copacabana (Live)",
        "albumId": 86,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 289671,
        "bytes": 9673672,
        "unitPrice": 0.99
    },
    {
        "name": "A Novidade (Live)",
        "albumId": 86,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 316969,
        "bytes": 10508000,
        "unitPrice": 0.99
    },
    {
        "name": "Ghandi (Live)",
        "albumId": 86,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 222458,
        "bytes": 7481950,
        "unitPrice": 0.99
    },
    {
        "name": "De Ouro E Marfim (Live)",
        "albumId": 86,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 234971,
        "bytes": 7838453,
        "unitPrice": 0.99
    },
    {
        "name": "Doce De Carnaval (Candy All)",
        "albumId": 87,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": null,
        "milliseconds": 356101,
        "bytes": 11998470,
        "unitPrice": 0.99
    },
    {
        "name": "Lamento De Carnaval",
        "albumId": 87,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": null,
        "milliseconds": 294530,
        "bytes": 9819276,
        "unitPrice": 0.99
    },
    {
        "name": "Pretinha",
        "albumId": 87,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": null,
        "milliseconds": 265273,
        "bytes": 8914579,
        "unitPrice": 0.99
    },
    {
        "name": "A Novidade",
        "albumId": 73,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Gilberto Gil",
        "milliseconds": 324780,
        "bytes": 10765600,
        "unitPrice": 0.99
    },
    {
        "name": "Tenho Sede",
        "albumId": 73,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Gilberto Gil",
        "milliseconds": 261616,
        "bytes": 8708114,
        "unitPrice": 0.99
    },
    {
        "name": "Refazenda",
        "albumId": 73,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Gilberto Gil",
        "milliseconds": 218305,
        "bytes": 7237784,
        "unitPrice": 0.99
    },
    {
        "name": "Realce",
        "albumId": 73,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Gilberto Gil",
        "milliseconds": 264489,
        "bytes": 8847612,
        "unitPrice": 0.99
    },
    {
        "name": "Esotérico",
        "albumId": 73,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Gilberto Gil",
        "milliseconds": 317779,
        "bytes": 10530533,
        "unitPrice": 0.99
    },
    {
        "name": "Drão",
        "albumId": 73,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Gilberto Gil",
        "milliseconds": 301453,
        "bytes": 9931950,
        "unitPrice": 0.99
    },
    {
        "name": "A Paz",
        "albumId": 73,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Gilberto Gil",
        "milliseconds": 293093,
        "bytes": 9593064,
        "unitPrice": 0.99
    },
    {
        "name": "Beira Mar",
        "albumId": 73,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Gilberto Gil",
        "milliseconds": 295444,
        "bytes": 9597994,
        "unitPrice": 0.99
    },
    {
        "name": "Sampa",
        "albumId": 73,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Gilberto Gil",
        "milliseconds": 225697,
        "bytes": 7469905,
        "unitPrice": 0.99
    },
    {
        "name": "Parabolicamará",
        "albumId": 73,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Gilberto Gil",
        "milliseconds": 284943,
        "bytes": 9543435,
        "unitPrice": 0.99
    },
    {
        "name": "Tempo Rei",
        "albumId": 73,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Gilberto Gil",
        "milliseconds": 302733,
        "bytes": 10019269,
        "unitPrice": 0.99
    },
    {
        "name": "Expresso 2222",
        "albumId": 73,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Gilberto Gil",
        "milliseconds": 284760,
        "bytes": 9690577,
        "unitPrice": 0.99
    },
    {
        "name": "Aquele Abraço",
        "albumId": 73,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Gilberto Gil",
        "milliseconds": 263993,
        "bytes": 8805003,
        "unitPrice": 0.99
    },
    {
        "name": "Palco",
        "albumId": 73,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Gilberto Gil",
        "milliseconds": 270550,
        "bytes": 9049901,
        "unitPrice": 0.99
    },
    {
        "name": "Toda Menina Baiana",
        "albumId": 73,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Gilberto Gil",
        "milliseconds": 278177,
        "bytes": 9351000,
        "unitPrice": 0.99
    },
    {
        "name": "Sítio Do Pica-Pau Amarelo",
        "albumId": 73,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Gilberto Gil",
        "milliseconds": 218070,
        "bytes": 7217955,
        "unitPrice": 0.99
    },
    {
        "name": "Straight Out Of Line",
        "albumId": 88,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Sully Erna",
        "milliseconds": 259213,
        "bytes": 8511877,
        "unitPrice": 0.99
    },
    {
        "name": "Faceless",
        "albumId": 88,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Sully Erna",
        "milliseconds": 216006,
        "bytes": 6992417,
        "unitPrice": 0.99
    },
    {
        "name": "Changes",
        "albumId": 88,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Sully Erna; Tony Rombola",
        "milliseconds": 260022,
        "bytes": 8455835,
        "unitPrice": 0.99
    },
    {
        "name": "Make Me Believe",
        "albumId": 88,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Sully Erna",
        "milliseconds": 248607,
        "bytes": 8075050,
        "unitPrice": 0.99
    },
    {
        "name": "I Stand Alone",
        "albumId": 88,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Sully Erna",
        "milliseconds": 246125,
        "bytes": 8017041,
        "unitPrice": 0.99
    },
    {
        "name": "Re-Align",
        "albumId": 88,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Sully Erna",
        "milliseconds": 260884,
        "bytes": 8513891,
        "unitPrice": 0.99
    },
    {
        "name": "I Fucking Hate You",
        "albumId": 88,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Sully Erna",
        "milliseconds": 247170,
        "bytes": 8059642,
        "unitPrice": 0.99
    },
    {
        "name": "Releasing The Demons",
        "albumId": 88,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Sully Erna",
        "milliseconds": 252760,
        "bytes": 8276372,
        "unitPrice": 0.99
    },
    {
        "name": "Dead And Broken",
        "albumId": 88,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Sully Erna",
        "milliseconds": 251454,
        "bytes": 8206611,
        "unitPrice": 0.99
    },
    {
        "name": "I Am",
        "albumId": 88,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Sully Erna",
        "milliseconds": 239516,
        "bytes": 7803270,
        "unitPrice": 0.99
    },
    {
        "name": "The Awakening",
        "albumId": 88,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Sully Erna",
        "milliseconds": 89547,
        "bytes": 3035251,
        "unitPrice": 0.99
    },
    {
        "name": "Serenity",
        "albumId": 88,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Sully Erna; Tony Rombola",
        "milliseconds": 274834,
        "bytes": 9172976,
        "unitPrice": 0.99
    },
    {
        "name": "American Idiot",
        "albumId": 89,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billie Joe Armstrong, Mike Dirnt, Tré Cool",
        "milliseconds": 174419,
        "bytes": 5705793,
        "unitPrice": 0.99
    },
    {
        "name": "Jesus Of Suburbia / City Of The Damned / I Don't Care / Dearly Beloved / Tales Of Another Broken Home",
        "albumId": 89,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billie Joe Armstrong/Green Day",
        "milliseconds": 548336,
        "bytes": 17875209,
        "unitPrice": 0.99
    },
    {
        "name": "Holiday",
        "albumId": 89,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billie Joe Armstrong, Mike Dirnt, Tré Cool",
        "milliseconds": 232724,
        "bytes": 7599602,
        "unitPrice": 0.99
    },
    {
        "name": "Boulevard Of Broken Dreams",
        "albumId": 89,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Mike Dint, Billie Joe, Tré Cool",
        "milliseconds": 260858,
        "bytes": 8485122,
        "unitPrice": 0.99
    },
    {
        "name": "Are We The Waiting",
        "albumId": 89,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Green Day",
        "milliseconds": 163004,
        "bytes": 5328329,
        "unitPrice": 0.99
    },
    {
        "name": "St. Jimmy",
        "albumId": 89,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Green Day",
        "milliseconds": 175307,
        "bytes": 5716589,
        "unitPrice": 0.99
    },
    {
        "name": "Give Me Novacaine",
        "albumId": 89,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Green Day",
        "milliseconds": 205871,
        "bytes": 6752485,
        "unitPrice": 0.99
    },
    {
        "name": "She's A Rebel",
        "albumId": 89,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Green Day",
        "milliseconds": 120528,
        "bytes": 3901226,
        "unitPrice": 0.99
    },
    {
        "name": "Extraordinary Girl",
        "albumId": 89,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Green Day",
        "milliseconds": 214021,
        "bytes": 6975177,
        "unitPrice": 0.99
    },
    {
        "name": "Letterbomb",
        "albumId": 89,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Green Day",
        "milliseconds": 246151,
        "bytes": 7980902,
        "unitPrice": 0.99
    },
    {
        "name": "Wake Me Up When September Ends",
        "albumId": 89,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Mike Dint, Billie Joe, Tré Cool",
        "milliseconds": 285753,
        "bytes": 9325597,
        "unitPrice": 0.99
    },
    {
        "name": "Homecoming / The Death Of St. Jimmy / East 12th St. / Nobody Likes You / Rock And Roll Girlfriend / We're Coming Home Again",
        "albumId": 89,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Mike Dirnt/Tré Cool",
        "milliseconds": 558602,
        "bytes": 18139840,
        "unitPrice": 0.99
    },
    {
        "name": "Whatsername",
        "albumId": 89,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Green Day",
        "milliseconds": 252316,
        "bytes": 8244843,
        "unitPrice": 0.99
    },
    {
        "name": "Welcome to the Jungle",
        "albumId": 90,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 273552,
        "bytes": 4538451,
        "unitPrice": 0.99
    },
    {
        "name": "It's So Easy",
        "albumId": 90,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 202824,
        "bytes": 3394019,
        "unitPrice": 0.99
    },
    {
        "name": "Nightrain",
        "albumId": 90,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 268537,
        "bytes": 4457283,
        "unitPrice": 0.99
    },
    {
        "name": "Out Ta Get Me",
        "albumId": 90,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 263893,
        "bytes": 4382147,
        "unitPrice": 0.99
    },
    {
        "name": "Mr. Brownstone",
        "albumId": 90,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 228924,
        "bytes": 3816323,
        "unitPrice": 0.99
    },
    {
        "name": "Paradise City",
        "albumId": 90,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 406347,
        "bytes": 6687123,
        "unitPrice": 0.99
    },
    {
        "name": "My Michelle",
        "albumId": 90,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 219961,
        "bytes": 3671299,
        "unitPrice": 0.99
    },
    {
        "name": "Think About You",
        "albumId": 90,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 231640,
        "bytes": 3860275,
        "unitPrice": 0.99
    },
    {
        "name": "Sweet Child O' Mine",
        "albumId": 90,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 356424,
        "bytes": 5879347,
        "unitPrice": 0.99
    },
    {
        "name": "You're Crazy",
        "albumId": 90,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 197135,
        "bytes": 3301971,
        "unitPrice": 0.99
    },
    {
        "name": "Anything Goes",
        "albumId": 90,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 206400,
        "bytes": 3451891,
        "unitPrice": 0.99
    },
    {
        "name": "Rocket Queen",
        "albumId": 90,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 375349,
        "bytes": 6185539,
        "unitPrice": 0.99
    },
    {
        "name": "Right Next Door to Hell",
        "albumId": 91,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 182321,
        "bytes": 3175950,
        "unitPrice": 0.99
    },
    {
        "name": "Dust N' Bones",
        "albumId": 91,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 298374,
        "bytes": 5053742,
        "unitPrice": 0.99
    },
    {
        "name": "Live and Let Die",
        "albumId": 91,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 184016,
        "bytes": 3203390,
        "unitPrice": 0.99
    },
    {
        "name": "Don't Cry (Original)",
        "albumId": 91,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 284744,
        "bytes": 4833259,
        "unitPrice": 0.99
    },
    {
        "name": "Perfect Crime",
        "albumId": 91,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 143637,
        "bytes": 2550030,
        "unitPrice": 0.99
    },
    {
        "name": "You Ain't the First",
        "albumId": 91,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 156268,
        "bytes": 2754414,
        "unitPrice": 0.99
    },
    {
        "name": "Bad Obsession",
        "albumId": 91,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 328282,
        "bytes": 5537678,
        "unitPrice": 0.99
    },
    {
        "name": "Back off Bitch",
        "albumId": 91,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 303436,
        "bytes": 5135662,
        "unitPrice": 0.99
    },
    {
        "name": "Double Talkin' Jive",
        "albumId": 91,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 203637,
        "bytes": 3520862,
        "unitPrice": 0.99
    },
    {
        "name": "November Rain",
        "albumId": 91,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 537540,
        "bytes": 8923566,
        "unitPrice": 0.99
    },
    {
        "name": "The Garden",
        "albumId": 91,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 322175,
        "bytes": 5438862,
        "unitPrice": 0.99
    },
    {
        "name": "Garden of Eden",
        "albumId": 91,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 161539,
        "bytes": 2839694,
        "unitPrice": 0.99
    },
    {
        "name": "Don't Damn Me",
        "albumId": 91,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 318901,
        "bytes": 5385886,
        "unitPrice": 0.99
    },
    {
        "name": "Bad Apples",
        "albumId": 91,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 268351,
        "bytes": 4567966,
        "unitPrice": 0.99
    },
    {
        "name": "Dead Horse",
        "albumId": 91,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 257600,
        "bytes": 4394014,
        "unitPrice": 0.99
    },
    {
        "name": "Coma",
        "albumId": 91,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 616511,
        "bytes": 10201342,
        "unitPrice": 0.99
    },
    {
        "name": "Civil War",
        "albumId": 92,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Duff McKagan/Slash/W. Axl Rose",
        "milliseconds": 461165,
        "bytes": 15046579,
        "unitPrice": 0.99
    },
    {
        "name": "14 Years",
        "albumId": 92,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Izzy Stradlin'/W. Axl Rose",
        "milliseconds": 261355,
        "bytes": 8543664,
        "unitPrice": 0.99
    },
    {
        "name": "Yesterdays",
        "albumId": 92,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Billy/Del James/W. Axl Rose/West Arkeen",
        "milliseconds": 196205,
        "bytes": 6398489,
        "unitPrice": 0.99
    },
    {
        "name": "Knockin' On Heaven's Door",
        "albumId": 92,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Bob Dylan",
        "milliseconds": 336457,
        "bytes": 10986716,
        "unitPrice": 0.99
    },
    {
        "name": "Get In The Ring",
        "albumId": 92,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Duff McKagan/Slash/W. Axl Rose",
        "milliseconds": 341054,
        "bytes": 11134105,
        "unitPrice": 0.99
    },
    {
        "name": "Shotgun Blues",
        "albumId": 92,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "W. Axl Rose",
        "milliseconds": 203206,
        "bytes": 6623916,
        "unitPrice": 0.99
    },
    {
        "name": "Breakdown",
        "albumId": 92,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "W. Axl Rose",
        "milliseconds": 424960,
        "bytes": 13978284,
        "unitPrice": 0.99
    },
    {
        "name": "Pretty Tied Up",
        "albumId": 92,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Izzy Stradlin'",
        "milliseconds": 287477,
        "bytes": 9408754,
        "unitPrice": 0.99
    },
    {
        "name": "Locomotive",
        "albumId": 92,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Slash/W. Axl Rose",
        "milliseconds": 522396,
        "bytes": 17236842,
        "unitPrice": 0.99
    },
    {
        "name": "So Fine",
        "albumId": 92,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Duff McKagan",
        "milliseconds": 246491,
        "bytes": 8039484,
        "unitPrice": 0.99
    },
    {
        "name": "Estranged",
        "albumId": 92,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "W. Axl Rose",
        "milliseconds": 563800,
        "bytes": 18343787,
        "unitPrice": 0.99
    },
    {
        "name": "You Could Be Mine",
        "albumId": 92,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Izzy Stradlin'/W. Axl Rose",
        "milliseconds": 343875,
        "bytes": 11207355,
        "unitPrice": 0.99
    },
    {
        "name": "Don't Cry",
        "albumId": 92,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Izzy Stradlin'/W. Axl Rose",
        "milliseconds": 284238,
        "bytes": 9222458,
        "unitPrice": 0.99
    },
    {
        "name": "My World",
        "albumId": 92,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "W. Axl Rose",
        "milliseconds": 84532,
        "bytes": 2764045,
        "unitPrice": 0.99
    },
    {
        "name": "Colibri",
        "albumId": 93,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Richard Bull",
        "milliseconds": 361012,
        "bytes": 12055329,
        "unitPrice": 0.99
    },
    {
        "name": "Love Is The Colour",
        "albumId": 93,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "R. Carless",
        "milliseconds": 251585,
        "bytes": 8419165,
        "unitPrice": 0.99
    },
    {
        "name": "Magnetic Ocean",
        "albumId": 93,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Patrick Claher/Richard Bull",
        "milliseconds": 321123,
        "bytes": 10720741,
        "unitPrice": 0.99
    },
    {
        "name": "Deep Waters",
        "albumId": 93,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Richard Bull",
        "milliseconds": 396460,
        "bytes": 13075359,
        "unitPrice": 0.99
    },
    {
        "name": "L'Arc En Ciel De Miles",
        "albumId": 93,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Kevin Robinson/Richard Bull",
        "milliseconds": 242390,
        "bytes": 8053997,
        "unitPrice": 0.99
    },
    {
        "name": "Gypsy",
        "albumId": 93,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Kevin Robinson",
        "milliseconds": 330997,
        "bytes": 11083374,
        "unitPrice": 0.99
    },
    {
        "name": "Journey Into Sunlight",
        "albumId": 93,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Jean Paul Maunick",
        "milliseconds": 249756,
        "bytes": 8241177,
        "unitPrice": 0.99
    },
    {
        "name": "Sunchild",
        "albumId": 93,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Graham Harvey",
        "milliseconds": 259970,
        "bytes": 8593143,
        "unitPrice": 0.99
    },
    {
        "name": "Millenium",
        "albumId": 93,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Maxton Gig Beesley Jnr.",
        "milliseconds": 379167,
        "bytes": 12511939,
        "unitPrice": 0.99
    },
    {
        "name": "Thinking 'Bout Tomorrow",
        "albumId": 93,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Fayyaz Virgi/Richard Bull",
        "milliseconds": 355395,
        "bytes": 11865384,
        "unitPrice": 0.99
    },
    {
        "name": "Jacob's Ladder",
        "albumId": 93,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Julian Crampton",
        "milliseconds": 367647,
        "bytes": 12201595,
        "unitPrice": 0.99
    },
    {
        "name": "She Wears Black",
        "albumId": 93,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "G Harvey/R Hope-Taylor",
        "milliseconds": 528666,
        "bytes": 17617944,
        "unitPrice": 0.99
    },
    {
        "name": "Dark Side Of The Cog",
        "albumId": 93,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Jean Paul Maunick",
        "milliseconds": 377155,
        "bytes": 12491122,
        "unitPrice": 0.99
    },
    {
        "name": "Different World",
        "albumId": 94,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 258692,
        "bytes": 4383764,
        "unitPrice": 0.99
    },
    {
        "name": "These Colours Don't Run",
        "albumId": 94,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 412152,
        "bytes": 6883500,
        "unitPrice": 0.99
    },
    {
        "name": "Brighter Than a Thousand Suns",
        "albumId": 94,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 526255,
        "bytes": 8721490,
        "unitPrice": 0.99
    },
    {
        "name": "The Pilgrim",
        "albumId": 94,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 307593,
        "bytes": 5172144,
        "unitPrice": 0.99
    },
    {
        "name": "The Longest Day",
        "albumId": 94,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 467810,
        "bytes": 7785748,
        "unitPrice": 0.99
    },
    {
        "name": "Out of the Shadows",
        "albumId": 94,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 336896,
        "bytes": 5647303,
        "unitPrice": 0.99
    },
    {
        "name": "The Reincarnation of Benjamin Breeg",
        "albumId": 94,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 442106,
        "bytes": 7367736,
        "unitPrice": 0.99
    },
    {
        "name": "For the Greater Good of God",
        "albumId": 94,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 564893,
        "bytes": 9367328,
        "unitPrice": 0.99
    },
    {
        "name": "Lord of Light",
        "albumId": 94,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 444614,
        "bytes": 7393698,
        "unitPrice": 0.99
    },
    {
        "name": "The Legacy",
        "albumId": 94,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 562966,
        "bytes": 9314287,
        "unitPrice": 0.99
    },
    {
        "name": "Hallowed Be Thy name (Live) [Non Album Bonus Track]",
        "albumId": 94,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 431262,
        "bytes": 7205816,
        "unitPrice": 0.99
    },
    {
        "name": "The Number Of The Beast",
        "albumId": 95,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Steve Harris",
        "milliseconds": 294635,
        "bytes": 4718897,
        "unitPrice": 0.99
    },
    {
        "name": "The Trooper",
        "albumId": 95,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Steve Harris",
        "milliseconds": 235311,
        "bytes": 3766272,
        "unitPrice": 0.99
    },
    {
        "name": "Prowler",
        "albumId": 95,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Steve Harris",
        "milliseconds": 255634,
        "bytes": 4091904,
        "unitPrice": 0.99
    },
    {
        "name": "Transylvania",
        "albumId": 95,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Steve Harris",
        "milliseconds": 265874,
        "bytes": 4255744,
        "unitPrice": 0.99
    },
    {
        "name": "Remember Tomorrow",
        "albumId": 95,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Paul Di'Anno/Steve Harris",
        "milliseconds": 352731,
        "bytes": 5648438,
        "unitPrice": 0.99
    },
    {
        "name": "Where Eagles Dare",
        "albumId": 95,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Steve Harris",
        "milliseconds": 289358,
        "bytes": 4630528,
        "unitPrice": 0.99
    },
    {
        "name": "Sanctuary",
        "albumId": 95,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "David Murray/Paul Di'Anno/Steve Harris",
        "milliseconds": 293250,
        "bytes": 4694016,
        "unitPrice": 0.99
    },
    {
        "name": "Running Free",
        "albumId": 95,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Paul Di'Anno/Steve Harris",
        "milliseconds": 228937,
        "bytes": 3663872,
        "unitPrice": 0.99
    },
    {
        "name": "Run To The Hilss",
        "albumId": 95,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Steve Harris",
        "milliseconds": 237557,
        "bytes": 3803136,
        "unitPrice": 0.99
    },
    {
        "name": "2 Minutes To Midnight",
        "albumId": 95,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Adrian Smith/Bruce Dickinson",
        "milliseconds": 337423,
        "bytes": 5400576,
        "unitPrice": 0.99
    },
    {
        "name": "Iron Maiden",
        "albumId": 95,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Steve Harris",
        "milliseconds": 324623,
        "bytes": 5195776,
        "unitPrice": 0.99
    },
    {
        "name": "Hallowed Be Thy name",
        "albumId": 95,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Steve Harris",
        "milliseconds": 471849,
        "bytes": 7550976,
        "unitPrice": 0.99
    },
    {
        "name": "Be Quick Or Be Dead",
        "albumId": 96,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Bruce Dickinson/Janick Gers",
        "milliseconds": 196911,
        "bytes": 3151872,
        "unitPrice": 0.99
    },
    {
        "name": "From Here To Eternity",
        "albumId": 96,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Steve Harris",
        "milliseconds": 259866,
        "bytes": 4159488,
        "unitPrice": 0.99
    },
    {
        "name": "Can I Play With Madness",
        "albumId": 96,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Adrian Smith/Bruce Dickinson/Steve Harris",
        "milliseconds": 282488,
        "bytes": 4521984,
        "unitPrice": 0.99
    },
    {
        "name": "Wasting Love",
        "albumId": 96,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Bruce Dickinson/Janick Gers",
        "milliseconds": 347846,
        "bytes": 5566464,
        "unitPrice": 0.99
    },
    {
        "name": "Tailgunner",
        "albumId": 96,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Bruce Dickinson/Steve Harris",
        "milliseconds": 249469,
        "bytes": 3993600,
        "unitPrice": 0.99
    },
    {
        "name": "The Evil That Men Do",
        "albumId": 96,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Adrian Smith/Bruce Dickinson/Steve Harris",
        "milliseconds": 325929,
        "bytes": 5216256,
        "unitPrice": 0.99
    },
    {
        "name": "Afraid To Shoot Strangers",
        "albumId": 96,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Steve Harris",
        "milliseconds": 407980,
        "bytes": 6529024,
        "unitPrice": 0.99
    },
    {
        "name": "Bring Your Daughter... To The Slaughter",
        "albumId": 96,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Bruce Dickinson",
        "milliseconds": 317727,
        "bytes": 5085184,
        "unitPrice": 0.99
    },
    {
        "name": "Heaven Can Wait",
        "albumId": 96,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Steve Harris",
        "milliseconds": 448574,
        "bytes": 7178240,
        "unitPrice": 0.99
    },
    {
        "name": "The Clairvoyant",
        "albumId": 96,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Steve Harris",
        "milliseconds": 269871,
        "bytes": 4319232,
        "unitPrice": 0.99
    },
    {
        "name": "Fear Of The Dark",
        "albumId": 96,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Steve Harris",
        "milliseconds": 431333,
        "bytes": 6906078,
        "unitPrice": 0.99
    },
    {
        "name": "The Wicker Man",
        "albumId": 97,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Adrian Smith/Bruce Dickinson/Steve Harris",
        "milliseconds": 275539,
        "bytes": 11022464,
        "unitPrice": 0.99
    },
    {
        "name": "Ghost Of The Navigator",
        "albumId": 97,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bruce Dickinson/Janick Gers/Steve Harris",
        "milliseconds": 410070,
        "bytes": 16404608,
        "unitPrice": 0.99
    },
    {
        "name": "Brave New World",
        "albumId": 97,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bruce Dickinson/David Murray/Steve Harris",
        "milliseconds": 378984,
        "bytes": 15161472,
        "unitPrice": 0.99
    },
    {
        "name": "Blood Brothers",
        "albumId": 97,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Steve Harris",
        "milliseconds": 434442,
        "bytes": 17379456,
        "unitPrice": 0.99
    },
    {
        "name": "The Mercenary",
        "albumId": 97,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Janick Gers/Steve Harris",
        "milliseconds": 282488,
        "bytes": 11300992,
        "unitPrice": 0.99
    },
    {
        "name": "Dream Of Mirrors",
        "albumId": 97,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Janick Gers/Steve Harris",
        "milliseconds": 561162,
        "bytes": 22448256,
        "unitPrice": 0.99
    },
    {
        "name": "The Fallen Angel",
        "albumId": 97,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Adrian Smith/Steve Harris",
        "milliseconds": 240718,
        "bytes": 9629824,
        "unitPrice": 0.99
    },
    {
        "name": "The Nomad",
        "albumId": 97,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "David Murray/Steve Harris",
        "milliseconds": 546115,
        "bytes": 21846144,
        "unitPrice": 0.99
    },
    {
        "name": "Out Of The Silent Planet",
        "albumId": 97,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bruce Dickinson/Janick Gers/Steve Harris",
        "milliseconds": 385541,
        "bytes": 15423616,
        "unitPrice": 0.99
    },
    {
        "name": "The Thin Line Between Love & Hate",
        "albumId": 97,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "David Murray/Steve Harris",
        "milliseconds": 506801,
        "bytes": 20273280,
        "unitPrice": 0.99
    },
    {
        "name": "Wildest Dreams",
        "albumId": 98,
        "mediaTypeId": 1,
        "genreId": 13,
        "composer": "Adrian Smith/Steve Harris",
        "milliseconds": 232777,
        "bytes": 9312384,
        "unitPrice": 0.99
    },
    {
        "name": "Rainmaker",
        "albumId": 98,
        "mediaTypeId": 1,
        "genreId": 13,
        "composer": "Bruce Dickinson/David Murray/Steve Harris",
        "milliseconds": 228623,
        "bytes": 9146496,
        "unitPrice": 0.99
    },
    {
        "name": "No More Lies",
        "albumId": 98,
        "mediaTypeId": 1,
        "genreId": 13,
        "composer": "Steve Harris",
        "milliseconds": 441782,
        "bytes": 17672320,
        "unitPrice": 0.99
    },
    {
        "name": "Montsegur",
        "albumId": 98,
        "mediaTypeId": 1,
        "genreId": 13,
        "composer": "Bruce Dickinson/Janick Gers/Steve Harris",
        "milliseconds": 350484,
        "bytes": 14020736,
        "unitPrice": 0.99
    },
    {
        "name": "Dance Of Death",
        "albumId": 98,
        "mediaTypeId": 1,
        "genreId": 13,
        "composer": "Janick Gers/Steve Harris",
        "milliseconds": 516649,
        "bytes": 20670727,
        "unitPrice": 0.99
    },
    {
        "name": "Gates Of Tomorrow",
        "albumId": 98,
        "mediaTypeId": 1,
        "genreId": 13,
        "composer": "Bruce Dickinson/Janick Gers/Steve Harris",
        "milliseconds": 312032,
        "bytes": 12482688,
        "unitPrice": 0.99
    },
    {
        "name": "New Frontier",
        "albumId": 98,
        "mediaTypeId": 1,
        "genreId": 13,
        "composer": "Adrian Smith/Bruce Dickinson/Nicko McBrain",
        "milliseconds": 304509,
        "bytes": 12181632,
        "unitPrice": 0.99
    },
    {
        "name": "Paschendale",
        "albumId": 98,
        "mediaTypeId": 1,
        "genreId": 13,
        "composer": "Adrian Smith/Steve Harris",
        "milliseconds": 508107,
        "bytes": 20326528,
        "unitPrice": 0.99
    },
    {
        "name": "Face In The Sand",
        "albumId": 98,
        "mediaTypeId": 1,
        "genreId": 13,
        "composer": "Adrian Smith/Bruce Dickinson/Steve Harris",
        "milliseconds": 391105,
        "bytes": 15648948,
        "unitPrice": 0.99
    },
    {
        "name": "Age Of Innocence",
        "albumId": 98,
        "mediaTypeId": 1,
        "genreId": 13,
        "composer": "David Murray/Steve Harris",
        "milliseconds": 370468,
        "bytes": 14823478,
        "unitPrice": 0.99
    },
    {
        "name": "Journeyman",
        "albumId": 98,
        "mediaTypeId": 1,
        "genreId": 13,
        "composer": "Bruce Dickinson/David Murray/Steve Harris",
        "milliseconds": 427023,
        "bytes": 17082496,
        "unitPrice": 0.99
    },
    {
        "name": "Be Quick Or Be Dead",
        "albumId": 99,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bruce Dickinson/Janick Gers",
        "milliseconds": 204512,
        "bytes": 8181888,
        "unitPrice": 0.99
    },
    {
        "name": "From Here To Eternity",
        "albumId": 99,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Steve Harris",
        "milliseconds": 218357,
        "bytes": 8739038,
        "unitPrice": 0.99
    },
    {
        "name": "Afraid To Shoot Strangers",
        "albumId": 99,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Steve Harris",
        "milliseconds": 416496,
        "bytes": 16664589,
        "unitPrice": 0.99
    },
    {
        "name": "Fear Is The Key",
        "albumId": 99,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bruce Dickinson/Janick Gers",
        "milliseconds": 335307,
        "bytes": 13414528,
        "unitPrice": 0.99
    },
    {
        "name": "Childhood's End",
        "albumId": 99,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Steve Harris",
        "milliseconds": 280607,
        "bytes": 11225216,
        "unitPrice": 0.99
    },
    {
        "name": "Wasting Love",
        "albumId": 99,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bruce Dickinson/Janick Gers",
        "milliseconds": 350981,
        "bytes": 14041216,
        "unitPrice": 0.99
    },
    {
        "name": "The Fugitive",
        "albumId": 99,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Steve Harris",
        "milliseconds": 294112,
        "bytes": 11765888,
        "unitPrice": 0.99
    },
    {
        "name": "Chains Of Misery",
        "albumId": 99,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bruce Dickinson/David Murray",
        "milliseconds": 217443,
        "bytes": 8700032,
        "unitPrice": 0.99
    },
    {
        "name": "The Apparition",
        "albumId": 99,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Janick Gers/Steve Harris",
        "milliseconds": 234605,
        "bytes": 9386112,
        "unitPrice": 0.99
    },
    {
        "name": "Judas Be My Guide",
        "albumId": 99,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bruce Dickinson/David Murray",
        "milliseconds": 188786,
        "bytes": 7553152,
        "unitPrice": 0.99
    },
    {
        "name": "Weekend Warrior",
        "albumId": 99,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Janick Gers/Steve Harris",
        "milliseconds": 339748,
        "bytes": 13594678,
        "unitPrice": 0.99
    },
    {
        "name": "Fear Of The Dark",
        "albumId": 99,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Steve Harris",
        "milliseconds": 436976,
        "bytes": 17483789,
        "unitPrice": 0.99
    },
    {
        "name": "01 - Prowler",
        "albumId": 100,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Steve Harris",
        "milliseconds": 236173,
        "bytes": 5668992,
        "unitPrice": 0.99
    },
    {
        "name": "02 - Sanctuary",
        "albumId": 100,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "David Murray/Paul Di'Anno/Steve Harris",
        "milliseconds": 196284,
        "bytes": 4712576,
        "unitPrice": 0.99
    },
    {
        "name": "03 - Remember Tomorrow",
        "albumId": 100,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Harris/Paul Di´Anno",
        "milliseconds": 328620,
        "bytes": 7889024,
        "unitPrice": 0.99
    },
    {
        "name": "04 - Running Free",
        "albumId": 100,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Harris/Paul Di´Anno",
        "milliseconds": 197276,
        "bytes": 4739122,
        "unitPrice": 0.99
    },
    {
        "name": "05 - Phantom of the Opera",
        "albumId": 100,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Steve Harris",
        "milliseconds": 428016,
        "bytes": 10276872,
        "unitPrice": 0.99
    },
    {
        "name": "06 - Transylvania",
        "albumId": 100,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Steve Harris",
        "milliseconds": 259343,
        "bytes": 6226048,
        "unitPrice": 0.99
    },
    {
        "name": "07 - Strange World",
        "albumId": 100,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Steve Harris",
        "milliseconds": 332460,
        "bytes": 7981184,
        "unitPrice": 0.99
    },
    {
        "name": "08 - Charlotte the Harlot",
        "albumId": 100,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Murray  Dave",
        "milliseconds": 252708,
        "bytes": 6066304,
        "unitPrice": 0.99
    },
    {
        "name": "09 - Iron Maiden",
        "albumId": 100,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Steve Harris",
        "milliseconds": 216058,
        "bytes": 5189891,
        "unitPrice": 0.99
    },
    {
        "name": "The Ides Of March",
        "albumId": 101,
        "mediaTypeId": 1,
        "genreId": 13,
        "composer": "Steve Harris",
        "milliseconds": 105926,
        "bytes": 2543744,
        "unitPrice": 0.99
    },
    {
        "name": "Wrathchild",
        "albumId": 101,
        "mediaTypeId": 1,
        "genreId": 13,
        "composer": "Steve Harris",
        "milliseconds": 174471,
        "bytes": 4188288,
        "unitPrice": 0.99
    },
    {
        "name": "Murders In The Rue Morgue",
        "albumId": 101,
        "mediaTypeId": 1,
        "genreId": 13,
        "composer": "Steve Harris",
        "milliseconds": 258377,
        "bytes": 6205786,
        "unitPrice": 0.99
    },
    {
        "name": "Another Life",
        "albumId": 101,
        "mediaTypeId": 1,
        "genreId": 13,
        "composer": "Steve Harris",
        "milliseconds": 203049,
        "bytes": 4874368,
        "unitPrice": 0.99
    },
    {
        "name": "Genghis Khan",
        "albumId": 101,
        "mediaTypeId": 1,
        "genreId": 13,
        "composer": "Steve Harris",
        "milliseconds": 187141,
        "bytes": 4493440,
        "unitPrice": 0.99
    },
    {
        "name": "Innocent Exile",
        "albumId": 101,
        "mediaTypeId": 1,
        "genreId": 13,
        "composer": "Di´Anno/Harris",
        "milliseconds": 232515,
        "bytes": 5584861,
        "unitPrice": 0.99
    },
    {
        "name": "Killers",
        "albumId": 101,
        "mediaTypeId": 1,
        "genreId": 13,
        "composer": "Steve Harris",
        "milliseconds": 300956,
        "bytes": 7227440,
        "unitPrice": 0.99
    },
    {
        "name": "Prodigal Son",
        "albumId": 101,
        "mediaTypeId": 1,
        "genreId": 13,
        "composer": "Steve Harris",
        "milliseconds": 372349,
        "bytes": 8937600,
        "unitPrice": 0.99
    },
    {
        "name": "Purgatory",
        "albumId": 101,
        "mediaTypeId": 1,
        "genreId": 13,
        "composer": "Steve Harris",
        "milliseconds": 200150,
        "bytes": 4804736,
        "unitPrice": 0.99
    },
    {
        "name": "Drifter",
        "albumId": 101,
        "mediaTypeId": 1,
        "genreId": 13,
        "composer": "Steve Harris",
        "milliseconds": 288757,
        "bytes": 6934660,
        "unitPrice": 0.99
    },
    {
        "name": "Intro- Churchill S Speech",
        "albumId": 102,
        "mediaTypeId": 1,
        "genreId": 13,
        "composer": null,
        "milliseconds": 48013,
        "bytes": 1154488,
        "unitPrice": 0.99
    },
    {
        "name": "Aces High",
        "albumId": 102,
        "mediaTypeId": 1,
        "genreId": 13,
        "composer": null,
        "milliseconds": 276375,
        "bytes": 6635187,
        "unitPrice": 0.99
    },
    {
        "name": "2 Minutes To Midnight",
        "albumId": 102,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Smith/Dickinson",
        "milliseconds": 366550,
        "bytes": 8799380,
        "unitPrice": 0.99
    },
    {
        "name": "The Trooper",
        "albumId": 102,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Harris",
        "milliseconds": 268878,
        "bytes": 6455255,
        "unitPrice": 0.99
    },
    {
        "name": "Revelations",
        "albumId": 102,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Dickinson",
        "milliseconds": 371826,
        "bytes": 8926021,
        "unitPrice": 0.99
    },
    {
        "name": "Flight Of Icarus",
        "albumId": 102,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Smith/Dickinson",
        "milliseconds": 229982,
        "bytes": 5521744,
        "unitPrice": 0.99
    },
    {
        "name": "Rime Of The Ancient Mariner",
        "albumId": 102,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": null,
        "milliseconds": 789472,
        "bytes": 18949518,
        "unitPrice": 0.99
    },
    {
        "name": "Powerslave",
        "albumId": 102,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": null,
        "milliseconds": 454974,
        "bytes": 10921567,
        "unitPrice": 0.99
    },
    {
        "name": "The Number Of The Beast",
        "albumId": 102,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Harris",
        "milliseconds": 275121,
        "bytes": 6605094,
        "unitPrice": 0.99
    },
    {
        "name": "Hallowed Be Thy name",
        "albumId": 102,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Harris",
        "milliseconds": 451422,
        "bytes": 10836304,
        "unitPrice": 0.99
    },
    {
        "name": "Iron Maiden",
        "albumId": 102,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Harris",
        "milliseconds": 261955,
        "bytes": 6289117,
        "unitPrice": 0.99
    },
    {
        "name": "Run To The Hills",
        "albumId": 102,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Harris",
        "milliseconds": 231627,
        "bytes": 5561241,
        "unitPrice": 0.99
    },
    {
        "name": "Running Free",
        "albumId": 102,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Harris/Di Anno",
        "milliseconds": 204617,
        "bytes": 4912986,
        "unitPrice": 0.99
    },
    {
        "name": "Wrathchild",
        "albumId": 102,
        "mediaTypeId": 1,
        "genreId": 13,
        "composer": "Steve Harris",
        "milliseconds": 183666,
        "bytes": 4410181,
        "unitPrice": 0.99
    },
    {
        "name": "Acacia Avenue",
        "albumId": 102,
        "mediaTypeId": 1,
        "genreId": 13,
        "composer": null,
        "milliseconds": 379872,
        "bytes": 9119118,
        "unitPrice": 0.99
    },
    {
        "name": "Children Of The Damned",
        "albumId": 102,
        "mediaTypeId": 1,
        "genreId": 13,
        "composer": "Steve Harris",
        "milliseconds": 278177,
        "bytes": 6678446,
        "unitPrice": 0.99
    },
    {
        "name": "Die With Your Boots On",
        "albumId": 102,
        "mediaTypeId": 1,
        "genreId": 13,
        "composer": "Adrian Smith/Bruce Dickinson/Steve Harris",
        "milliseconds": 314174,
        "bytes": 7542367,
        "unitPrice": 0.99
    },
    {
        "name": "Phantom Of The Opera",
        "albumId": 102,
        "mediaTypeId": 1,
        "genreId": 13,
        "composer": "Steve Harris",
        "milliseconds": 441155,
        "bytes": 10589917,
        "unitPrice": 0.99
    },
    {
        "name": "Be Quick Or Be Dead",
        "albumId": 103,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 233142,
        "bytes": 5599853,
        "unitPrice": 0.99
    },
    {
        "name": "The Number Of The Beast",
        "albumId": 103,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 294008,
        "bytes": 7060625,
        "unitPrice": 0.99
    },
    {
        "name": "Wrathchild",
        "albumId": 103,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 174106,
        "bytes": 4182963,
        "unitPrice": 0.99
    },
    {
        "name": "From Here To Eternity",
        "albumId": 103,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 284447,
        "bytes": 6831163,
        "unitPrice": 0.99
    },
    {
        "name": "Can I Play With Madness",
        "albumId": 103,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 213106,
        "bytes": 5118995,
        "unitPrice": 0.99
    },
    {
        "name": "Wasting Love",
        "albumId": 103,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 336953,
        "bytes": 8091301,
        "unitPrice": 0.99
    },
    {
        "name": "Tailgunner",
        "albumId": 103,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 247640,
        "bytes": 5947795,
        "unitPrice": 0.99
    },
    {
        "name": "The Evil That Men Do",
        "albumId": 103,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 478145,
        "bytes": 11479913,
        "unitPrice": 0.99
    },
    {
        "name": "Afraid To Shoot Strangers",
        "albumId": 103,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 412525,
        "bytes": 9905048,
        "unitPrice": 0.99
    },
    {
        "name": "Fear Of The Dark",
        "albumId": 103,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 431542,
        "bytes": 10361452,
        "unitPrice": 0.99
    },
    {
        "name": "Bring Your Daughter... To The Slaughter...",
        "albumId": 104,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 376711,
        "bytes": 9045532,
        "unitPrice": 0.99
    },
    {
        "name": "The Clairvoyant",
        "albumId": 104,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 262426,
        "bytes": 6302648,
        "unitPrice": 0.99
    },
    {
        "name": "Heaven Can Wait",
        "albumId": 104,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 440555,
        "bytes": 10577743,
        "unitPrice": 0.99
    },
    {
        "name": "Run To The Hills",
        "albumId": 104,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 235859,
        "bytes": 5665052,
        "unitPrice": 0.99
    },
    {
        "name": "2 Minutes To Midnight",
        "albumId": 104,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Adrian Smith/Bruce Dickinson",
        "milliseconds": 338233,
        "bytes": 8122030,
        "unitPrice": 0.99
    },
    {
        "name": "Iron Maiden",
        "albumId": 104,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 494602,
        "bytes": 11874875,
        "unitPrice": 0.99
    },
    {
        "name": "Hallowed Be Thy name",
        "albumId": 104,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 447791,
        "bytes": 10751410,
        "unitPrice": 0.99
    },
    {
        "name": "The Trooper",
        "albumId": 104,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 232672,
        "bytes": 5588560,
        "unitPrice": 0.99
    },
    {
        "name": "Sanctuary",
        "albumId": 104,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 318511,
        "bytes": 7648679,
        "unitPrice": 0.99
    },
    {
        "name": "Running Free",
        "albumId": 104,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 474017,
        "bytes": 11380851,
        "unitPrice": 0.99
    },
    {
        "name": "Tailgunner",
        "albumId": 105,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Bruce Dickinson/Steve Harris",
        "milliseconds": 255582,
        "bytes": 4089856,
        "unitPrice": 0.99
    },
    {
        "name": "Holy Smoke",
        "albumId": 105,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Bruce Dickinson/Steve Harris",
        "milliseconds": 229459,
        "bytes": 3672064,
        "unitPrice": 0.99
    },
    {
        "name": "No Prayer For The Dying",
        "albumId": 105,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Steve Harris",
        "milliseconds": 263941,
        "bytes": 4225024,
        "unitPrice": 0.99
    },
    {
        "name": "Public Enema Number One",
        "albumId": 105,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Bruce Dickinson/David Murray",
        "milliseconds": 254197,
        "bytes": 4071587,
        "unitPrice": 0.99
    },
    {
        "name": "Fates Warning",
        "albumId": 105,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "David Murray/Steve Harris",
        "milliseconds": 250853,
        "bytes": 4018088,
        "unitPrice": 0.99
    },
    {
        "name": "The Assassin",
        "albumId": 105,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Steve Harris",
        "milliseconds": 258768,
        "bytes": 4141056,
        "unitPrice": 0.99
    },
    {
        "name": "Run Silent Run Deep",
        "albumId": 105,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Bruce Dickinson/Steve Harris",
        "milliseconds": 275408,
        "bytes": 4407296,
        "unitPrice": 0.99
    },
    {
        "name": "Hooks In You",
        "albumId": 105,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Adrian Smith/Bruce Dickinson",
        "milliseconds": 247510,
        "bytes": 3960832,
        "unitPrice": 0.99
    },
    {
        "name": "Bring Your Daughter... ...To The Slaughter",
        "albumId": 105,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Bruce Dickinson",
        "milliseconds": 284238,
        "bytes": 4548608,
        "unitPrice": 0.99
    },
    {
        "name": "Mother Russia",
        "albumId": 105,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Steve Harris",
        "milliseconds": 332617,
        "bytes": 5322752,
        "unitPrice": 0.99
    },
    {
        "name": "Where Eagles Dare",
        "albumId": 106,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Steve Harris",
        "milliseconds": 369554,
        "bytes": 5914624,
        "unitPrice": 0.99
    },
    {
        "name": "Revelations",
        "albumId": 106,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Bruce Dickinson",
        "milliseconds": 408607,
        "bytes": 6539264,
        "unitPrice": 0.99
    },
    {
        "name": "Flight Of The Icarus",
        "albumId": 106,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Adrian Smith/Bruce Dickinson",
        "milliseconds": 230269,
        "bytes": 3686400,
        "unitPrice": 0.99
    },
    {
        "name": "Die With Your Boots On",
        "albumId": 106,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Adrian Smith/Bruce Dickinson/Steve Harris",
        "milliseconds": 325694,
        "bytes": 5212160,
        "unitPrice": 0.99
    },
    {
        "name": "The Trooper",
        "albumId": 106,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Steve Harris",
        "milliseconds": 251454,
        "bytes": 4024320,
        "unitPrice": 0.99
    },
    {
        "name": "Still Life",
        "albumId": 106,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "David Murray/Steve Harris",
        "milliseconds": 294347,
        "bytes": 4710400,
        "unitPrice": 0.99
    },
    {
        "name": "Quest For Fire",
        "albumId": 106,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Steve Harris",
        "milliseconds": 221309,
        "bytes": 3543040,
        "unitPrice": 0.99
    },
    {
        "name": "Sun And Steel",
        "albumId": 106,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Adrian Smith/Bruce Dickinson",
        "milliseconds": 206367,
        "bytes": 3306324,
        "unitPrice": 0.99
    },
    {
        "name": "To Tame A Land",
        "albumId": 106,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Steve Harris",
        "milliseconds": 445283,
        "bytes": 7129264,
        "unitPrice": 0.99
    },
    {
        "name": "Aces High",
        "albumId": 107,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Harris",
        "milliseconds": 269531,
        "bytes": 6472088,
        "unitPrice": 0.99
    },
    {
        "name": "2 Minutes To Midnight",
        "albumId": 107,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Smith/Dickinson",
        "milliseconds": 359810,
        "bytes": 8638809,
        "unitPrice": 0.99
    },
    {
        "name": "Losfer Words",
        "albumId": 107,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Steve Harris",
        "milliseconds": 252891,
        "bytes": 6074756,
        "unitPrice": 0.99
    },
    {
        "name": "Flash of The Blade",
        "albumId": 107,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Dickinson",
        "milliseconds": 242729,
        "bytes": 5828861,
        "unitPrice": 0.99
    },
    {
        "name": "Duelists",
        "albumId": 107,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Steve Harris",
        "milliseconds": 366471,
        "bytes": 8800686,
        "unitPrice": 0.99
    },
    {
        "name": "Back in the Village",
        "albumId": 107,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Dickinson/Smith",
        "milliseconds": 320548,
        "bytes": 7696518,
        "unitPrice": 0.99
    },
    {
        "name": "Powerslave",
        "albumId": 107,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Dickinson",
        "milliseconds": 407823,
        "bytes": 9791106,
        "unitPrice": 0.99
    },
    {
        "name": "Rime of the Ancient Mariner",
        "albumId": 107,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Harris",
        "milliseconds": 816509,
        "bytes": 19599577,
        "unitPrice": 0.99
    },
    {
        "name": "Intro",
        "albumId": 108,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": null,
        "milliseconds": 115931,
        "bytes": 4638848,
        "unitPrice": 0.99
    },
    {
        "name": "The Wicker Man",
        "albumId": 108,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Adrian Smith/Bruce Dickinson/Steve Harris",
        "milliseconds": 281782,
        "bytes": 11272320,
        "unitPrice": 0.99
    },
    {
        "name": "Ghost Of The Navigator",
        "albumId": 108,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Bruce Dickinson/Janick Gers/Steve Harris",
        "milliseconds": 408607,
        "bytes": 16345216,
        "unitPrice": 0.99
    },
    {
        "name": "Brave New World",
        "albumId": 108,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Bruce Dickinson/David Murray/Steve Harris",
        "milliseconds": 366785,
        "bytes": 14676148,
        "unitPrice": 0.99
    },
    {
        "name": "Wrathchild",
        "albumId": 108,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Steve Harris",
        "milliseconds": 185808,
        "bytes": 7434368,
        "unitPrice": 0.99
    },
    {
        "name": "2 Minutes To Midnight",
        "albumId": 108,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Adrian Smith/Bruce Dickinson",
        "milliseconds": 386821,
        "bytes": 15474816,
        "unitPrice": 0.99
    },
    {
        "name": "Blood Brothers",
        "albumId": 108,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Steve Harris",
        "milliseconds": 435513,
        "bytes": 17422464,
        "unitPrice": 0.99
    },
    {
        "name": "Sign Of The Cross",
        "albumId": 108,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Steve Harris",
        "milliseconds": 649116,
        "bytes": 25966720,
        "unitPrice": 0.99
    },
    {
        "name": "The Mercenary",
        "albumId": 108,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Janick Gers/Steve Harris",
        "milliseconds": 282697,
        "bytes": 11309184,
        "unitPrice": 0.99
    },
    {
        "name": "The Trooper",
        "albumId": 108,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Steve Harris",
        "milliseconds": 273528,
        "bytes": 10942592,
        "unitPrice": 0.99
    },
    {
        "name": "Dream Of Mirrors",
        "albumId": 109,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Janick Gers/Steve Harris",
        "milliseconds": 578324,
        "bytes": 23134336,
        "unitPrice": 0.99
    },
    {
        "name": "The Clansman",
        "albumId": 109,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Steve Harris",
        "milliseconds": 559203,
        "bytes": 22370432,
        "unitPrice": 0.99
    },
    {
        "name": "The Evil That Men Do",
        "albumId": 109,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Adrian Smith/Bruce Dickinson/Steve Harris",
        "milliseconds": 280737,
        "bytes": 11231360,
        "unitPrice": 0.99
    },
    {
        "name": "Fear Of The Dark",
        "albumId": 109,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Steve Harris",
        "milliseconds": 460695,
        "bytes": 18430080,
        "unitPrice": 0.99
    },
    {
        "name": "Iron Maiden",
        "albumId": 109,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Steve Harris",
        "milliseconds": 351869,
        "bytes": 14076032,
        "unitPrice": 0.99
    },
    {
        "name": "The Number Of The Beast",
        "albumId": 109,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Steve Harris",
        "milliseconds": 300434,
        "bytes": 12022107,
        "unitPrice": 0.99
    },
    {
        "name": "Hallowed Be Thy name",
        "albumId": 109,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Steve Harris",
        "milliseconds": 443977,
        "bytes": 17760384,
        "unitPrice": 0.99
    },
    {
        "name": "Sanctuary",
        "albumId": 109,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "David Murray/Paul Di'Anno/Steve Harris",
        "milliseconds": 317335,
        "bytes": 12695680,
        "unitPrice": 0.99
    },
    {
        "name": "Run To The Hills",
        "albumId": 109,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Steve Harris",
        "milliseconds": 292179,
        "bytes": 11688064,
        "unitPrice": 0.99
    },
    {
        "name": "Moonchild",
        "albumId": 110,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Adrian Smith; Bruce Dickinson",
        "milliseconds": 340767,
        "bytes": 8179151,
        "unitPrice": 0.99
    },
    {
        "name": "Infinite Dreams",
        "albumId": 110,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Steve Harris",
        "milliseconds": 369005,
        "bytes": 8858669,
        "unitPrice": 0.99
    },
    {
        "name": "Can I Play With Madness",
        "albumId": 110,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Adrian Smith; Bruce Dickinson; Steve Harris",
        "milliseconds": 211043,
        "bytes": 5067867,
        "unitPrice": 0.99
    },
    {
        "name": "The Evil That Men Do",
        "albumId": 110,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Adrian Smith; Bruce Dickinson; Steve Harris",
        "milliseconds": 273998,
        "bytes": 6578930,
        "unitPrice": 0.99
    },
    {
        "name": "Seventh Son of a Seventh Son",
        "albumId": 110,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Steve Harris",
        "milliseconds": 593580,
        "bytes": 14249000,
        "unitPrice": 0.99
    },
    {
        "name": "The Prophecy",
        "albumId": 110,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Dave Murray; Steve Harris",
        "milliseconds": 305475,
        "bytes": 7334450,
        "unitPrice": 0.99
    },
    {
        "name": "The Clairvoyant",
        "albumId": 110,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Adrian Smith; Bruce Dickinson; Steve Harris",
        "milliseconds": 267023,
        "bytes": 6411510,
        "unitPrice": 0.99
    },
    {
        "name": "Only the Good Die Young",
        "albumId": 110,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Bruce Dickinson; Harris",
        "milliseconds": 280894,
        "bytes": 6744431,
        "unitPrice": 0.99
    },
    {
        "name": "Caught Somewhere in Time",
        "albumId": 111,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Steve Harris",
        "milliseconds": 445779,
        "bytes": 10701149,
        "unitPrice": 0.99
    },
    {
        "name": "Wasted Years",
        "albumId": 111,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Adrian Smith",
        "milliseconds": 307565,
        "bytes": 7384358,
        "unitPrice": 0.99
    },
    {
        "name": "Sea of Madness",
        "albumId": 111,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Adrian Smith",
        "milliseconds": 341995,
        "bytes": 8210695,
        "unitPrice": 0.99
    },
    {
        "name": "Heaven Can Wait",
        "albumId": 111,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Steve Harris",
        "milliseconds": 441417,
        "bytes": 10596431,
        "unitPrice": 0.99
    },
    {
        "name": "Stranger in a Strange Land",
        "albumId": 111,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Adrian Smith",
        "milliseconds": 344502,
        "bytes": 8270899,
        "unitPrice": 0.99
    },
    {
        "name": "Alexander the Great",
        "albumId": 111,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Steve Harris",
        "milliseconds": 515631,
        "bytes": 12377742,
        "unitPrice": 0.99
    },
    {
        "name": "De Ja Vu",
        "albumId": 111,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "David Murray/Steve Harris",
        "milliseconds": 296176,
        "bytes": 7113035,
        "unitPrice": 0.99
    },
    {
        "name": "The Loneliness of the Long Dis",
        "albumId": 111,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Steve Harris",
        "milliseconds": 391314,
        "bytes": 9393598,
        "unitPrice": 0.99
    },
    {
        "name": "22 Acacia Avenue",
        "albumId": 112,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Adrian Smith/Steve Harris",
        "milliseconds": 395572,
        "bytes": 5542516,
        "unitPrice": 0.99
    },
    {
        "name": "Children of the Damned",
        "albumId": 112,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Steve Harris",
        "milliseconds": 274364,
        "bytes": 3845631,
        "unitPrice": 0.99
    },
    {
        "name": "Gangland",
        "albumId": 112,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Adrian Smith/Clive Burr/Steve Harris",
        "milliseconds": 228440,
        "bytes": 3202866,
        "unitPrice": 0.99
    },
    {
        "name": "Hallowed Be Thy name",
        "albumId": 112,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Steve Harris",
        "milliseconds": 428669,
        "bytes": 6006107,
        "unitPrice": 0.99
    },
    {
        "name": "Invaders",
        "albumId": 112,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Steve Harris",
        "milliseconds": 203180,
        "bytes": 2849181,
        "unitPrice": 0.99
    },
    {
        "name": "Run to the Hills",
        "albumId": 112,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Steve Harris",
        "milliseconds": 228884,
        "bytes": 3209124,
        "unitPrice": 0.99
    },
    {
        "name": "The Number Of The Beast",
        "albumId": 112,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Steve Harris",
        "milliseconds": 293407,
        "bytes": 11737216,
        "unitPrice": 0.99
    },
    {
        "name": "The Prisoner",
        "albumId": 112,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Adrian Smith/Steve Harris",
        "milliseconds": 361299,
        "bytes": 5062906,
        "unitPrice": 0.99
    },
    {
        "name": "Sign Of The Cross",
        "albumId": 113,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Steve Harris",
        "milliseconds": 678008,
        "bytes": 27121792,
        "unitPrice": 0.99
    },
    {
        "name": "Lord Of The Flies",
        "albumId": 113,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Janick Gers/Steve Harris",
        "milliseconds": 303699,
        "bytes": 12148864,
        "unitPrice": 0.99
    },
    {
        "name": "Man On The Edge",
        "albumId": 113,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Blaze Bayley/Janick Gers",
        "milliseconds": 253413,
        "bytes": 10137728,
        "unitPrice": 0.99
    },
    {
        "name": "Fortunes Of War",
        "albumId": 113,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Steve Harris",
        "milliseconds": 443977,
        "bytes": 17760384,
        "unitPrice": 0.99
    },
    {
        "name": "Look For The Truth",
        "albumId": 113,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Blaze Bayley/Janick Gers/Steve Harris",
        "milliseconds": 310230,
        "bytes": 12411008,
        "unitPrice": 0.99
    },
    {
        "name": "The Aftermath",
        "albumId": 113,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Blaze Bayley/Janick Gers/Steve Harris",
        "milliseconds": 380786,
        "bytes": 15233152,
        "unitPrice": 0.99
    },
    {
        "name": "Judgement Of Heaven",
        "albumId": 113,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Steve Harris",
        "milliseconds": 312476,
        "bytes": 12501120,
        "unitPrice": 0.99
    },
    {
        "name": "Blood On The World's Hands",
        "albumId": 113,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Steve Harris",
        "milliseconds": 357799,
        "bytes": 14313600,
        "unitPrice": 0.99
    },
    {
        "name": "The Edge Of Darkness",
        "albumId": 113,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Blaze Bayley/Janick Gers/Steve Harris",
        "milliseconds": 399333,
        "bytes": 15974528,
        "unitPrice": 0.99
    },
    {
        "name": "2 A.M.",
        "albumId": 113,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Blaze Bayley/Janick Gers/Steve Harris",
        "milliseconds": 337658,
        "bytes": 13511087,
        "unitPrice": 0.99
    },
    {
        "name": "The Unbeliever",
        "albumId": 113,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Janick Gers/Steve Harris",
        "milliseconds": 490422,
        "bytes": 19617920,
        "unitPrice": 0.99
    },
    {
        "name": "Futureal",
        "albumId": 114,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Blaze Bayley/Steve Harris",
        "milliseconds": 175777,
        "bytes": 7032960,
        "unitPrice": 0.99
    },
    {
        "name": "The Angel And The Gambler",
        "albumId": 114,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Steve Harris",
        "milliseconds": 592744,
        "bytes": 23711872,
        "unitPrice": 0.99
    },
    {
        "name": "Lightning Strikes Twice",
        "albumId": 114,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "David Murray/Steve Harris",
        "milliseconds": 290377,
        "bytes": 11616384,
        "unitPrice": 0.99
    },
    {
        "name": "The Clansman",
        "albumId": 114,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Steve Harris",
        "milliseconds": 539689,
        "bytes": 21592327,
        "unitPrice": 0.99
    },
    {
        "name": "When Two Worlds Collide",
        "albumId": 114,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Blaze Bayley/David Murray/Steve Harris",
        "milliseconds": 377312,
        "bytes": 15093888,
        "unitPrice": 0.99
    },
    {
        "name": "The Educated Fool",
        "albumId": 114,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Steve Harris",
        "milliseconds": 404767,
        "bytes": 16191616,
        "unitPrice": 0.99
    },
    {
        "name": "Don't Look To The Eyes Of A Stranger",
        "albumId": 114,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Steve Harris",
        "milliseconds": 483657,
        "bytes": 19347584,
        "unitPrice": 0.99
    },
    {
        "name": "Como Estais Amigos",
        "albumId": 114,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Blaze Bayley/Janick Gers",
        "milliseconds": 330292,
        "bytes": 13213824,
        "unitPrice": 0.99
    },
    {
        "name": "Please Please Please",
        "albumId": 115,
        "mediaTypeId": 1,
        "genreId": 14,
        "composer": "James Brown/Johnny Terry",
        "milliseconds": 165067,
        "bytes": 5394585,
        "unitPrice": 0.99
    },
    {
        "name": "Think",
        "albumId": 115,
        "mediaTypeId": 1,
        "genreId": 14,
        "composer": "Lowman Pauling",
        "milliseconds": 166739,
        "bytes": 5513208,
        "unitPrice": 0.99
    },
    {
        "name": "Night Train",
        "albumId": 115,
        "mediaTypeId": 1,
        "genreId": 14,
        "composer": "Jimmy Forrest/Lewis C. Simpkins/Oscar Washington",
        "milliseconds": 212401,
        "bytes": 7027377,
        "unitPrice": 0.99
    },
    {
        "name": "Out Of Sight",
        "albumId": 115,
        "mediaTypeId": 1,
        "genreId": 14,
        "composer": "Ted Wright",
        "milliseconds": 143725,
        "bytes": 4711323,
        "unitPrice": 0.99
    },
    {
        "name": "Papa's Got A Brand New Bag Pt.1",
        "albumId": 115,
        "mediaTypeId": 1,
        "genreId": 14,
        "composer": "James Brown",
        "milliseconds": 127399,
        "bytes": 4174420,
        "unitPrice": 0.99
    },
    {
        "name": "I Got You (I Feel Good)",
        "albumId": 115,
        "mediaTypeId": 1,
        "genreId": 14,
        "composer": "James Brown",
        "milliseconds": 167392,
        "bytes": 5468472,
        "unitPrice": 0.99
    },
    {
        "name": "It's A Man's Man's Man's World",
        "albumId": 115,
        "mediaTypeId": 1,
        "genreId": 14,
        "composer": "Betty Newsome/James Brown",
        "milliseconds": 168228,
        "bytes": 5541611,
        "unitPrice": 0.99
    },
    {
        "name": "Cold Sweat",
        "albumId": 115,
        "mediaTypeId": 1,
        "genreId": 14,
        "composer": "Alfred Ellis/James Brown",
        "milliseconds": 172408,
        "bytes": 5643213,
        "unitPrice": 0.99
    },
    {
        "name": "Say It Loud, I'm Black And I'm Proud Pt.1",
        "albumId": 115,
        "mediaTypeId": 1,
        "genreId": 14,
        "composer": "Alfred Ellis/James Brown",
        "milliseconds": 167392,
        "bytes": 5478117,
        "unitPrice": 0.99
    },
    {
        "name": "Get Up (I Feel Like Being A) Sex Machine",
        "albumId": 115,
        "mediaTypeId": 1,
        "genreId": 14,
        "composer": "Bobby Byrd/James Brown/Ron Lenhoff",
        "milliseconds": 316551,
        "bytes": 10498031,
        "unitPrice": 0.99
    },
    {
        "name": "Hey America",
        "albumId": 115,
        "mediaTypeId": 1,
        "genreId": 14,
        "composer": "Addie William Jones/Nat Jones",
        "milliseconds": 218226,
        "bytes": 7187857,
        "unitPrice": 0.99
    },
    {
        "name": "Make It Funky Pt.1",
        "albumId": 115,
        "mediaTypeId": 1,
        "genreId": 14,
        "composer": "Charles Bobbitt/James Brown",
        "milliseconds": 196231,
        "bytes": 6507782,
        "unitPrice": 0.99
    },
    {
        "name": "I'm A Greedy Man Pt.1",
        "albumId": 115,
        "mediaTypeId": 1,
        "genreId": 14,
        "composer": "Charles Bobbitt/James Brown",
        "milliseconds": 217730,
        "bytes": 7251211,
        "unitPrice": 0.99
    },
    {
        "name": "Get On The Good Foot",
        "albumId": 115,
        "mediaTypeId": 1,
        "genreId": 14,
        "composer": "Fred Wesley/James Brown/Joseph Mims",
        "milliseconds": 215902,
        "bytes": 7182736,
        "unitPrice": 0.99
    },
    {
        "name": "Get Up Offa That Thing",
        "albumId": 115,
        "mediaTypeId": 1,
        "genreId": 14,
        "composer": "Deanna Brown/Deidra Jenkins/Yamma Brown",
        "milliseconds": 250723,
        "bytes": 8355989,
        "unitPrice": 0.99
    },
    {
        "name": "It's Too Funky In Here",
        "albumId": 115,
        "mediaTypeId": 1,
        "genreId": 14,
        "composer": "Brad Shapiro/George Jackson/Robert Miller/Walter Shaw",
        "milliseconds": 239072,
        "bytes": 7973979,
        "unitPrice": 0.99
    },
    {
        "name": "Living In America",
        "albumId": 115,
        "mediaTypeId": 1,
        "genreId": 14,
        "composer": "Charlie Midnight/Dan Hartman",
        "milliseconds": 282880,
        "bytes": 9432346,
        "unitPrice": 0.99
    },
    {
        "name": "I'm Real",
        "albumId": 115,
        "mediaTypeId": 1,
        "genreId": 14,
        "composer": "Full Force/James Brown",
        "milliseconds": 334236,
        "bytes": 11183457,
        "unitPrice": 0.99
    },
    {
        "name": "Hot Pants Pt.1",
        "albumId": 115,
        "mediaTypeId": 1,
        "genreId": 14,
        "composer": "Fred Wesley/James Brown",
        "milliseconds": 188212,
        "bytes": 6295110,
        "unitPrice": 0.99
    },
    {
        "name": "Soul Power (Live)",
        "albumId": 115,
        "mediaTypeId": 1,
        "genreId": 14,
        "composer": "James Brown",
        "milliseconds": 260728,
        "bytes": 8593206,
        "unitPrice": 0.99
    },
    {
        "name": "When You Gonna Learn (Digeridoo)",
        "albumId": 116,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jay Kay/Kay, Jay",
        "milliseconds": 230635,
        "bytes": 7655482,
        "unitPrice": 0.99
    },
    {
        "name": "Too Young To Die",
        "albumId": 116,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Smith, Toby",
        "milliseconds": 365818,
        "bytes": 12391660,
        "unitPrice": 0.99
    },
    {
        "name": "Hooked Up",
        "albumId": 116,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Smith, Toby",
        "milliseconds": 275879,
        "bytes": 9301687,
        "unitPrice": 0.99
    },
    {
        "name": "If I Like It, I Do It",
        "albumId": 116,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Gelder, Nick van",
        "milliseconds": 293093,
        "bytes": 9848207,
        "unitPrice": 0.99
    },
    {
        "name": "Music Of The Wind",
        "albumId": 116,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Smith, Toby",
        "milliseconds": 383033,
        "bytes": 12870239,
        "unitPrice": 0.99
    },
    {
        "name": "Emergency On Planet Earth",
        "albumId": 116,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Smith, Toby",
        "milliseconds": 245263,
        "bytes": 8117218,
        "unitPrice": 0.99
    },
    {
        "name": "Whatever It Is, I Just Can't Stop",
        "albumId": 116,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jay Kay/Kay, Jay",
        "milliseconds": 247222,
        "bytes": 8249453,
        "unitPrice": 0.99
    },
    {
        "name": "Blow Your Mind",
        "albumId": 116,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Smith, Toby",
        "milliseconds": 512339,
        "bytes": 17089176,
        "unitPrice": 0.99
    },
    {
        "name": "Revolution 1993",
        "albumId": 116,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Smith, Toby",
        "milliseconds": 616829,
        "bytes": 20816872,
        "unitPrice": 0.99
    },
    {
        "name": "Didgin' Out",
        "albumId": 116,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Buchanan, Wallis",
        "milliseconds": 157100,
        "bytes": 5263555,
        "unitPrice": 0.99
    },
    {
        "name": "Canned Heat",
        "albumId": 117,
        "mediaTypeId": 1,
        "genreId": 14,
        "composer": "Jay Kay",
        "milliseconds": 331964,
        "bytes": 11042037,
        "unitPrice": 0.99
    },
    {
        "name": "Planet Home",
        "albumId": 117,
        "mediaTypeId": 1,
        "genreId": 14,
        "composer": "Jay Kay/Toby Smith",
        "milliseconds": 284447,
        "bytes": 9566237,
        "unitPrice": 0.99
    },
    {
        "name": "Black Capricorn Day",
        "albumId": 117,
        "mediaTypeId": 1,
        "genreId": 14,
        "composer": "Jay Kay",
        "milliseconds": 341629,
        "bytes": 11477231,
        "unitPrice": 0.99
    },
    {
        "name": "Soul Education",
        "albumId": 117,
        "mediaTypeId": 1,
        "genreId": 14,
        "composer": "Jay Kay/Toby Smith",
        "milliseconds": 255477,
        "bytes": 8575435,
        "unitPrice": 0.99
    },
    {
        "name": "Failling",
        "albumId": 117,
        "mediaTypeId": 1,
        "genreId": 14,
        "composer": "Jay Kay/Toby Smith",
        "milliseconds": 225227,
        "bytes": 7503999,
        "unitPrice": 0.99
    },
    {
        "name": "Destitute Illusions",
        "albumId": 117,
        "mediaTypeId": 1,
        "genreId": 14,
        "composer": "Derrick McKenzie/Jay Kay/Toby Smith",
        "milliseconds": 340218,
        "bytes": 11452651,
        "unitPrice": 0.99
    },
    {
        "name": "Supersonic",
        "albumId": 117,
        "mediaTypeId": 1,
        "genreId": 14,
        "composer": "Jay Kay",
        "milliseconds": 315872,
        "bytes": 10699265,
        "unitPrice": 0.99
    },
    {
        "name": "Butterfly",
        "albumId": 117,
        "mediaTypeId": 1,
        "genreId": 14,
        "composer": "Jay Kay/Toby Smith",
        "milliseconds": 268852,
        "bytes": 8947356,
        "unitPrice": 0.99
    },
    {
        "name": "Were Do We Go From Here",
        "albumId": 117,
        "mediaTypeId": 1,
        "genreId": 14,
        "composer": "Jay Kay",
        "milliseconds": 313626,
        "bytes": 10504158,
        "unitPrice": 0.99
    },
    {
        "name": "King For A Day",
        "albumId": 117,
        "mediaTypeId": 1,
        "genreId": 14,
        "composer": "Jay Kay/Toby Smith",
        "milliseconds": 221544,
        "bytes": 7335693,
        "unitPrice": 0.99
    },
    {
        "name": "Deeper Underground",
        "albumId": 117,
        "mediaTypeId": 1,
        "genreId": 14,
        "composer": "Toby Smith",
        "milliseconds": 281808,
        "bytes": 9351277,
        "unitPrice": 0.99
    },
    {
        "name": "Just Another Story",
        "albumId": 118,
        "mediaTypeId": 1,
        "genreId": 15,
        "composer": "Toby Smith",
        "milliseconds": 529684,
        "bytes": 17582818,
        "unitPrice": 0.99
    },
    {
        "name": "Stillness In Time",
        "albumId": 118,
        "mediaTypeId": 1,
        "genreId": 15,
        "composer": "Toby Smith",
        "milliseconds": 257097,
        "bytes": 8644290,
        "unitPrice": 0.99
    },
    {
        "name": "Half The Man",
        "albumId": 118,
        "mediaTypeId": 1,
        "genreId": 15,
        "composer": "Toby Smith",
        "milliseconds": 289854,
        "bytes": 9577679,
        "unitPrice": 0.99
    },
    {
        "name": "Light Years",
        "albumId": 118,
        "mediaTypeId": 1,
        "genreId": 15,
        "composer": "Toby Smith",
        "milliseconds": 354560,
        "bytes": 11796244,
        "unitPrice": 0.99
    },
    {
        "name": "Manifest Destiny",
        "albumId": 118,
        "mediaTypeId": 1,
        "genreId": 15,
        "composer": "Toby Smith",
        "milliseconds": 382197,
        "bytes": 12676962,
        "unitPrice": 0.99
    },
    {
        "name": "The Kids",
        "albumId": 118,
        "mediaTypeId": 1,
        "genreId": 15,
        "composer": "Toby Smith",
        "milliseconds": 309995,
        "bytes": 10334529,
        "unitPrice": 0.99
    },
    {
        "name": "Mr. Moon",
        "albumId": 118,
        "mediaTypeId": 1,
        "genreId": 15,
        "composer": "Stuard Zender/Toby Smith",
        "milliseconds": 329534,
        "bytes": 11043559,
        "unitPrice": 0.99
    },
    {
        "name": "Scam",
        "albumId": 118,
        "mediaTypeId": 1,
        "genreId": 15,
        "composer": "Stuart Zender",
        "milliseconds": 422321,
        "bytes": 14019705,
        "unitPrice": 0.99
    },
    {
        "name": "Journey To Arnhemland",
        "albumId": 118,
        "mediaTypeId": 1,
        "genreId": 15,
        "composer": "Toby Smith/Wallis Buchanan",
        "milliseconds": 322455,
        "bytes": 10843832,
        "unitPrice": 0.99
    },
    {
        "name": "Morning Glory",
        "albumId": 118,
        "mediaTypeId": 1,
        "genreId": 15,
        "composer": "J. Kay/Jay Kay",
        "milliseconds": 384130,
        "bytes": 12777210,
        "unitPrice": 0.99
    },
    {
        "name": "Space Cowboy",
        "albumId": 118,
        "mediaTypeId": 1,
        "genreId": 15,
        "composer": "J. Kay/Jay Kay",
        "milliseconds": 385697,
        "bytes": 12906520,
        "unitPrice": 0.99
    },
    {
        "name": "Last Chance",
        "albumId": 119,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "C. Cester/C. Muncey",
        "milliseconds": 112352,
        "bytes": 3683130,
        "unitPrice": 0.99
    },
    {
        "name": "Are You Gonna Be My Girl",
        "albumId": 119,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "C. Muncey/N. Cester",
        "milliseconds": 213890,
        "bytes": 6992324,
        "unitPrice": 0.99
    },
    {
        "name": "Rollover D.J.",
        "albumId": 119,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "C. Cester/N. Cester",
        "milliseconds": 196702,
        "bytes": 6406517,
        "unitPrice": 0.99
    },
    {
        "name": "Look What You've Done",
        "albumId": 119,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "N. Cester",
        "milliseconds": 230974,
        "bytes": 7517083,
        "unitPrice": 0.99
    },
    {
        "name": "Get What You Need",
        "albumId": 119,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "C. Cester/C. Muncey/N. Cester",
        "milliseconds": 247719,
        "bytes": 8043765,
        "unitPrice": 0.99
    },
    {
        "name": "Move On",
        "albumId": 119,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "C. Cester/N. Cester",
        "milliseconds": 260623,
        "bytes": 8519353,
        "unitPrice": 0.99
    },
    {
        "name": "Radio Song",
        "albumId": 119,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "C. Cester/C. Muncey/N. Cester",
        "milliseconds": 272117,
        "bytes": 8871509,
        "unitPrice": 0.99
    },
    {
        "name": "Get Me Outta Here",
        "albumId": 119,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "C. Cester/N. Cester",
        "milliseconds": 176274,
        "bytes": 5729098,
        "unitPrice": 0.99
    },
    {
        "name": "Cold Hard Bitch",
        "albumId": 119,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "C. Cester/C. Muncey/N. Cester",
        "milliseconds": 243278,
        "bytes": 7929610,
        "unitPrice": 0.99
    },
    {
        "name": "Come Around Again",
        "albumId": 119,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "C. Muncey/N. Cester",
        "milliseconds": 270497,
        "bytes": 8872405,
        "unitPrice": 0.99
    },
    {
        "name": "Take It Or Leave It",
        "albumId": 119,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "C. Muncey/N. Cester",
        "milliseconds": 142889,
        "bytes": 4643370,
        "unitPrice": 0.99
    },
    {
        "name": "Lazy Gun",
        "albumId": 119,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "C. Cester/N. Cester",
        "milliseconds": 282174,
        "bytes": 9186285,
        "unitPrice": 0.99
    },
    {
        "name": "Timothy",
        "albumId": 119,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "C. Cester",
        "milliseconds": 270341,
        "bytes": 8856507,
        "unitPrice": 0.99
    },
    {
        "name": "Foxy Lady",
        "albumId": 120,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimi Hendrix",
        "milliseconds": 199340,
        "bytes": 6480896,
        "unitPrice": 0.99
    },
    {
        "name": "Manic Depression",
        "albumId": 120,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimi Hendrix",
        "milliseconds": 222302,
        "bytes": 7289272,
        "unitPrice": 0.99
    },
    {
        "name": "Red House",
        "albumId": 120,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimi Hendrix",
        "milliseconds": 224130,
        "bytes": 7285851,
        "unitPrice": 0.99
    },
    {
        "name": "Can You See Me",
        "albumId": 120,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimi Hendrix",
        "milliseconds": 153077,
        "bytes": 4987068,
        "unitPrice": 0.99
    },
    {
        "name": "Love Or Confusion",
        "albumId": 120,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimi Hendrix",
        "milliseconds": 193123,
        "bytes": 6329408,
        "unitPrice": 0.99
    },
    {
        "name": "I Don't Live Today",
        "albumId": 120,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimi Hendrix",
        "milliseconds": 235311,
        "bytes": 7661214,
        "unitPrice": 0.99
    },
    {
        "name": "May This Be Love",
        "albumId": 120,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimi Hendrix",
        "milliseconds": 191216,
        "bytes": 6240028,
        "unitPrice": 0.99
    },
    {
        "name": "Fire",
        "albumId": 120,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimi Hendrix",
        "milliseconds": 164989,
        "bytes": 5383075,
        "unitPrice": 0.99
    },
    {
        "name": "Third Stone From The Sun",
        "albumId": 120,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimi Hendrix",
        "milliseconds": 404453,
        "bytes": 13186975,
        "unitPrice": 0.99
    },
    {
        "name": "Remember",
        "albumId": 120,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimi Hendrix",
        "milliseconds": 168150,
        "bytes": 5509613,
        "unitPrice": 0.99
    },
    {
        "name": "Are You Experienced?",
        "albumId": 120,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimi Hendrix",
        "milliseconds": 254537,
        "bytes": 8292497,
        "unitPrice": 0.99
    },
    {
        "name": "Hey Joe",
        "albumId": 120,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Billy Roberts",
        "milliseconds": 210259,
        "bytes": 6870054,
        "unitPrice": 0.99
    },
    {
        "name": "Stone Free",
        "albumId": 120,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimi Hendrix",
        "milliseconds": 216293,
        "bytes": 7002331,
        "unitPrice": 0.99
    },
    {
        "name": "Purple Haze",
        "albumId": 120,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimi Hendrix",
        "milliseconds": 171572,
        "bytes": 5597056,
        "unitPrice": 0.99
    },
    {
        "name": "51st Anniversary",
        "albumId": 120,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimi Hendrix",
        "milliseconds": 196388,
        "bytes": 6398044,
        "unitPrice": 0.99
    },
    {
        "name": "The Wind Cries Mary",
        "albumId": 120,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimi Hendrix",
        "milliseconds": 200463,
        "bytes": 6540638,
        "unitPrice": 0.99
    },
    {
        "name": "Highway Chile",
        "albumId": 120,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimi Hendrix",
        "milliseconds": 212453,
        "bytes": 6887949,
        "unitPrice": 0.99
    },
    {
        "name": "Surfing with the Alien",
        "albumId": 121,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 263707,
        "bytes": 4418504,
        "unitPrice": 0.99
    },
    {
        "name": "Ice 9",
        "albumId": 121,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 239721,
        "bytes": 4036215,
        "unitPrice": 0.99
    },
    {
        "name": "Crushing Day",
        "albumId": 121,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 314768,
        "bytes": 5232158,
        "unitPrice": 0.99
    },
    {
        "name": "Always With Me, Always With You",
        "albumId": 121,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 202035,
        "bytes": 3435777,
        "unitPrice": 0.99
    },
    {
        "name": "Satch Boogie",
        "albumId": 121,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 193560,
        "bytes": 3300654,
        "unitPrice": 0.99
    },
    {
        "name": "Hill of the Skull",
        "albumId": 121,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": "J. Satriani",
        "milliseconds": 108435,
        "bytes": 1944738,
        "unitPrice": 0.99
    },
    {
        "name": "Circles",
        "albumId": 121,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 209071,
        "bytes": 3548553,
        "unitPrice": 0.99
    },
    {
        "name": "Lords of Karma",
        "albumId": 121,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": "J. Satriani",
        "milliseconds": 288227,
        "bytes": 4809279,
        "unitPrice": 0.99
    },
    {
        "name": "Midnight",
        "albumId": 121,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": "J. Satriani",
        "milliseconds": 102630,
        "bytes": 1851753,
        "unitPrice": 0.99
    },
    {
        "name": "Echo",
        "albumId": 121,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": "J. Satriani",
        "milliseconds": 337570,
        "bytes": 5595557,
        "unitPrice": 0.99
    },
    {
        "name": "Engenho De Dentro",
        "albumId": 122,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 310073,
        "bytes": 10211473,
        "unitPrice": 0.99
    },
    {
        "name": "Alcohol",
        "albumId": 122,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 355239,
        "bytes": 12010478,
        "unitPrice": 0.99
    },
    {
        "name": "Mama Africa",
        "albumId": 122,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 283062,
        "bytes": 9488316,
        "unitPrice": 0.99
    },
    {
        "name": "Salve Simpatia",
        "albumId": 122,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 343484,
        "bytes": 11314756,
        "unitPrice": 0.99
    },
    {
        "name": "W/Brasil (Chama O Síndico)",
        "albumId": 122,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 317100,
        "bytes": 10599953,
        "unitPrice": 0.99
    },
    {
        "name": "País Tropical",
        "albumId": 122,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 452519,
        "bytes": 14946972,
        "unitPrice": 0.99
    },
    {
        "name": "Os Alquimistas Estão Chegando",
        "albumId": 122,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 367281,
        "bytes": 12304520,
        "unitPrice": 0.99
    },
    {
        "name": "Charles Anjo 45",
        "albumId": 122,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 389276,
        "bytes": 13022833,
        "unitPrice": 0.99
    },
    {
        "name": "Selassiê",
        "albumId": 122,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 326321,
        "bytes": 10724982,
        "unitPrice": 0.99
    },
    {
        "name": "Menina Sarará",
        "albumId": 122,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 191477,
        "bytes": 6393818,
        "unitPrice": 0.99
    },
    {
        "name": "Que Maravilha",
        "albumId": 122,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 338076,
        "bytes": 10996656,
        "unitPrice": 0.99
    },
    {
        "name": "Santa Clara Clareou",
        "albumId": 122,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 380081,
        "bytes": 12524725,
        "unitPrice": 0.99
    },
    {
        "name": "Filho Maravilha",
        "albumId": 122,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 227526,
        "bytes": 7498259,
        "unitPrice": 0.99
    },
    {
        "name": "Taj Mahal",
        "albumId": 122,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 289750,
        "bytes": 9502898,
        "unitPrice": 0.99
    },
    {
        "name": "Rapidamente",
        "albumId": 123,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 252238,
        "bytes": 8470107,
        "unitPrice": 0.99
    },
    {
        "name": "As Dores do Mundo",
        "albumId": 123,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Hyldon",
        "milliseconds": 255477,
        "bytes": 8537092,
        "unitPrice": 0.99
    },
    {
        "name": "Vou Pra Ai",
        "albumId": 123,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 300878,
        "bytes": 10053718,
        "unitPrice": 0.99
    },
    {
        "name": "My Brother",
        "albumId": 123,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 253231,
        "bytes": 8431821,
        "unitPrice": 0.99
    },
    {
        "name": "Há Quanto Tempo",
        "albumId": 123,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 270027,
        "bytes": 9004470,
        "unitPrice": 0.99
    },
    {
        "name": "Vício",
        "albumId": 123,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 269897,
        "bytes": 8887216,
        "unitPrice": 0.99
    },
    {
        "name": "Encontrar Alguém",
        "albumId": 123,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Marco Tulio Lara/Rogerio Flausino",
        "milliseconds": 224078,
        "bytes": 7437935,
        "unitPrice": 0.99
    },
    {
        "name": "Dance Enquanto é Tempo",
        "albumId": 123,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 229093,
        "bytes": 7583799,
        "unitPrice": 0.99
    },
    {
        "name": "A Tarde",
        "albumId": 123,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 266919,
        "bytes": 8836127,
        "unitPrice": 0.99
    },
    {
        "name": "Always Be All Right",
        "albumId": 123,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 128078,
        "bytes": 4299676,
        "unitPrice": 0.99
    },
    {
        "name": "Sem Sentido",
        "albumId": 123,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 250462,
        "bytes": 8292108,
        "unitPrice": 0.99
    },
    {
        "name": "Onibusfobia",
        "albumId": 123,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 315977,
        "bytes": 10474904,
        "unitPrice": 0.99
    },
    {
        "name": "Pura Elegancia",
        "albumId": 124,
        "mediaTypeId": 1,
        "genreId": 16,
        "composer": "João Suplicy",
        "milliseconds": 284107,
        "bytes": 9632269,
        "unitPrice": 0.99
    },
    {
        "name": "Choramingando",
        "albumId": 124,
        "mediaTypeId": 1,
        "genreId": 16,
        "composer": "João Suplicy",
        "milliseconds": 190484,
        "bytes": 6400532,
        "unitPrice": 0.99
    },
    {
        "name": "Por Merecer",
        "albumId": 124,
        "mediaTypeId": 1,
        "genreId": 16,
        "composer": "João Suplicy",
        "milliseconds": 230582,
        "bytes": 7764601,
        "unitPrice": 0.99
    },
    {
        "name": "No Futuro",
        "albumId": 124,
        "mediaTypeId": 1,
        "genreId": 16,
        "composer": "João Suplicy",
        "milliseconds": 182308,
        "bytes": 6056200,
        "unitPrice": 0.99
    },
    {
        "name": "Voce Inteira",
        "albumId": 124,
        "mediaTypeId": 1,
        "genreId": 16,
        "composer": "João Suplicy",
        "milliseconds": 241084,
        "bytes": 8077282,
        "unitPrice": 0.99
    },
    {
        "name": "Cuando A Noite Vai Chegando",
        "albumId": 124,
        "mediaTypeId": 1,
        "genreId": 16,
        "composer": "João Suplicy",
        "milliseconds": 270628,
        "bytes": 9081874,
        "unitPrice": 0.99
    },
    {
        "name": "Naquele Dia",
        "albumId": 124,
        "mediaTypeId": 1,
        "genreId": 16,
        "composer": "João Suplicy",
        "milliseconds": 251768,
        "bytes": 8452654,
        "unitPrice": 0.99
    },
    {
        "name": "Equinocio",
        "albumId": 124,
        "mediaTypeId": 1,
        "genreId": 16,
        "composer": "João Suplicy",
        "milliseconds": 269008,
        "bytes": 8871455,
        "unitPrice": 0.99
    },
    {
        "name": "Papelão",
        "albumId": 124,
        "mediaTypeId": 1,
        "genreId": 16,
        "composer": "João Suplicy",
        "milliseconds": 213263,
        "bytes": 7257390,
        "unitPrice": 0.99
    },
    {
        "name": "Cuando Eu For Pro Ceu",
        "albumId": 124,
        "mediaTypeId": 1,
        "genreId": 16,
        "composer": "João Suplicy",
        "milliseconds": 118804,
        "bytes": 3948371,
        "unitPrice": 0.99
    },
    {
        "name": "Do Nosso Amor",
        "albumId": 124,
        "mediaTypeId": 1,
        "genreId": 16,
        "composer": "João Suplicy",
        "milliseconds": 203415,
        "bytes": 6774566,
        "unitPrice": 0.99
    },
    {
        "name": "Borogodo",
        "albumId": 124,
        "mediaTypeId": 1,
        "genreId": 16,
        "composer": "João Suplicy",
        "milliseconds": 208457,
        "bytes": 7104588,
        "unitPrice": 0.99
    },
    {
        "name": "Cafezinho",
        "albumId": 124,
        "mediaTypeId": 1,
        "genreId": 16,
        "composer": "João Suplicy",
        "milliseconds": 180924,
        "bytes": 6031174,
        "unitPrice": 0.99
    },
    {
        "name": "Enquanto O Dia Não Vem",
        "albumId": 124,
        "mediaTypeId": 1,
        "genreId": 16,
        "composer": "João Suplicy",
        "milliseconds": 220891,
        "bytes": 7248336,
        "unitPrice": 0.99
    },
    {
        "name": "The Green Manalishi",
        "albumId": 125,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": null,
        "milliseconds": 205792,
        "bytes": 6720789,
        "unitPrice": 0.99
    },
    {
        "name": "Living After Midnight",
        "albumId": 125,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": null,
        "milliseconds": 213289,
        "bytes": 7056785,
        "unitPrice": 0.99
    },
    {
        "name": "Breaking The Law (Live)",
        "albumId": 125,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": null,
        "milliseconds": 144195,
        "bytes": 4728246,
        "unitPrice": 0.99
    },
    {
        "name": "Hot Rockin'",
        "albumId": 125,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": null,
        "milliseconds": 197328,
        "bytes": 6509179,
        "unitPrice": 0.99
    },
    {
        "name": "Heading Out To The Highway (Live)",
        "albumId": 125,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": null,
        "milliseconds": 276427,
        "bytes": 9006022,
        "unitPrice": 0.99
    },
    {
        "name": "The Hellion",
        "albumId": 125,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": null,
        "milliseconds": 41900,
        "bytes": 1351993,
        "unitPrice": 0.99
    },
    {
        "name": "Electric Eye",
        "albumId": 125,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": null,
        "milliseconds": 222197,
        "bytes": 7231368,
        "unitPrice": 0.99
    },
    {
        "name": "You've Got Another Thing Comin'",
        "albumId": 125,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": null,
        "milliseconds": 305162,
        "bytes": 9962558,
        "unitPrice": 0.99
    },
    {
        "name": "Turbo Lover",
        "albumId": 125,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": null,
        "milliseconds": 335542,
        "bytes": 11068866,
        "unitPrice": 0.99
    },
    {
        "name": "Freewheel Burning",
        "albumId": 125,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": null,
        "milliseconds": 265952,
        "bytes": 8713599,
        "unitPrice": 0.99
    },
    {
        "name": "Some Heads Are Gonna Roll",
        "albumId": 125,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": null,
        "milliseconds": 249939,
        "bytes": 8198617,
        "unitPrice": 0.99
    },
    {
        "name": "Metal Meltdown",
        "albumId": 125,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": null,
        "milliseconds": 290664,
        "bytes": 9390646,
        "unitPrice": 0.99
    },
    {
        "name": "Ram It Down",
        "albumId": 125,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": null,
        "milliseconds": 292179,
        "bytes": 9554023,
        "unitPrice": 0.99
    },
    {
        "name": "Diamonds And Rust (Live)",
        "albumId": 125,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": null,
        "milliseconds": 219350,
        "bytes": 7163147,
        "unitPrice": 0.99
    },
    {
        "name": "Victim Of Change (Live)",
        "albumId": 125,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": null,
        "milliseconds": 430942,
        "bytes": 14067512,
        "unitPrice": 0.99
    },
    {
        "name": "Tyrant (Live)",
        "albumId": 125,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": null,
        "milliseconds": 282253,
        "bytes": 9190536,
        "unitPrice": 0.99
    },
    {
        "name": "Comin' Home",
        "albumId": 126,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Paul Stanley, Ace Frehley",
        "milliseconds": 172068,
        "bytes": 5661120,
        "unitPrice": 0.99
    },
    {
        "name": "Plaster Caster",
        "albumId": 126,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Gene Simmons",
        "milliseconds": 198060,
        "bytes": 6528719,
        "unitPrice": 0.99
    },
    {
        "name": "Goin' Blind",
        "albumId": 126,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Gene Simmons, Stephen Coronel",
        "milliseconds": 217652,
        "bytes": 7167523,
        "unitPrice": 0.99
    },
    {
        "name": "Do You Love Me",
        "albumId": 126,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Paul Stanley, Bob Ezrin, Kim Fowley",
        "milliseconds": 193619,
        "bytes": 6343111,
        "unitPrice": 0.99
    },
    {
        "name": "Domino",
        "albumId": 126,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Gene Simmons",
        "milliseconds": 226377,
        "bytes": 7488191,
        "unitPrice": 0.99
    },
    {
        "name": "Sure Know Something",
        "albumId": 126,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Paul Stanley, Vincent Poncia",
        "milliseconds": 254354,
        "bytes": 8375190,
        "unitPrice": 0.99
    },
    {
        "name": "A World Without Heroes",
        "albumId": 126,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Paul Stanley, Gene Simmons, Bob Ezrin, Lewis Reed",
        "milliseconds": 177815,
        "bytes": 5832524,
        "unitPrice": 0.99
    },
    {
        "name": "Rock Bottom",
        "albumId": 126,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Paul Stanley, Ace Frehley",
        "milliseconds": 200594,
        "bytes": 6560818,
        "unitPrice": 0.99
    },
    {
        "name": "See You Tonight",
        "albumId": 126,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Gene Simmons",
        "milliseconds": 146494,
        "bytes": 4817521,
        "unitPrice": 0.99
    },
    {
        "name": "I Still Love You",
        "albumId": 126,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Paul Stanley",
        "milliseconds": 369815,
        "bytes": 12086145,
        "unitPrice": 0.99
    },
    {
        "name": "Every Time I Look At You",
        "albumId": 126,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Paul Stanley, Vincent Cusano",
        "milliseconds": 283898,
        "bytes": 9290948,
        "unitPrice": 0.99
    },
    {
        "name": "2,000 Man",
        "albumId": 126,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Mick Jagger, Keith Richard",
        "milliseconds": 312450,
        "bytes": 10292829,
        "unitPrice": 0.99
    },
    {
        "name": "Beth",
        "albumId": 126,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Peter Criss, Stan Penridge, Bob Ezrin",
        "milliseconds": 170187,
        "bytes": 5577807,
        "unitPrice": 0.99
    },
    {
        "name": "Nothin' To Lose",
        "albumId": 126,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Gene Simmons",
        "milliseconds": 222354,
        "bytes": 7351460,
        "unitPrice": 0.99
    },
    {
        "name": "Rock And Roll All Nite",
        "albumId": 126,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Paul Stanley, Gene Simmons",
        "milliseconds": 259631,
        "bytes": 8549296,
        "unitPrice": 0.99
    },
    {
        "name": "Immigrant Song",
        "albumId": 127,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Robert Plant",
        "milliseconds": 201247,
        "bytes": 6457766,
        "unitPrice": 0.99
    },
    {
        "name": "Heartbreaker",
        "albumId": 127,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "John Bonham/John Paul Jones/Robert Plant",
        "milliseconds": 316081,
        "bytes": 10179657,
        "unitPrice": 0.99
    },
    {
        "name": "Since I've Been Loving You",
        "albumId": 127,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "John Paul Jones/Robert Plant",
        "milliseconds": 416365,
        "bytes": 13471959,
        "unitPrice": 0.99
    },
    {
        "name": "Black Dog",
        "albumId": 127,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "John Paul Jones/Robert Plant",
        "milliseconds": 317622,
        "bytes": 10267572,
        "unitPrice": 0.99
    },
    {
        "name": "Dazed And Confused",
        "albumId": 127,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page/Led Zeppelin",
        "milliseconds": 1116734,
        "bytes": 36052247,
        "unitPrice": 0.99
    },
    {
        "name": "Stairway To Heaven",
        "albumId": 127,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Robert Plant",
        "milliseconds": 529658,
        "bytes": 17050485,
        "unitPrice": 0.99
    },
    {
        "name": "Going To California",
        "albumId": 127,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Robert Plant",
        "milliseconds": 234605,
        "bytes": 7646749,
        "unitPrice": 0.99
    },
    {
        "name": "That's The Way",
        "albumId": 127,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Robert Plant",
        "milliseconds": 343431,
        "bytes": 11248455,
        "unitPrice": 0.99
    },
    {
        "name": "Whole Lotta Love (Medley)",
        "albumId": 127,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Arthur Crudup/Bernard Besman/Bukka White/Doc Pomus/John Bonham/John Lee Hooker/John Paul Jones/Mort Shuman/Robert Plant/Willie Dixon",
        "milliseconds": 825103,
        "bytes": 26742545,
        "unitPrice": 0.99
    },
    {
        "name": "Thank You",
        "albumId": 127,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Robert Plant",
        "milliseconds": 398262,
        "bytes": 12831826,
        "unitPrice": 0.99
    },
    {
        "name": "We're Gonna Groove",
        "albumId": 128,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Ben E.King/James Bethea",
        "milliseconds": 157570,
        "bytes": 5180975,
        "unitPrice": 0.99
    },
    {
        "name": "Poor Tom",
        "albumId": 128,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page/Robert Plant",
        "milliseconds": 182491,
        "bytes": 6016220,
        "unitPrice": 0.99
    },
    {
        "name": "I Can't Quit You Baby",
        "albumId": 128,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Willie Dixon",
        "milliseconds": 258168,
        "bytes": 8437098,
        "unitPrice": 0.99
    },
    {
        "name": "Walter's Walk",
        "albumId": 128,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page, Robert Plant",
        "milliseconds": 270785,
        "bytes": 8712499,
        "unitPrice": 0.99
    },
    {
        "name": "Ozone Baby",
        "albumId": 128,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page, Robert Plant",
        "milliseconds": 215954,
        "bytes": 7079588,
        "unitPrice": 0.99
    },
    {
        "name": "Darlene",
        "albumId": 128,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page, Robert Plant, John Bonham, John Paul Jones",
        "milliseconds": 307226,
        "bytes": 10078197,
        "unitPrice": 0.99
    },
    {
        "name": "Bonzo's Montreux",
        "albumId": 128,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "John Bonham",
        "milliseconds": 258925,
        "bytes": 8557447,
        "unitPrice": 0.99
    },
    {
        "name": "Wearing And Tearing",
        "albumId": 128,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page, Robert Plant",
        "milliseconds": 330004,
        "bytes": 10701590,
        "unitPrice": 0.99
    },
    {
        "name": "The Song Remains The Same",
        "albumId": 129,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page/Jimmy Page & Robert Plant/Robert Plant",
        "milliseconds": 330004,
        "bytes": 10708950,
        "unitPrice": 0.99
    },
    {
        "name": "The Rain Song",
        "albumId": 129,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page/Jimmy Page & Robert Plant/Robert Plant",
        "milliseconds": 459180,
        "bytes": 15029875,
        "unitPrice": 0.99
    },
    {
        "name": "Over The Hills And Far Away",
        "albumId": 129,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page/Jimmy Page & Robert Plant/Robert Plant",
        "milliseconds": 290089,
        "bytes": 9552829,
        "unitPrice": 0.99
    },
    {
        "name": "The Crunge",
        "albumId": 129,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "John Bonham/John Paul Jones",
        "milliseconds": 197407,
        "bytes": 6460212,
        "unitPrice": 0.99
    },
    {
        "name": "Dancing Days",
        "albumId": 129,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page/Jimmy Page & Robert Plant/Robert Plant",
        "milliseconds": 223216,
        "bytes": 7250104,
        "unitPrice": 0.99
    },
    {
        "name": "D'Yer Mak'er",
        "albumId": 129,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "John Bonham/John Paul Jones",
        "milliseconds": 262948,
        "bytes": 8645935,
        "unitPrice": 0.99
    },
    {
        "name": "No Quarter",
        "albumId": 129,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "John Paul Jones",
        "milliseconds": 420493,
        "bytes": 13656517,
        "unitPrice": 0.99
    },
    {
        "name": "The Ocean",
        "albumId": 129,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "John Bonham/John Paul Jones",
        "milliseconds": 271098,
        "bytes": 8846469,
        "unitPrice": 0.99
    },
    {
        "name": "In The Evening",
        "albumId": 130,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page, Robert Plant & John Paul Jones",
        "milliseconds": 410566,
        "bytes": 13399734,
        "unitPrice": 0.99
    },
    {
        "name": "South Bound Saurez",
        "albumId": 130,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "John Paul Jones & Robert Plant",
        "milliseconds": 254406,
        "bytes": 8420427,
        "unitPrice": 0.99
    },
    {
        "name": "Fool In The Rain",
        "albumId": 130,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page, Robert Plant & John Paul Jones",
        "milliseconds": 372950,
        "bytes": 12371433,
        "unitPrice": 0.99
    },
    {
        "name": "Hot Dog",
        "albumId": 130,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page & Robert Plant",
        "milliseconds": 197198,
        "bytes": 6536167,
        "unitPrice": 0.99
    },
    {
        "name": "Carouselambra",
        "albumId": 130,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "John Paul Jones, Jimmy Page & Robert Plant",
        "milliseconds": 634435,
        "bytes": 20858315,
        "unitPrice": 0.99
    },
    {
        "name": "All My Love",
        "albumId": 130,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Robert Plant & John Paul Jones",
        "milliseconds": 356284,
        "bytes": 11684862,
        "unitPrice": 0.99
    },
    {
        "name": "I'm Gonna Crawl",
        "albumId": 130,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page, Robert Plant & John Paul Jones",
        "milliseconds": 329639,
        "bytes": 10737665,
        "unitPrice": 0.99
    },
    {
        "name": "Black Dog",
        "albumId": 131,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page, Robert Plant, John Paul Jones",
        "milliseconds": 296672,
        "bytes": 9660588,
        "unitPrice": 0.99
    },
    {
        "name": "Rock & Roll",
        "albumId": 131,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page, Robert Plant, John Paul Jones, John Bonham",
        "milliseconds": 220917,
        "bytes": 7142127,
        "unitPrice": 0.99
    },
    {
        "name": "The Battle Of Evermore",
        "albumId": 131,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page, Robert Plant",
        "milliseconds": 351555,
        "bytes": 11525689,
        "unitPrice": 0.99
    },
    {
        "name": "Stairway To Heaven",
        "albumId": 131,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page, Robert Plant",
        "milliseconds": 481619,
        "bytes": 15706767,
        "unitPrice": 0.99
    },
    {
        "name": "Misty Mountain Hop",
        "albumId": 131,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page, Robert Plant, John Paul Jones",
        "milliseconds": 278857,
        "bytes": 9092799,
        "unitPrice": 0.99
    },
    {
        "name": "Four Sticks",
        "albumId": 131,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page, Robert Plant",
        "milliseconds": 284447,
        "bytes": 9481301,
        "unitPrice": 0.99
    },
    {
        "name": "Going To California",
        "albumId": 131,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page, Robert Plant",
        "milliseconds": 215693,
        "bytes": 7068737,
        "unitPrice": 0.99
    },
    {
        "name": "When The Levee Breaks",
        "albumId": 131,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page, Robert Plant, John Paul Jones, John Bonham, Memphis Minnie",
        "milliseconds": 427702,
        "bytes": 13912107,
        "unitPrice": 0.99
    },
    {
        "name": "Good Times Bad Times",
        "albumId": 132,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page/John Bonham/John Paul Jones",
        "milliseconds": 166164,
        "bytes": 5464077,
        "unitPrice": 0.99
    },
    {
        "name": "Babe I'm Gonna Leave You",
        "albumId": 132,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page/Robert Plant",
        "milliseconds": 401475,
        "bytes": 13189312,
        "unitPrice": 0.99
    },
    {
        "name": "You Shook Me",
        "albumId": 132,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "J. B. Lenoir/Willie Dixon",
        "milliseconds": 388179,
        "bytes": 12643067,
        "unitPrice": 0.99
    },
    {
        "name": "Dazed and Confused",
        "albumId": 132,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page",
        "milliseconds": 386063,
        "bytes": 12610326,
        "unitPrice": 0.99
    },
    {
        "name": "Your Time Is Gonna Come",
        "albumId": 132,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page/John Paul Jones",
        "milliseconds": 274860,
        "bytes": 9011653,
        "unitPrice": 0.99
    },
    {
        "name": "Black Mountain Side",
        "albumId": 132,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page",
        "milliseconds": 132702,
        "bytes": 4440602,
        "unitPrice": 0.99
    },
    {
        "name": "Communication Breakdown",
        "albumId": 132,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page/John Bonham/John Paul Jones",
        "milliseconds": 150230,
        "bytes": 4899554,
        "unitPrice": 0.99
    },
    {
        "name": "I Can't Quit You Baby",
        "albumId": 132,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Willie Dixon",
        "milliseconds": 282671,
        "bytes": 9252733,
        "unitPrice": 0.99
    },
    {
        "name": "How Many More Times",
        "albumId": 132,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page/John Bonham/John Paul Jones",
        "milliseconds": 508055,
        "bytes": 16541364,
        "unitPrice": 0.99
    },
    {
        "name": "Whole Lotta Love",
        "albumId": 133,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page, Robert Plant, John Paul Jones, John Bonham",
        "milliseconds": 334471,
        "bytes": 11026243,
        "unitPrice": 0.99
    },
    {
        "name": "What Is And What Should Never Be",
        "albumId": 133,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page, Robert Plant",
        "milliseconds": 287973,
        "bytes": 9369385,
        "unitPrice": 0.99
    },
    {
        "name": "The Lemon Song",
        "albumId": 133,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page, Robert Plant, John Paul Jones, John Bonham",
        "milliseconds": 379141,
        "bytes": 12463496,
        "unitPrice": 0.99
    },
    {
        "name": "Thank You",
        "albumId": 133,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page, Robert Plant",
        "milliseconds": 287791,
        "bytes": 9337392,
        "unitPrice": 0.99
    },
    {
        "name": "Heartbreaker",
        "albumId": 133,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page, Robert Plant, John Paul Jones, John Bonham",
        "milliseconds": 253988,
        "bytes": 8387560,
        "unitPrice": 0.99
    },
    {
        "name": "Living Loving Maid (She's Just A Woman)",
        "albumId": 133,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page, Robert Plant",
        "milliseconds": 159216,
        "bytes": 5219819,
        "unitPrice": 0.99
    },
    {
        "name": "Ramble On",
        "albumId": 133,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page, Robert Plant",
        "milliseconds": 275591,
        "bytes": 9199710,
        "unitPrice": 0.99
    },
    {
        "name": "Moby Dick",
        "albumId": 133,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "John Bonham, John Paul Jones, Jimmy Page",
        "milliseconds": 260728,
        "bytes": 8664210,
        "unitPrice": 0.99
    },
    {
        "name": "Bring It On Home",
        "albumId": 133,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page, Robert Plant",
        "milliseconds": 259970,
        "bytes": 8494731,
        "unitPrice": 0.99
    },
    {
        "name": "Immigrant Song",
        "albumId": 134,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page, Robert Plant",
        "milliseconds": 144875,
        "bytes": 4786461,
        "unitPrice": 0.99
    },
    {
        "name": "Friends",
        "albumId": 134,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page, Robert Plant",
        "milliseconds": 233560,
        "bytes": 7694220,
        "unitPrice": 0.99
    },
    {
        "name": "Celebration Day",
        "albumId": 134,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page, Robert Plant, John Paul Jones",
        "milliseconds": 209528,
        "bytes": 6871078,
        "unitPrice": 0.99
    },
    {
        "name": "Since I've Been Loving You",
        "albumId": 134,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page, Robert Plant, John Paul Jones",
        "milliseconds": 444055,
        "bytes": 14482460,
        "unitPrice": 0.99
    },
    {
        "name": "Out On The Tiles",
        "albumId": 134,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page, Robert Plant, John Bonham",
        "milliseconds": 246047,
        "bytes": 8060350,
        "unitPrice": 0.99
    },
    {
        "name": "Gallows Pole",
        "albumId": 134,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Traditional",
        "milliseconds": 296228,
        "bytes": 9757151,
        "unitPrice": 0.99
    },
    {
        "name": "Tangerine",
        "albumId": 134,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page",
        "milliseconds": 189675,
        "bytes": 6200893,
        "unitPrice": 0.99
    },
    {
        "name": "That's The Way",
        "albumId": 134,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page, Robert Plant",
        "milliseconds": 337345,
        "bytes": 11202499,
        "unitPrice": 0.99
    },
    {
        "name": "Bron-Y-Aur Stomp",
        "albumId": 134,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page, Robert Plant, John Paul Jones",
        "milliseconds": 259500,
        "bytes": 8674508,
        "unitPrice": 0.99
    },
    {
        "name": "Hats Off To (Roy) Harper",
        "albumId": 134,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Traditional",
        "milliseconds": 219376,
        "bytes": 7236640,
        "unitPrice": 0.99
    },
    {
        "name": "In The Light",
        "albumId": 135,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "John Paul Jones/Robert Plant",
        "milliseconds": 526785,
        "bytes": 17033046,
        "unitPrice": 0.99
    },
    {
        "name": "Bron-Yr-Aur",
        "albumId": 135,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page",
        "milliseconds": 126641,
        "bytes": 4150746,
        "unitPrice": 0.99
    },
    {
        "name": "Down By The Seaside",
        "albumId": 135,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Robert Plant",
        "milliseconds": 316186,
        "bytes": 10371282,
        "unitPrice": 0.99
    },
    {
        "name": "Ten Years Gone",
        "albumId": 135,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Robert Plant",
        "milliseconds": 393116,
        "bytes": 12756366,
        "unitPrice": 0.99
    },
    {
        "name": "Night Flight",
        "albumId": 135,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "John Paul Jones/Robert Plant",
        "milliseconds": 217547,
        "bytes": 7160647,
        "unitPrice": 0.99
    },
    {
        "name": "The Wanton Song",
        "albumId": 135,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Robert Plant",
        "milliseconds": 249887,
        "bytes": 8180988,
        "unitPrice": 0.99
    },
    {
        "name": "Boogie With Stu",
        "albumId": 135,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Ian Stewart/John Bonham/John Paul Jones/Mrs. Valens/Robert Plant",
        "milliseconds": 233273,
        "bytes": 7657086,
        "unitPrice": 0.99
    },
    {
        "name": "Black Country Woman",
        "albumId": 135,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Robert Plant",
        "milliseconds": 273084,
        "bytes": 8951732,
        "unitPrice": 0.99
    },
    {
        "name": "Sick Again",
        "albumId": 135,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Robert Plant",
        "milliseconds": 283036,
        "bytes": 9279263,
        "unitPrice": 0.99
    },
    {
        "name": "Achilles Last Stand",
        "albumId": 136,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page/Robert Plant",
        "milliseconds": 625502,
        "bytes": 20593955,
        "unitPrice": 0.99
    },
    {
        "name": "For Your Life",
        "albumId": 136,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page/Robert Plant",
        "milliseconds": 384391,
        "bytes": 12633382,
        "unitPrice": 0.99
    },
    {
        "name": "Royal Orleans",
        "albumId": 136,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "John Bonham/John Paul Jones",
        "milliseconds": 179591,
        "bytes": 5930027,
        "unitPrice": 0.99
    },
    {
        "name": "Nobody's Fault But Mine",
        "albumId": 136,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page/Robert Plant",
        "milliseconds": 376215,
        "bytes": 12237859,
        "unitPrice": 0.99
    },
    {
        "name": "Candy Store Rock",
        "albumId": 136,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page/Robert Plant",
        "milliseconds": 252055,
        "bytes": 8397423,
        "unitPrice": 0.99
    },
    {
        "name": "Hots On For Nowhere",
        "albumId": 136,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page/Robert Plant",
        "milliseconds": 284107,
        "bytes": 9342342,
        "unitPrice": 0.99
    },
    {
        "name": "Tea For One",
        "albumId": 136,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page/Robert Plant",
        "milliseconds": 566752,
        "bytes": 18475264,
        "unitPrice": 0.99
    },
    {
        "name": "Rock & Roll",
        "albumId": 137,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "John Bonham/John Paul Jones/Robert Plant",
        "milliseconds": 242442,
        "bytes": 7897065,
        "unitPrice": 0.99
    },
    {
        "name": "Celebration Day",
        "albumId": 137,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "John Paul Jones/Robert Plant",
        "milliseconds": 230034,
        "bytes": 7478487,
        "unitPrice": 0.99
    },
    {
        "name": "The Song Remains The Same",
        "albumId": 137,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Robert Plant",
        "milliseconds": 353358,
        "bytes": 11465033,
        "unitPrice": 0.99
    },
    {
        "name": "Rain Song",
        "albumId": 137,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Robert Plant",
        "milliseconds": 505808,
        "bytes": 16273705,
        "unitPrice": 0.99
    },
    {
        "name": "Dazed And Confused",
        "albumId": 137,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page",
        "milliseconds": 1612329,
        "bytes": 52490554,
        "unitPrice": 0.99
    },
    {
        "name": "No Quarter",
        "albumId": 138,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "John Paul Jones/Robert Plant",
        "milliseconds": 749897,
        "bytes": 24399285,
        "unitPrice": 0.99
    },
    {
        "name": "Stairway To Heaven",
        "albumId": 138,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Robert Plant",
        "milliseconds": 657293,
        "bytes": 21354766,
        "unitPrice": 0.99
    },
    {
        "name": "Moby Dick",
        "albumId": 138,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "John Bonham/John Paul Jones",
        "milliseconds": 766354,
        "bytes": 25345841,
        "unitPrice": 0.99
    },
    {
        "name": "Whole Lotta Love",
        "albumId": 138,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "John Bonham/John Paul Jones/Robert Plant/Willie Dixon",
        "milliseconds": 863895,
        "bytes": 28191437,
        "unitPrice": 0.99
    },
    {
        "name": "Natália",
        "albumId": 139,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Renato Russo",
        "milliseconds": 235728,
        "bytes": 7640230,
        "unitPrice": 0.99
    },
    {
        "name": "L'Avventura",
        "albumId": 139,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Renato Russo",
        "milliseconds": 278256,
        "bytes": 9165769,
        "unitPrice": 0.99
    },
    {
        "name": "Música De Trabalho",
        "albumId": 139,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Renato Russo",
        "milliseconds": 260231,
        "bytes": 8590671,
        "unitPrice": 0.99
    },
    {
        "name": "Longe Do Meu Lado",
        "albumId": 139,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Renato Russo - Marcelo Bonfá",
        "milliseconds": 266161,
        "bytes": 8655249,
        "unitPrice": 0.99
    },
    {
        "name": "A Via Láctea",
        "albumId": 139,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Renato Russo",
        "milliseconds": 280084,
        "bytes": 9234879,
        "unitPrice": 0.99
    },
    {
        "name": "Música Ambiente",
        "albumId": 139,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Renato Russo",
        "milliseconds": 247614,
        "bytes": 8234388,
        "unitPrice": 0.99
    },
    {
        "name": "Aloha",
        "albumId": 139,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Renato Russo",
        "milliseconds": 325955,
        "bytes": 10793301,
        "unitPrice": 0.99
    },
    {
        "name": "Soul Parsifal",
        "albumId": 139,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Renato Russo - Marisa Monte",
        "milliseconds": 295053,
        "bytes": 9853589,
        "unitPrice": 0.99
    },
    {
        "name": "Dezesseis",
        "albumId": 139,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Renato Russo",
        "milliseconds": 323918,
        "bytes": 10573515,
        "unitPrice": 0.99
    },
    {
        "name": "Mil Pedaços",
        "albumId": 139,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Renato Russo",
        "milliseconds": 203337,
        "bytes": 6643291,
        "unitPrice": 0.99
    },
    {
        "name": "Leila",
        "albumId": 139,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Renato Russo",
        "milliseconds": 323056,
        "bytes": 10608239,
        "unitPrice": 0.99
    },
    {
        "name": "1º De Julho",
        "albumId": 139,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Renato Russo",
        "milliseconds": 290298,
        "bytes": 9619257,
        "unitPrice": 0.99
    },
    {
        "name": "Esperando Por Mim",
        "albumId": 139,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Renato Russo",
        "milliseconds": 261668,
        "bytes": 8844133,
        "unitPrice": 0.99
    },
    {
        "name": "Quando Você Voltar",
        "albumId": 139,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Renato Russo",
        "milliseconds": 173897,
        "bytes": 5781046,
        "unitPrice": 0.99
    },
    {
        "name": "O Livro Dos Dias",
        "albumId": 139,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Renato Russo",
        "milliseconds": 257253,
        "bytes": 8570929,
        "unitPrice": 0.99
    },
    {
        "name": "Será",
        "albumId": 140,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Dado Villa-Lobos/Marcelo Bonfá",
        "milliseconds": 148401,
        "bytes": 4826528,
        "unitPrice": 0.99
    },
    {
        "name": "Ainda É Cedo",
        "albumId": 140,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Dado Villa-Lobos/Ico Ouro-Preto/Marcelo Bonfá",
        "milliseconds": 236826,
        "bytes": 7796400,
        "unitPrice": 0.99
    },
    {
        "name": "Geração Coca-Cola",
        "albumId": 140,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Renato Russo",
        "milliseconds": 141453,
        "bytes": 4625731,
        "unitPrice": 0.99
    },
    {
        "name": "Eduardo E Mônica",
        "albumId": 140,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Renato Russo",
        "milliseconds": 271229,
        "bytes": 9026691,
        "unitPrice": 0.99
    },
    {
        "name": "Tempo Perdido",
        "albumId": 140,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Renato Russo",
        "milliseconds": 302158,
        "bytes": 9963914,
        "unitPrice": 0.99
    },
    {
        "name": "Indios",
        "albumId": 140,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Renato Russo",
        "milliseconds": 258168,
        "bytes": 8610226,
        "unitPrice": 0.99
    },
    {
        "name": "Que País É Este",
        "albumId": 140,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Renato Russo",
        "milliseconds": 177606,
        "bytes": 5822124,
        "unitPrice": 0.99
    },
    {
        "name": "Faroeste Caboclo",
        "albumId": 140,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Renato Russo",
        "milliseconds": 543007,
        "bytes": 18092739,
        "unitPrice": 0.99
    },
    {
        "name": "Há Tempos",
        "albumId": 140,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Dado Villa-Lobos/Marcelo Bonfá",
        "milliseconds": 197146,
        "bytes": 6432922,
        "unitPrice": 0.99
    },
    {
        "name": "Pais E Filhos",
        "albumId": 140,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Dado Villa-Lobos/Marcelo Bonfá",
        "milliseconds": 308401,
        "bytes": 10130685,
        "unitPrice": 0.99
    },
    {
        "name": "Meninos E Meninas",
        "albumId": 140,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Dado Villa-Lobos/Marcelo Bonfá",
        "milliseconds": 203781,
        "bytes": 6667802,
        "unitPrice": 0.99
    },
    {
        "name": "Vento No Litoral",
        "albumId": 140,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Dado Villa-Lobos/Marcelo Bonfá",
        "milliseconds": 366445,
        "bytes": 12063806,
        "unitPrice": 0.99
    },
    {
        "name": "Perfeição",
        "albumId": 140,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Dado Villa-Lobos/Marcelo Bonfá",
        "milliseconds": 276558,
        "bytes": 9258489,
        "unitPrice": 0.99
    },
    {
        "name": "Giz",
        "albumId": 140,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Dado Villa-Lobos/Marcelo Bonfá",
        "milliseconds": 202213,
        "bytes": 6677671,
        "unitPrice": 0.99
    },
    {
        "name": "Dezesseis",
        "albumId": 140,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Dado Villa-Lobos/Marcelo Bonfá",
        "milliseconds": 321724,
        "bytes": 10501773,
        "unitPrice": 0.99
    },
    {
        "name": "Antes Das Seis",
        "albumId": 140,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Dado Villa-Lobos",
        "milliseconds": 189231,
        "bytes": 6296531,
        "unitPrice": 0.99
    },
    {
        "name": "Are You Gonna Go My Way",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Craig Ross/Lenny Kravitz",
        "milliseconds": 211591,
        "bytes": 6905135,
        "unitPrice": 0.99
    },
    {
        "name": "Fly Away",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Lenny Kravitz",
        "milliseconds": 221962,
        "bytes": 7322085,
        "unitPrice": 0.99
    },
    {
        "name": "Rock And Roll Is Dead",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Lenny Kravitz",
        "milliseconds": 204199,
        "bytes": 6680312,
        "unitPrice": 0.99
    },
    {
        "name": "Again",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Lenny Kravitz",
        "milliseconds": 228989,
        "bytes": 7490476,
        "unitPrice": 0.99
    },
    {
        "name": "It Ain't Over 'Til It's Over",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Lenny Kravitz",
        "milliseconds": 242703,
        "bytes": 8078936,
        "unitPrice": 0.99
    },
    {
        "name": "Can't Get You Off My Mind",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Lenny Kravitz",
        "milliseconds": 273815,
        "bytes": 8937150,
        "unitPrice": 0.99
    },
    {
        "name": "Mr. Cab Driver",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Lenny Kravitz",
        "milliseconds": 230321,
        "bytes": 7668084,
        "unitPrice": 0.99
    },
    {
        "name": "American Woman",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "B. Cummings/G. Peterson/M.J. Kale/R. Bachman",
        "milliseconds": 261773,
        "bytes": 8538023,
        "unitPrice": 0.99
    },
    {
        "name": "Stand By My Woman",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Henry Kirssch/Lenny Kravitz/S. Pasch A. Krizan",
        "milliseconds": 259683,
        "bytes": 8447611,
        "unitPrice": 0.99
    },
    {
        "name": "Always On The Run",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Lenny Kravitz/Slash",
        "milliseconds": 232515,
        "bytes": 7593397,
        "unitPrice": 0.99
    },
    {
        "name": "Heaven Help",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Gerry DeVeaux/Terry Britten",
        "milliseconds": 190354,
        "bytes": 6222092,
        "unitPrice": 0.99
    },
    {
        "name": "I Belong To You",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Lenny Kravitz",
        "milliseconds": 257123,
        "bytes": 8477980,
        "unitPrice": 0.99
    },
    {
        "name": "Believe",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Henry Hirsch/Lenny Kravitz",
        "milliseconds": 295131,
        "bytes": 9661978,
        "unitPrice": 0.99
    },
    {
        "name": "Let Love Rule",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Lenny Kravitz",
        "milliseconds": 342648,
        "bytes": 11298085,
        "unitPrice": 0.99
    },
    {
        "name": "Black Velveteen",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Lenny Kravitz",
        "milliseconds": 290899,
        "bytes": 9531301,
        "unitPrice": 0.99
    },
    {
        "name": "Assim Caminha A Humanidade",
        "albumId": 142,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 210755,
        "bytes": 6993763,
        "unitPrice": 0.99
    },
    {
        "name": "Honolulu",
        "albumId": 143,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 261433,
        "bytes": 8558481,
        "unitPrice": 0.99
    },
    {
        "name": "Dancin´Days",
        "albumId": 143,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 237400,
        "bytes": 7875347,
        "unitPrice": 0.99
    },
    {
        "name": "Um Pro Outro",
        "albumId": 142,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 236382,
        "bytes": 7825215,
        "unitPrice": 0.99
    },
    {
        "name": "Aviso Aos Navegantes",
        "albumId": 143,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 242808,
        "bytes": 8058651,
        "unitPrice": 0.99
    },
    {
        "name": "Casa",
        "albumId": 142,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 307591,
        "bytes": 10107269,
        "unitPrice": 0.99
    },
    {
        "name": "Condição",
        "albumId": 142,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 263549,
        "bytes": 8778465,
        "unitPrice": 0.99
    },
    {
        "name": "Hyperconectividade",
        "albumId": 143,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 180636,
        "bytes": 5948039,
        "unitPrice": 0.99
    },
    {
        "name": "O Descobridor Dos Sete Mares",
        "albumId": 143,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 225854,
        "bytes": 7475780,
        "unitPrice": 0.99
    },
    {
        "name": "Satisfação",
        "albumId": 142,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 208065,
        "bytes": 6901681,
        "unitPrice": 0.99
    },
    {
        "name": "Brumário",
        "albumId": 142,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 216241,
        "bytes": 7243499,
        "unitPrice": 0.99
    },
    {
        "name": "Um Certo Alguém",
        "albumId": 143,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 194063,
        "bytes": 6430939,
        "unitPrice": 0.99
    },
    {
        "name": "Fullgás",
        "albumId": 143,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 346070,
        "bytes": 11505484,
        "unitPrice": 0.99
    },
    {
        "name": "Sábado À Noite",
        "albumId": 142,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 193854,
        "bytes": 6435114,
        "unitPrice": 0.99
    },
    {
        "name": "A Cura",
        "albumId": 142,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 280920,
        "bytes": 9260588,
        "unitPrice": 0.99
    },
    {
        "name": "Aquilo",
        "albumId": 143,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 246073,
        "bytes": 8167819,
        "unitPrice": 0.99
    },
    {
        "name": "Atrás Do Trio Elétrico",
        "albumId": 142,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 149080,
        "bytes": 4917615,
        "unitPrice": 0.99
    },
    {
        "name": "Senta A Pua",
        "albumId": 143,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 217547,
        "bytes": 7205844,
        "unitPrice": 0.99
    },
    {
        "name": "Ro-Que-Se-Da-Ne",
        "albumId": 143,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 146703,
        "bytes": 4805897,
        "unitPrice": 0.99
    },
    {
        "name": "Tudo Bem",
        "albumId": 142,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 196101,
        "bytes": 6419139,
        "unitPrice": 0.99
    },
    {
        "name": "Toda Forma De Amor",
        "albumId": 142,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 227813,
        "bytes": 7496584,
        "unitPrice": 0.99
    },
    {
        "name": "Tudo Igual",
        "albumId": 143,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 276035,
        "bytes": 9201645,
        "unitPrice": 0.99
    },
    {
        "name": "Fogo De Palha",
        "albumId": 143,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 246804,
        "bytes": 8133732,
        "unitPrice": 0.99
    },
    {
        "name": "Sereia",
        "albumId": 142,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 278047,
        "bytes": 9121087,
        "unitPrice": 0.99
    },
    {
        "name": "Assaltaram A Gramática",
        "albumId": 143,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 261041,
        "bytes": 8698959,
        "unitPrice": 0.99
    },
    {
        "name": "Se Você Pensa",
        "albumId": 142,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 195996,
        "bytes": 6552490,
        "unitPrice": 0.99
    },
    {
        "name": "Lá Vem O Sol (Here Comes The Sun)",
        "albumId": 142,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 189492,
        "bytes": 6229645,
        "unitPrice": 0.99
    },
    {
        "name": "O Último Romântico (Ao Vivo)",
        "albumId": 143,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 231993,
        "bytes": 7692697,
        "unitPrice": 0.99
    },
    {
        "name": "Pseudo Silk Kimono",
        "albumId": 144,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Kelly, Mosley, Rothery, Trewaves",
        "milliseconds": 134739,
        "bytes": 4334038,
        "unitPrice": 0.99
    },
    {
        "name": "Kayleigh",
        "albumId": 144,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Kelly, Mosley, Rothery, Trewaves",
        "milliseconds": 234605,
        "bytes": 7716005,
        "unitPrice": 0.99
    },
    {
        "name": "Lavender",
        "albumId": 144,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Kelly, Mosley, Rothery, Trewaves",
        "milliseconds": 153417,
        "bytes": 4999814,
        "unitPrice": 0.99
    },
    {
        "name": "Bitter Suite: Brief Encounter / Lost Weekend / Blue Angel",
        "albumId": 144,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Kelly, Mosley, Rothery, Trewaves",
        "milliseconds": 356493,
        "bytes": 11791068,
        "unitPrice": 0.99
    },
    {
        "name": "Heart Of Lothian: Wide Boy / Curtain Call",
        "albumId": 144,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Kelly, Mosley, Rothery, Trewaves",
        "milliseconds": 366053,
        "bytes": 11893723,
        "unitPrice": 0.99
    },
    {
        "name": "Waterhole (Expresso Bongo)",
        "albumId": 144,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Kelly, Mosley, Rothery, Trewaves",
        "milliseconds": 133093,
        "bytes": 4378835,
        "unitPrice": 0.99
    },
    {
        "name": "Lords Of The Backstage",
        "albumId": 144,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Kelly, Mosley, Rothery, Trewaves",
        "milliseconds": 112875,
        "bytes": 3741319,
        "unitPrice": 0.99
    },
    {
        "name": "Blind Curve: Vocal Under A Bloodlight / Passing Strangers / Mylo / Perimeter Walk / Threshold",
        "albumId": 144,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Kelly, Mosley, Rothery, Trewaves",
        "milliseconds": 569704,
        "bytes": 18578995,
        "unitPrice": 0.99
    },
    {
        "name": "Childhoods End?",
        "albumId": 144,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Kelly, Mosley, Rothery, Trewaves",
        "milliseconds": 272796,
        "bytes": 9015366,
        "unitPrice": 0.99
    },
    {
        "name": "White Feather",
        "albumId": 144,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Kelly, Mosley, Rothery, Trewaves",
        "milliseconds": 143595,
        "bytes": 4711776,
        "unitPrice": 0.99
    },
    {
        "name": "Arrepio",
        "albumId": 145,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Carlinhos Brown",
        "milliseconds": 136254,
        "bytes": 4511390,
        "unitPrice": 0.99
    },
    {
        "name": "Magamalabares",
        "albumId": 145,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Carlinhos Brown",
        "milliseconds": 215875,
        "bytes": 7183757,
        "unitPrice": 0.99
    },
    {
        "name": "Chuva No Brejo",
        "albumId": 145,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Morais",
        "milliseconds": 145606,
        "bytes": 4857761,
        "unitPrice": 0.99
    },
    {
        "name": "Cérebro Eletrônico",
        "albumId": 145,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Gilberto Gil",
        "milliseconds": 172800,
        "bytes": 5760864,
        "unitPrice": 0.99
    },
    {
        "name": "Tempos Modernos",
        "albumId": 145,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Lulu Santos",
        "milliseconds": 183066,
        "bytes": 6066234,
        "unitPrice": 0.99
    },
    {
        "name": "Maraçá",
        "albumId": 145,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Carlinhos Brown",
        "milliseconds": 230008,
        "bytes": 7621482,
        "unitPrice": 0.99
    },
    {
        "name": "Blanco",
        "albumId": 145,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Marisa Monte/poema de Octavio Paz/versão: Haroldo de Campos",
        "milliseconds": 45191,
        "bytes": 1454532,
        "unitPrice": 0.99
    },
    {
        "name": "Panis Et Circenses",
        "albumId": 145,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Caetano Veloso e Gilberto Gil",
        "milliseconds": 192339,
        "bytes": 6318373,
        "unitPrice": 0.99
    },
    {
        "name": "De Noite Na Cama",
        "albumId": 145,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Caetano Veloso e Gilberto Gil",
        "milliseconds": 209005,
        "bytes": 7012658,
        "unitPrice": 0.99
    },
    {
        "name": "Beija Eu",
        "albumId": 145,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Caetano Veloso e Gilberto Gil",
        "milliseconds": 197276,
        "bytes": 6512544,
        "unitPrice": 0.99
    },
    {
        "name": "Give Me Love",
        "albumId": 145,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Caetano Veloso e Gilberto Gil",
        "milliseconds": 249808,
        "bytes": 8196331,
        "unitPrice": 0.99
    },
    {
        "name": "Ainda Lembro",
        "albumId": 145,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Caetano Veloso e Gilberto Gil",
        "milliseconds": 218801,
        "bytes": 7211247,
        "unitPrice": 0.99
    },
    {
        "name": "A Menina Dança",
        "albumId": 145,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Caetano Veloso e Gilberto Gil",
        "milliseconds": 129410,
        "bytes": 4326918,
        "unitPrice": 0.99
    },
    {
        "name": "Dança Da Solidão",
        "albumId": 145,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Caetano Veloso e Gilberto Gil",
        "milliseconds": 203520,
        "bytes": 6699368,
        "unitPrice": 0.99
    },
    {
        "name": "Ao Meu Redor",
        "albumId": 145,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Caetano Veloso e Gilberto Gil",
        "milliseconds": 275591,
        "bytes": 9158834,
        "unitPrice": 0.99
    },
    {
        "name": "Bem Leve",
        "albumId": 145,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Caetano Veloso e Gilberto Gil",
        "milliseconds": 159190,
        "bytes": 5246835,
        "unitPrice": 0.99
    },
    {
        "name": "Segue O Seco",
        "albumId": 145,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Caetano Veloso e Gilberto Gil",
        "milliseconds": 178207,
        "bytes": 5922018,
        "unitPrice": 0.99
    },
    {
        "name": "O Xote Das Meninas",
        "albumId": 145,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Caetano Veloso e Gilberto Gil",
        "milliseconds": 291866,
        "bytes": 9553228,
        "unitPrice": 0.99
    },
    {
        "name": "Wherever I Lay My Hat",
        "albumId": 146,
        "mediaTypeId": 1,
        "genreId": 14,
        "composer": null,
        "milliseconds": 136986,
        "bytes": 4477321,
        "unitPrice": 0.99
    },
    {
        "name": "Get My Hands On Some Lovin'",
        "albumId": 146,
        "mediaTypeId": 1,
        "genreId": 14,
        "composer": null,
        "milliseconds": 149054,
        "bytes": 4860380,
        "unitPrice": 0.99
    },
    {
        "name": "No Good Without You",
        "albumId": 146,
        "mediaTypeId": 1,
        "genreId": 14,
        "composer": "William "Mickey" Stevenson",
        "milliseconds": 161410,
        "bytes": 5259218,
        "unitPrice": 0.99
    },
    {
        "name": "You've Been A Long Time Coming",
        "albumId": 146,
        "mediaTypeId": 1,
        "genreId": 14,
        "composer": "Brian Holland/Eddie Holland/Lamont Dozier",
        "milliseconds": 137221,
        "bytes": 4437949,
        "unitPrice": 0.99
    },
    {
        "name": "When I Had Your Love",
        "albumId": 146,
        "mediaTypeId": 1,
        "genreId": 14,
        "composer": "Robert Rogers/Warren "Pete" Moore/William "Mickey" Stevenson",
        "milliseconds": 152424,
        "bytes": 4972815,
        "unitPrice": 0.99
    },
    {
        "name": "You're What's Happening (In The World Today)",
        "albumId": 146,
        "mediaTypeId": 1,
        "genreId": 14,
        "composer": "Allen Story/George Gordy/Robert Gordy",
        "milliseconds": 142027,
        "bytes": 4631104,
        "unitPrice": 0.99
    },
    {
        "name": "Loving You Is Sweeter Than Ever",
        "albumId": 146,
        "mediaTypeId": 1,
        "genreId": 14,
        "composer": "Ivy Hunter/Stevie Wonder",
        "milliseconds": 166295,
        "bytes": 5377546,
        "unitPrice": 0.99
    },
    {
        "name": "It's A Bitter Pill To Swallow",
        "albumId": 146,
        "mediaTypeId": 1,
        "genreId": 14,
        "composer": "Smokey Robinson/Warren "Pete" Moore",
        "milliseconds": 194821,
        "bytes": 6477882,
        "unitPrice": 0.99
    },
    {
        "name": "Seek And You Shall Find",
        "albumId": 146,
        "mediaTypeId": 1,
        "genreId": 14,
        "composer": "Ivy Hunter/William "Mickey" Stevenson",
        "milliseconds": 223451,
        "bytes": 7306719,
        "unitPrice": 0.99
    },
    {
        "name": "Gonna Keep On Tryin' Till I Win Your Love",
        "albumId": 146,
        "mediaTypeId": 1,
        "genreId": 14,
        "composer": "Barrett Strong/Norman Whitfield",
        "milliseconds": 176404,
        "bytes": 5789945,
        "unitPrice": 0.99
    },
    {
        "name": "Gonna Give Her All The Love I've Got",
        "albumId": 146,
        "mediaTypeId": 1,
        "genreId": 14,
        "composer": "Barrett Strong/Norman Whitfield",
        "milliseconds": 210886,
        "bytes": 6893603,
        "unitPrice": 0.99
    },
    {
        "name": "I Wish It Would Rain",
        "albumId": 146,
        "mediaTypeId": 1,
        "genreId": 14,
        "composer": "Barrett Strong/Norman Whitfield/Roger Penzabene",
        "milliseconds": 172486,
        "bytes": 5647327,
        "unitPrice": 0.99
    },
    {
        "name": "Abraham, Martin And John",
        "albumId": 146,
        "mediaTypeId": 1,
        "genreId": 14,
        "composer": "Dick Holler",
        "milliseconds": 273057,
        "bytes": 8888206,
        "unitPrice": 0.99
    },
    {
        "name": "Save The Children",
        "albumId": 146,
        "mediaTypeId": 1,
        "genreId": 14,
        "composer": "Al Cleveland/Marvin Gaye/Renaldo Benson",
        "milliseconds": 194821,
        "bytes": 6342021,
        "unitPrice": 0.99
    },
    {
        "name": "You Sure Love To Ball",
        "albumId": 146,
        "mediaTypeId": 1,
        "genreId": 14,
        "composer": "Marvin Gaye",
        "milliseconds": 218540,
        "bytes": 7217872,
        "unitPrice": 0.99
    },
    {
        "name": "Ego Tripping Out",
        "albumId": 146,
        "mediaTypeId": 1,
        "genreId": 14,
        "composer": "Marvin Gaye",
        "milliseconds": 314514,
        "bytes": 10383887,
        "unitPrice": 0.99
    },
    {
        "name": "Praise",
        "albumId": 146,
        "mediaTypeId": 1,
        "genreId": 14,
        "composer": "Marvin Gaye",
        "milliseconds": 235833,
        "bytes": 7839179,
        "unitPrice": 0.99
    },
    {
        "name": "Heavy Love Affair",
        "albumId": 146,
        "mediaTypeId": 1,
        "genreId": 14,
        "composer": "Marvin Gaye",
        "milliseconds": 227892,
        "bytes": 7522232,
        "unitPrice": 0.99
    },
    {
        "name": "Down Under",
        "albumId": 147,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 222171,
        "bytes": 7366142,
        "unitPrice": 0.99
    },
    {
        "name": "Overkill",
        "albumId": 147,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 225410,
        "bytes": 7408652,
        "unitPrice": 0.99
    },
    {
        "name": "Be Good Johnny",
        "albumId": 147,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 216320,
        "bytes": 7139814,
        "unitPrice": 0.99
    },
    {
        "name": "Everything I Need",
        "albumId": 147,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 216476,
        "bytes": 7107625,
        "unitPrice": 0.99
    },
    {
        "name": "Down by the Sea",
        "albumId": 147,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 408163,
        "bytes": 13314900,
        "unitPrice": 0.99
    },
    {
        "name": "Who Can It Be Now?",
        "albumId": 147,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 202396,
        "bytes": 6682850,
        "unitPrice": 0.99
    },
    {
        "name": "It's a Mistake",
        "albumId": 147,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 273371,
        "bytes": 8979965,
        "unitPrice": 0.99
    },
    {
        "name": "Dr. Heckyll & Mr. Jive",
        "albumId": 147,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 278465,
        "bytes": 9110403,
        "unitPrice": 0.99
    },
    {
        "name": "Shakes and Ladders",
        "albumId": 147,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 198008,
        "bytes": 6560753,
        "unitPrice": 0.99
    },
    {
        "name": "No Sign of Yesterday",
        "albumId": 147,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 362004,
        "bytes": 11829011,
        "unitPrice": 0.99
    },
    {
        "name": "Enter Sandman",
        "albumId": 148,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "James Hetfield, Lars Ulrich and Kirk Hammett",
        "milliseconds": 332251,
        "bytes": 10852002,
        "unitPrice": 0.99
    },
    {
        "name": "Sad But True",
        "albumId": 148,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Ulrich",
        "milliseconds": 324754,
        "bytes": 10541258,
        "unitPrice": 0.99
    },
    {
        "name": "Holier Than Thou",
        "albumId": 148,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Ulrich",
        "milliseconds": 227892,
        "bytes": 7462011,
        "unitPrice": 0.99
    },
    {
        "name": "The Unforgiven",
        "albumId": 148,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "James Hetfield, Lars Ulrich and Kirk Hammett",
        "milliseconds": 387082,
        "bytes": 12646886,
        "unitPrice": 0.99
    },
    {
        "name": "Wherever I May Roam",
        "albumId": 148,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Ulrich",
        "milliseconds": 404323,
        "bytes": 13161169,
        "unitPrice": 0.99
    },
    {
        "name": "Don't Tread On Me",
        "albumId": 148,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Ulrich",
        "milliseconds": 240483,
        "bytes": 7827907,
        "unitPrice": 0.99
    },
    {
        "name": "Through The Never",
        "albumId": 148,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "James Hetfield, Lars Ulrich and Kirk Hammett",
        "milliseconds": 244375,
        "bytes": 8024047,
        "unitPrice": 0.99
    },
    {
        "name": "Nothing Else Matters",
        "albumId": 148,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Ulrich",
        "milliseconds": 388832,
        "bytes": 12606241,
        "unitPrice": 0.99
    },
    {
        "name": "Of Wolf And Man",
        "albumId": 148,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "James Hetfield, Lars Ulrich and Kirk Hammett",
        "milliseconds": 256835,
        "bytes": 8339785,
        "unitPrice": 0.99
    },
    {
        "name": "The God That Failed",
        "albumId": 148,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Ulrich",
        "milliseconds": 308610,
        "bytes": 10055959,
        "unitPrice": 0.99
    },
    {
        "name": "My Friend Of Misery",
        "albumId": 148,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "James Hetfield, Lars Ulrich and Jason Newsted",
        "milliseconds": 409547,
        "bytes": 13293515,
        "unitPrice": 0.99
    },
    {
        "name": "The Struggle Within",
        "albumId": 148,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Ulrich",
        "milliseconds": 234240,
        "bytes": 7654052,
        "unitPrice": 0.99
    },
    {
        "name": "Helpless",
        "albumId": 149,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Harris/Tatler",
        "milliseconds": 398315,
        "bytes": 12977902,
        "unitPrice": 0.99
    },
    {
        "name": "The Small Hours",
        "albumId": 149,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Holocaust",
        "milliseconds": 403435,
        "bytes": 13215133,
        "unitPrice": 0.99
    },
    {
        "name": "The Wait",
        "albumId": 149,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Killing Joke",
        "milliseconds": 295418,
        "bytes": 9688418,
        "unitPrice": 0.99
    },
    {
        "name": "Crash Course In Brain Surgery",
        "albumId": 149,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Bourge/Phillips/Shelley",
        "milliseconds": 190406,
        "bytes": 6233729,
        "unitPrice": 0.99
    },
    {
        "name": "Last Caress/Green Hell",
        "albumId": 149,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Danzig",
        "milliseconds": 209972,
        "bytes": 6854313,
        "unitPrice": 0.99
    },
    {
        "name": "Am I Evil?",
        "albumId": 149,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Harris/Tatler",
        "milliseconds": 470256,
        "bytes": 15387219,
        "unitPrice": 0.99
    },
    {
        "name": "Blitzkrieg",
        "albumId": 149,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Jones/Sirotto/Smith",
        "milliseconds": 216685,
        "bytes": 7090018,
        "unitPrice": 0.99
    },
    {
        "name": "Breadfan",
        "albumId": 149,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Bourge/Phillips/Shelley",
        "milliseconds": 341551,
        "bytes": 11100130,
        "unitPrice": 0.99
    },
    {
        "name": "The Prince",
        "albumId": 149,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Harris/Tatler",
        "milliseconds": 265769,
        "bytes": 8624492,
        "unitPrice": 0.99
    },
    {
        "name": "Stone Cold Crazy",
        "albumId": 149,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Deacon/May/Mercury/Taylor",
        "milliseconds": 137717,
        "bytes": 4514830,
        "unitPrice": 0.99
    },
    {
        "name": "So What",
        "albumId": 149,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Culmer/Exalt",
        "milliseconds": 189152,
        "bytes": 6162894,
        "unitPrice": 0.99
    },
    {
        "name": "Killing Time",
        "albumId": 149,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Sweet Savage",
        "milliseconds": 183693,
        "bytes": 6021197,
        "unitPrice": 0.99
    },
    {
        "name": "Overkill",
        "albumId": 149,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Clarke/Kilmister/Tayler",
        "milliseconds": 245133,
        "bytes": 7971330,
        "unitPrice": 0.99
    },
    {
        "name": "Damage Case",
        "albumId": 149,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Clarke/Farren/Kilmister/Tayler",
        "milliseconds": 220212,
        "bytes": 7212997,
        "unitPrice": 0.99
    },
    {
        "name": "Stone Dead Forever",
        "albumId": 149,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Clarke/Kilmister/Tayler",
        "milliseconds": 292127,
        "bytes": 9556060,
        "unitPrice": 0.99
    },
    {
        "name": "Too Late Too Late",
        "albumId": 149,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Clarke/Kilmister/Tayler",
        "milliseconds": 192052,
        "bytes": 6276291,
        "unitPrice": 0.99
    },
    {
        "name": "Hit The Lights",
        "albumId": 150,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "James Hetfield, Lars Ulrich",
        "milliseconds": 257541,
        "bytes": 8357088,
        "unitPrice": 0.99
    },
    {
        "name": "The Four Horsemen",
        "albumId": 150,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "James Hetfield, Lars Ulrich, Dave Mustaine",
        "milliseconds": 433188,
        "bytes": 14178138,
        "unitPrice": 0.99
    },
    {
        "name": "Motorbreath",
        "albumId": 150,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "James Hetfield",
        "milliseconds": 188395,
        "bytes": 6153933,
        "unitPrice": 0.99
    },
    {
        "name": "Jump In The Fire",
        "albumId": 150,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "James Hetfield, Lars Ulrich, Dave Mustaine",
        "milliseconds": 281573,
        "bytes": 9135755,
        "unitPrice": 0.99
    },
    {
        "name": "(Anesthesia) Pulling Teeth",
        "albumId": 150,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Cliff Burton",
        "milliseconds": 254955,
        "bytes": 8234710,
        "unitPrice": 0.99
    },
    {
        "name": "Whiplash",
        "albumId": 150,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "James Hetfield, Lars Ulrich",
        "milliseconds": 249208,
        "bytes": 8102839,
        "unitPrice": 0.99
    },
    {
        "name": "Phantom Lord",
        "albumId": 150,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "James Hetfield, Lars Ulrich, Dave Mustaine",
        "milliseconds": 302053,
        "bytes": 9817143,
        "unitPrice": 0.99
    },
    {
        "name": "No Remorse",
        "albumId": 150,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "James Hetfield, Lars Ulrich",
        "milliseconds": 386795,
        "bytes": 12672166,
        "unitPrice": 0.99
    },
    {
        "name": "Seek & Destroy",
        "albumId": 150,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "James Hetfield, Lars Ulrich",
        "milliseconds": 415817,
        "bytes": 13452301,
        "unitPrice": 0.99
    },
    {
        "name": "Metal Militia",
        "albumId": 150,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "James Hetfield, Lars Ulrich, Dave Mustaine",
        "milliseconds": 311327,
        "bytes": 10141785,
        "unitPrice": 0.99
    },
    {
        "name": "Ain't My Bitch",
        "albumId": 151,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "James Hetfield, Lars Ulrich",
        "milliseconds": 304457,
        "bytes": 9931015,
        "unitPrice": 0.99
    },
    {
        "name": "2 X 4",
        "albumId": 151,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "James Hetfield, Lars Ulrich, Kirk Hammett",
        "milliseconds": 328254,
        "bytes": 10732251,
        "unitPrice": 0.99
    },
    {
        "name": "The House Jack Built",
        "albumId": 151,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "James Hetfield, Lars Ulrich, Kirk Hammett",
        "milliseconds": 398942,
        "bytes": 13005152,
        "unitPrice": 0.99
    },
    {
        "name": "Until It Sleeps",
        "albumId": 151,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "James Hetfield, Lars Ulrich",
        "milliseconds": 269740,
        "bytes": 8837394,
        "unitPrice": 0.99
    },
    {
        "name": "King Nothing",
        "albumId": 151,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "James Hetfield, Lars Ulrich, Kirk Hammett",
        "milliseconds": 328097,
        "bytes": 10681477,
        "unitPrice": 0.99
    },
    {
        "name": "Hero Of The Day",
        "albumId": 151,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "James Hetfield, Lars Ulrich, Kirk Hammett",
        "milliseconds": 261982,
        "bytes": 8540298,
        "unitPrice": 0.99
    },
    {
        "name": "Bleeding Me",
        "albumId": 151,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "James Hetfield, Lars Ulrich, Kirk Hammett",
        "milliseconds": 497998,
        "bytes": 16249420,
        "unitPrice": 0.99
    },
    {
        "name": "Cure",
        "albumId": 151,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "James Hetfield, Lars Ulrich",
        "milliseconds": 294347,
        "bytes": 9648615,
        "unitPrice": 0.99
    },
    {
        "name": "Poor Twisted Me",
        "albumId": 151,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "James Hetfield, Lars Ulrich",
        "milliseconds": 240065,
        "bytes": 7854349,
        "unitPrice": 0.99
    },
    {
        "name": "Wasted My Hate",
        "albumId": 151,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "James Hetfield, Lars Ulrich, Kirk Hammett",
        "milliseconds": 237296,
        "bytes": 7762300,
        "unitPrice": 0.99
    },
    {
        "name": "Mama Said",
        "albumId": 151,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "James Hetfield, Lars Ulrich",
        "milliseconds": 319764,
        "bytes": 10508310,
        "unitPrice": 0.99
    },
    {
        "name": "Thorn Within",
        "albumId": 151,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "James Hetfield, Lars Ulrich, Kirk Hammett",
        "milliseconds": 351738,
        "bytes": 11486686,
        "unitPrice": 0.99
    },
    {
        "name": "Ronnie",
        "albumId": 151,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "James Hetfield, Lars Ulrich",
        "milliseconds": 317204,
        "bytes": 10390947,
        "unitPrice": 0.99
    },
    {
        "name": "The Outlaw Torn",
        "albumId": 151,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "James Hetfield, Lars Ulrich",
        "milliseconds": 588721,
        "bytes": 19286261,
        "unitPrice": 0.99
    },
    {
        "name": "Battery",
        "albumId": 152,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "J.Hetfield/L.Ulrich",
        "milliseconds": 312424,
        "bytes": 10229577,
        "unitPrice": 0.99
    },
    {
        "name": "Master Of Puppets",
        "albumId": 152,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "K.Hammett",
        "milliseconds": 515239,
        "bytes": 16893720,
        "unitPrice": 0.99
    },
    {
        "name": "The Thing That Should Not Be",
        "albumId": 152,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "K.Hammett",
        "milliseconds": 396199,
        "bytes": 12952368,
        "unitPrice": 0.99
    },
    {
        "name": "Welcome Home (Sanitarium)",
        "albumId": 152,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "K.Hammett",
        "milliseconds": 387186,
        "bytes": 12679965,
        "unitPrice": 0.99
    },
    {
        "name": "Disposable Heroes",
        "albumId": 152,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "J.Hetfield/L.Ulrich",
        "milliseconds": 496718,
        "bytes": 16135560,
        "unitPrice": 0.99
    },
    {
        "name": "Leper Messiah",
        "albumId": 152,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "C.Burton",
        "milliseconds": 347428,
        "bytes": 11310434,
        "unitPrice": 0.99
    },
    {
        "name": "Orion",
        "albumId": 152,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "K.Hammett",
        "milliseconds": 500062,
        "bytes": 16378477,
        "unitPrice": 0.99
    },
    {
        "name": "Damage Inc.",
        "albumId": 152,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "K.Hammett",
        "milliseconds": 330919,
        "bytes": 10725029,
        "unitPrice": 0.99
    },
    {
        "name": "Fuel",
        "albumId": 153,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Hetfield, Ulrich, Hammett",
        "milliseconds": 269557,
        "bytes": 8876811,
        "unitPrice": 0.99
    },
    {
        "name": "The Memory Remains",
        "albumId": 153,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Hetfield, Ulrich",
        "milliseconds": 279353,
        "bytes": 9110730,
        "unitPrice": 0.99
    },
    {
        "name": "Devil's Dance",
        "albumId": 153,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Hetfield, Ulrich",
        "milliseconds": 318955,
        "bytes": 10414832,
        "unitPrice": 0.99
    },
    {
        "name": "The Unforgiven II",
        "albumId": 153,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Hetfield, Ulrich, Hammett",
        "milliseconds": 395520,
        "bytes": 12886474,
        "unitPrice": 0.99
    },
    {
        "name": "Better Than You",
        "albumId": 153,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Hetfield, Ulrich",
        "milliseconds": 322899,
        "bytes": 10549070,
        "unitPrice": 0.99
    },
    {
        "name": "Slither",
        "albumId": 153,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Hetfield, Ulrich, Hammett",
        "milliseconds": 313103,
        "bytes": 10199789,
        "unitPrice": 0.99
    },
    {
        "name": "Carpe Diem Baby",
        "albumId": 153,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Hetfield, Ulrich, Hammett",
        "milliseconds": 372480,
        "bytes": 12170693,
        "unitPrice": 0.99
    },
    {
        "name": "Bad Seed",
        "albumId": 153,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Hetfield, Ulrich, Hammett",
        "milliseconds": 245394,
        "bytes": 8019586,
        "unitPrice": 0.99
    },
    {
        "name": "Where The Wild Things Are",
        "albumId": 153,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Hetfield, Ulrich, Newsted",
        "milliseconds": 414380,
        "bytes": 13571280,
        "unitPrice": 0.99
    },
    {
        "name": "Prince Charming",
        "albumId": 153,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Hetfield, Ulrich",
        "milliseconds": 365061,
        "bytes": 12009412,
        "unitPrice": 0.99
    },
    {
        "name": "Low Man's Lyric",
        "albumId": 153,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Hetfield, Ulrich",
        "milliseconds": 457639,
        "bytes": 14855583,
        "unitPrice": 0.99
    },
    {
        "name": "Attitude",
        "albumId": 153,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Hetfield, Ulrich",
        "milliseconds": 315898,
        "bytes": 10335734,
        "unitPrice": 0.99
    },
    {
        "name": "Fixxxer",
        "albumId": 153,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Hetfield, Ulrich, Hammett",
        "milliseconds": 496065,
        "bytes": 16190041,
        "unitPrice": 0.99
    },
    {
        "name": "Fight Fire With Fire",
        "albumId": 154,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Metallica",
        "milliseconds": 285753,
        "bytes": 9420856,
        "unitPrice": 0.99
    },
    {
        "name": "Ride The Lightning",
        "albumId": 154,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Metallica",
        "milliseconds": 397740,
        "bytes": 13055884,
        "unitPrice": 0.99
    },
    {
        "name": "For Whom The Bell Tolls",
        "albumId": 154,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Metallica",
        "milliseconds": 311719,
        "bytes": 10159725,
        "unitPrice": 0.99
    },
    {
        "name": "Fade To Black",
        "albumId": 154,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Metallica",
        "milliseconds": 414824,
        "bytes": 13531954,
        "unitPrice": 0.99
    },
    {
        "name": "Trapped Under Ice",
        "albumId": 154,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Metallica",
        "milliseconds": 244532,
        "bytes": 7975942,
        "unitPrice": 0.99
    },
    {
        "name": "Escape",
        "albumId": 154,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Metallica",
        "milliseconds": 264359,
        "bytes": 8652332,
        "unitPrice": 0.99
    },
    {
        "name": "Creeping Death",
        "albumId": 154,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Metallica",
        "milliseconds": 396878,
        "bytes": 12955593,
        "unitPrice": 0.99
    },
    {
        "name": "The Call Of Ktulu",
        "albumId": 154,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Metallica",
        "milliseconds": 534883,
        "bytes": 17486240,
        "unitPrice": 0.99
    },
    {
        "name": "Frantic",
        "albumId": 155,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Bob Rock/James Hetfield/Kirk Hammett/Lars Ulrich",
        "milliseconds": 350458,
        "bytes": 11510849,
        "unitPrice": 0.99
    },
    {
        "name": "St. Anger",
        "albumId": 155,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Bob Rock/James Hetfield/Kirk Hammett/Lars Ulrich",
        "milliseconds": 441234,
        "bytes": 14363779,
        "unitPrice": 0.99
    },
    {
        "name": "Some Kind Of Monster",
        "albumId": 155,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Bob Rock/James Hetfield/Kirk Hammett/Lars Ulrich",
        "milliseconds": 505626,
        "bytes": 16557497,
        "unitPrice": 0.99
    },
    {
        "name": "Dirty Window",
        "albumId": 155,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Bob Rock/James Hetfield/Kirk Hammett/Lars Ulrich",
        "milliseconds": 324989,
        "bytes": 10670604,
        "unitPrice": 0.99
    },
    {
        "name": "Invisible Kid",
        "albumId": 155,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Bob Rock/James Hetfield/Kirk Hammett/Lars Ulrich",
        "milliseconds": 510197,
        "bytes": 16591800,
        "unitPrice": 0.99
    },
    {
        "name": "My World",
        "albumId": 155,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Bob Rock/James Hetfield/Kirk Hammett/Lars Ulrich",
        "milliseconds": 345626,
        "bytes": 11253756,
        "unitPrice": 0.99
    },
    {
        "name": "Shoot Me Again",
        "albumId": 155,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Bob Rock/James Hetfield/Kirk Hammett/Lars Ulrich",
        "milliseconds": 430210,
        "bytes": 14093551,
        "unitPrice": 0.99
    },
    {
        "name": "Sweet Amber",
        "albumId": 155,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Bob Rock/James Hetfield/Kirk Hammett/Lars Ulrich",
        "milliseconds": 327235,
        "bytes": 10616595,
        "unitPrice": 0.99
    },
    {
        "name": "The Unnamed Feeling",
        "albumId": 155,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Bob Rock/James Hetfield/Kirk Hammett/Lars Ulrich",
        "milliseconds": 429479,
        "bytes": 14014582,
        "unitPrice": 0.99
    },
    {
        "name": "Purify",
        "albumId": 155,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Bob Rock/James Hetfield/Kirk Hammett/Lars Ulrich",
        "milliseconds": 314017,
        "bytes": 10232537,
        "unitPrice": 0.99
    },
    {
        "name": "All Within My Hands",
        "albumId": 155,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Bob Rock/James Hetfield/Kirk Hammett/Lars Ulrich",
        "milliseconds": 527986,
        "bytes": 17162741,
        "unitPrice": 0.99
    },
    {
        "name": "Blackened",
        "albumId": 156,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "James Hetfield, Lars Ulrich & Jason Newsted",
        "milliseconds": 403382,
        "bytes": 13254874,
        "unitPrice": 0.99
    },
    {
        "name": "...And Justice For All",
        "albumId": 156,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "James Hetfield, Lars Ulrich & Kirk Hammett",
        "milliseconds": 585769,
        "bytes": 19262088,
        "unitPrice": 0.99
    },
    {
        "name": "Eye Of The Beholder",
        "albumId": 156,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "James Hetfield, Lars Ulrich & Kirk Hammett",
        "milliseconds": 385828,
        "bytes": 12747894,
        "unitPrice": 0.99
    },
    {
        "name": "One",
        "albumId": 156,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "James Hetfield & Lars Ulrich",
        "milliseconds": 446484,
        "bytes": 14695721,
        "unitPrice": 0.99
    },
    {
        "name": "The Shortest Straw",
        "albumId": 156,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "James Hetfield and Lars Ulrich",
        "milliseconds": 395389,
        "bytes": 13013990,
        "unitPrice": 0.99
    },
    {
        "name": "Harvester Of Sorrow",
        "albumId": 156,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "James Hetfield and Lars Ulrich",
        "milliseconds": 345547,
        "bytes": 11377339,
        "unitPrice": 0.99
    },
    {
        "name": "The Frayed Ends Of Sanity",
        "albumId": 156,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "James Hetfield, Lars Ulrich and Kirk Hammett",
        "milliseconds": 464039,
        "bytes": 15198986,
        "unitPrice": 0.99
    },
    {
        "name": "To Live Is To Die",
        "albumId": 156,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "James Hetfield, Lars Ulrich and Cliff Burton",
        "milliseconds": 588564,
        "bytes": 19243795,
        "unitPrice": 0.99
    },
    {
        "name": "Dyers Eve",
        "albumId": 156,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "James Hetfield, Lars Ulrich and Kirk Hammett",
        "milliseconds": 313991,
        "bytes": 10302828,
        "unitPrice": 0.99
    },
    {
        "name": "Springsville",
        "albumId": 157,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "J. Carisi",
        "milliseconds": 207725,
        "bytes": 6776219,
        "unitPrice": 0.99
    },
    {
        "name": "The Maids Of Cadiz",
        "albumId": 157,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "L. Delibes",
        "milliseconds": 233534,
        "bytes": 7505275,
        "unitPrice": 0.99
    },
    {
        "name": "The Duke",
        "albumId": 157,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Dave Brubeck",
        "milliseconds": 214961,
        "bytes": 6977626,
        "unitPrice": 0.99
    },
    {
        "name": "My Ship",
        "albumId": 157,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Ira Gershwin, Kurt Weill",
        "milliseconds": 268016,
        "bytes": 8581144,
        "unitPrice": 0.99
    },
    {
        "name": "Miles Ahead",
        "albumId": 157,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Miles Davis, Gil Evans",
        "milliseconds": 209893,
        "bytes": 6807707,
        "unitPrice": 0.99
    },
    {
        "name": "Blues For Pablo",
        "albumId": 157,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Gil Evans",
        "milliseconds": 318328,
        "bytes": 10218398,
        "unitPrice": 0.99
    },
    {
        "name": "New Rhumba",
        "albumId": 157,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "A. Jamal",
        "milliseconds": 276871,
        "bytes": 8980400,
        "unitPrice": 0.99
    },
    {
        "name": "The Meaning Of The Blues",
        "albumId": 157,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "R. Troup, L. Worth",
        "milliseconds": 168594,
        "bytes": 5395412,
        "unitPrice": 0.99
    },
    {
        "name": "Lament",
        "albumId": 157,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "J.J. Johnson",
        "milliseconds": 134191,
        "bytes": 4293394,
        "unitPrice": 0.99
    },
    {
        "name": "I Don't Wanna Be Kissed (By Anyone But You)",
        "albumId": 157,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "H. Spina, J. Elliott",
        "milliseconds": 191320,
        "bytes": 6219487,
        "unitPrice": 0.99
    },
    {
        "name": "Springsville (Alternate Take)",
        "albumId": 157,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "J. Carisi",
        "milliseconds": 196388,
        "bytes": 6382079,
        "unitPrice": 0.99
    },
    {
        "name": "Blues For Pablo (Alternate Take)",
        "albumId": 157,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Gil Evans",
        "milliseconds": 212558,
        "bytes": 6900619,
        "unitPrice": 0.99
    },
    {
        "name": "The Meaning Of The Blues/Lament (Alternate Take)",
        "albumId": 157,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "J.J. Johnson/R. Troup, L. Worth",
        "milliseconds": 309786,
        "bytes": 9912387,
        "unitPrice": 0.99
    },
    {
        "name": "I Don't Wanna Be Kissed (By Anyone But You) (Alternate Take)",
        "albumId": 157,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "H. Spina, J. Elliott",
        "milliseconds": 192078,
        "bytes": 6254796,
        "unitPrice": 0.99
    },
    {
        "name": "Coração De Estudante",
        "albumId": 158,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Wagner Tiso, Milton Nascimento",
        "milliseconds": 238550,
        "bytes": 7797308,
        "unitPrice": 0.99
    },
    {
        "name": "A Noite Do Meu Bem",
        "albumId": 158,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Dolores Duran",
        "milliseconds": 220081,
        "bytes": 7125225,
        "unitPrice": 0.99
    },
    {
        "name": "Paisagem Na Janela",
        "albumId": 158,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Lô Borges, Fernando Brant",
        "milliseconds": 197694,
        "bytes": 6523547,
        "unitPrice": 0.99
    },
    {
        "name": "Cuitelinho",
        "albumId": 158,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Folclore",
        "milliseconds": 209397,
        "bytes": 6803970,
        "unitPrice": 0.99
    },
    {
        "name": "Caxangá",
        "albumId": 158,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Milton Nascimento, Fernando Brant",
        "milliseconds": 245551,
        "bytes": 8144179,
        "unitPrice": 0.99
    },
    {
        "name": "Nos Bailes Da Vida",
        "albumId": 158,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Milton Nascimento, Fernando Brant",
        "milliseconds": 275748,
        "bytes": 9126170,
        "unitPrice": 0.99
    },
    {
        "name": "Menestrel Das Alagoas",
        "albumId": 158,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Milton Nascimento, Fernando Brant",
        "milliseconds": 199758,
        "bytes": 6542289,
        "unitPrice": 0.99
    },
    {
        "name": "Brasil",
        "albumId": 158,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Milton Nascimento, Fernando Brant",
        "milliseconds": 155428,
        "bytes": 5252560,
        "unitPrice": 0.99
    },
    {
        "name": "Canção Do Novo Mundo",
        "albumId": 158,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Beto Guedes, Ronaldo Bastos",
        "milliseconds": 215353,
        "bytes": 7032626,
        "unitPrice": 0.99
    },
    {
        "name": "Um Gosto De Sol",
        "albumId": 158,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Milton Nascimento, Ronaldo Bastos",
        "milliseconds": 307200,
        "bytes": 9893875,
        "unitPrice": 0.99
    },
    {
        "name": "Solar",
        "albumId": 158,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Milton Nascimento, Fernando Brant",
        "milliseconds": 156212,
        "bytes": 5098288,
        "unitPrice": 0.99
    },
    {
        "name": "Para Lennon E McCartney",
        "albumId": 158,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Lô Borges, Márcio Borges, Fernando Brant",
        "milliseconds": 321828,
        "bytes": 10626920,
        "unitPrice": 0.99
    },
    {
        "name": "Maria, Maria",
        "albumId": 158,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Milton Nascimento, Fernando Brant",
        "milliseconds": 72463,
        "bytes": 2371543,
        "unitPrice": 0.99
    },
    {
        "name": "Minas",
        "albumId": 159,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Milton Nascimento, Caetano Veloso",
        "milliseconds": 152293,
        "bytes": 4921056,
        "unitPrice": 0.99
    },
    {
        "name": "Fé Cega, Faca Amolada",
        "albumId": 159,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Milton Nascimento, Ronaldo Bastos",
        "milliseconds": 278099,
        "bytes": 9258649,
        "unitPrice": 0.99
    },
    {
        "name": "Beijo Partido",
        "albumId": 159,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Toninho Horta",
        "milliseconds": 229564,
        "bytes": 7506969,
        "unitPrice": 0.99
    },
    {
        "name": "Saudade Dos Aviões Da Panair (Conversando No Bar)",
        "albumId": 159,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Milton Nascimento, Fernando Brant",
        "milliseconds": 268721,
        "bytes": 8805088,
        "unitPrice": 0.99
    },
    {
        "name": "Gran Circo",
        "albumId": 159,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Milton Nascimento, Márcio Borges",
        "milliseconds": 251297,
        "bytes": 8237026,
        "unitPrice": 0.99
    },
    {
        "name": "Ponta de Areia",
        "albumId": 159,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Milton Nascimento, Fernando Brant",
        "milliseconds": 272796,
        "bytes": 8874285,
        "unitPrice": 0.99
    },
    {
        "name": "Trastevere",
        "albumId": 159,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Milton Nascimento, Ronaldo Bastos",
        "milliseconds": 265665,
        "bytes": 8708399,
        "unitPrice": 0.99
    },
    {
        "name": "Idolatrada",
        "albumId": 159,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Milton Nascimento, Fernando Brant",
        "milliseconds": 286249,
        "bytes": 9426153,
        "unitPrice": 0.99
    },
    {
        "name": "Leila (Venha Ser Feliz)",
        "albumId": 159,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Milton Nascimento",
        "milliseconds": 209737,
        "bytes": 6898507,
        "unitPrice": 0.99
    },
    {
        "name": "Paula E Bebeto",
        "albumId": 159,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Milton Nascimento, Caetano Veloso",
        "milliseconds": 135732,
        "bytes": 4583956,
        "unitPrice": 0.99
    },
    {
        "name": "Simples",
        "albumId": 159,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Nelson Angelo",
        "milliseconds": 133093,
        "bytes": 4326333,
        "unitPrice": 0.99
    },
    {
        "name": "Norwegian Wood",
        "albumId": 159,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "John Lennon, Paul McCartney",
        "milliseconds": 413910,
        "bytes": 13520382,
        "unitPrice": 0.99
    },
    {
        "name": "Caso Você Queira Saber",
        "albumId": 159,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Beto Guedes, Márcio Borges",
        "milliseconds": 205688,
        "bytes": 6787901,
        "unitPrice": 0.99
    },
    {
        "name": "Ace Of Spades",
        "albumId": 160,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Clarke/Kilmister/Taylor",
        "milliseconds": 169926,
        "bytes": 5523552,
        "unitPrice": 0.99
    },
    {
        "name": "Love Me Like A Reptile",
        "albumId": 160,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Clarke/Kilmister/Taylor",
        "milliseconds": 203546,
        "bytes": 6616389,
        "unitPrice": 0.99
    },
    {
        "name": "Shoot You In The Back",
        "albumId": 160,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Clarke/Kilmister/Taylor",
        "milliseconds": 160026,
        "bytes": 5175327,
        "unitPrice": 0.99
    },
    {
        "name": "Live To Win",
        "albumId": 160,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Clarke/Kilmister/Taylor",
        "milliseconds": 217626,
        "bytes": 7102182,
        "unitPrice": 0.99
    },
    {
        "name": "Fast And Loose",
        "albumId": 160,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Clarke/Kilmister/Taylor",
        "milliseconds": 203337,
        "bytes": 6643350,
        "unitPrice": 0.99
    },
    {
        "name": "(We Are) The Road Crew",
        "albumId": 160,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Clarke/Kilmister/Taylor",
        "milliseconds": 192600,
        "bytes": 6283035,
        "unitPrice": 0.99
    },
    {
        "name": "Fire Fire",
        "albumId": 160,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Clarke/Kilmister/Taylor",
        "milliseconds": 164675,
        "bytes": 5416114,
        "unitPrice": 0.99
    },
    {
        "name": "Jailbait",
        "albumId": 160,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Clarke/Kilmister/Taylor",
        "milliseconds": 213916,
        "bytes": 6983609,
        "unitPrice": 0.99
    },
    {
        "name": "Dance",
        "albumId": 160,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Clarke/Kilmister/Taylor",
        "milliseconds": 158432,
        "bytes": 5155099,
        "unitPrice": 0.99
    },
    {
        "name": "Bite The Bullet",
        "albumId": 160,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Clarke/Kilmister/Taylor",
        "milliseconds": 98115,
        "bytes": 3195536,
        "unitPrice": 0.99
    },
    {
        "name": "The Chase Is Better Than The Catch",
        "albumId": 160,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Clarke/Kilmister/Taylor",
        "milliseconds": 258403,
        "bytes": 8393310,
        "unitPrice": 0.99
    },
    {
        "name": "The Hammer",
        "albumId": 160,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Clarke/Kilmister/Taylor",
        "milliseconds": 168071,
        "bytes": 5543267,
        "unitPrice": 0.99
    },
    {
        "name": "Dirty Love",
        "albumId": 160,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Clarke/Kilmister/Taylor",
        "milliseconds": 176457,
        "bytes": 5805241,
        "unitPrice": 0.99
    },
    {
        "name": "Please Don't Touch",
        "albumId": 160,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Heath/Robinson",
        "milliseconds": 169926,
        "bytes": 5557002,
        "unitPrice": 0.99
    },
    {
        "name": "Emergency",
        "albumId": 160,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Dufort/Johnson/McAuliffe/Williams",
        "milliseconds": 180427,
        "bytes": 5828728,
        "unitPrice": 0.99
    },
    {
        "name": "Kir Royal",
        "albumId": 161,
        "mediaTypeId": 1,
        "genreId": 16,
        "composer": "Mônica Marianno",
        "milliseconds": 234788,
        "bytes": 7706552,
        "unitPrice": 0.99
    },
    {
        "name": "O Que Vai Em Meu Coração",
        "albumId": 161,
        "mediaTypeId": 1,
        "genreId": 16,
        "composer": "Mônica Marianno",
        "milliseconds": 255373,
        "bytes": 8366846,
        "unitPrice": 0.99
    },
    {
        "name": "Aos Leões",
        "albumId": 161,
        "mediaTypeId": 1,
        "genreId": 16,
        "composer": "Mônica Marianno",
        "milliseconds": 234684,
        "bytes": 7790574,
        "unitPrice": 0.99
    },
    {
        "name": "Dois Índios",
        "albumId": 161,
        "mediaTypeId": 1,
        "genreId": 16,
        "composer": "Mônica Marianno",
        "milliseconds": 219271,
        "bytes": 7213072,
        "unitPrice": 0.99
    },
    {
        "name": "Noite Negra",
        "albumId": 161,
        "mediaTypeId": 1,
        "genreId": 16,
        "composer": "Mônica Marianno",
        "milliseconds": 206811,
        "bytes": 6819584,
        "unitPrice": 0.99
    },
    {
        "name": "Beijo do Olhar",
        "albumId": 161,
        "mediaTypeId": 1,
        "genreId": 16,
        "composer": "Mônica Marianno",
        "milliseconds": 252682,
        "bytes": 8369029,
        "unitPrice": 0.99
    },
    {
        "name": "É Fogo",
        "albumId": 161,
        "mediaTypeId": 1,
        "genreId": 16,
        "composer": "Mônica Marianno",
        "milliseconds": 194873,
        "bytes": 6501520,
        "unitPrice": 0.99
    },
    {
        "name": "Já Foi",
        "albumId": 161,
        "mediaTypeId": 1,
        "genreId": 16,
        "composer": "Mônica Marianno",
        "milliseconds": 245681,
        "bytes": 8094872,
        "unitPrice": 0.99
    },
    {
        "name": "Só Se For Pelo Cabelo",
        "albumId": 161,
        "mediaTypeId": 1,
        "genreId": 16,
        "composer": "Mônica Marianno",
        "milliseconds": 238288,
        "bytes": 8006345,
        "unitPrice": 0.99
    },
    {
        "name": "No Clima",
        "albumId": 161,
        "mediaTypeId": 1,
        "genreId": 16,
        "composer": "Mônica Marianno",
        "milliseconds": 249495,
        "bytes": 8362040,
        "unitPrice": 0.99
    },
    {
        "name": "A Moça e a Chuva",
        "albumId": 161,
        "mediaTypeId": 1,
        "genreId": 16,
        "composer": "Mônica Marianno",
        "milliseconds": 274625,
        "bytes": 8929357,
        "unitPrice": 0.99
    },
    {
        "name": "Demorou!",
        "albumId": 161,
        "mediaTypeId": 1,
        "genreId": 16,
        "composer": "Mônica Marianno",
        "milliseconds": 39131,
        "bytes": 1287083,
        "unitPrice": 0.99
    },
    {
        "name": "Bitter Pill",
        "albumId": 162,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Mick Mars/Nikki Sixx/Tommy Lee/Vince Neil",
        "milliseconds": 266814,
        "bytes": 8666786,
        "unitPrice": 0.99
    },
    {
        "name": "Enslaved",
        "albumId": 162,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Mick Mars/Nikki Sixx/Tommy Lee",
        "milliseconds": 269844,
        "bytes": 8789966,
        "unitPrice": 0.99
    },
    {
        "name": "Girls, Girls, Girls",
        "albumId": 162,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Mick Mars/Nikki Sixx/Tommy Lee",
        "milliseconds": 270288,
        "bytes": 8874814,
        "unitPrice": 0.99
    },
    {
        "name": "Kickstart My Heart",
        "albumId": 162,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Nikki Sixx",
        "milliseconds": 283559,
        "bytes": 9237736,
        "unitPrice": 0.99
    },
    {
        "name": "Wild Side",
        "albumId": 162,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Nikki Sixx/Tommy Lee/Vince Neil",
        "milliseconds": 276767,
        "bytes": 9116997,
        "unitPrice": 0.99
    },
    {
        "name": "Glitter",
        "albumId": 162,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Bryan Adams/Nikki Sixx/Scott Humphrey",
        "milliseconds": 340114,
        "bytes": 11184094,
        "unitPrice": 0.99
    },
    {
        "name": "Dr. Feelgood",
        "albumId": 162,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Mick Mars/Nikki Sixx",
        "milliseconds": 282618,
        "bytes": 9281875,
        "unitPrice": 0.99
    },
    {
        "name": "Same Ol' Situation",
        "albumId": 162,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Mick Mars/Nikki Sixx/Tommy Lee/Vince Neil",
        "milliseconds": 254511,
        "bytes": 8283958,
        "unitPrice": 0.99
    },
    {
        "name": "Home Sweet Home",
        "albumId": 162,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Nikki Sixx/Tommy Lee/Vince Neil",
        "milliseconds": 236904,
        "bytes": 7697538,
        "unitPrice": 0.99
    },
    {
        "name": "Afraid",
        "albumId": 162,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Nikki Sixx",
        "milliseconds": 248006,
        "bytes": 8077464,
        "unitPrice": 0.99
    },
    {
        "name": "Don't Go Away Mad (Just Go Away)",
        "albumId": 162,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Mick Mars/Nikki Sixx",
        "milliseconds": 279980,
        "bytes": 9188156,
        "unitPrice": 0.99
    },
    {
        "name": "Without You",
        "albumId": 162,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Mick Mars/Nikki Sixx",
        "milliseconds": 268956,
        "bytes": 8738371,
        "unitPrice": 0.99
    },
    {
        "name": "Smokin' in The Boys Room",
        "albumId": 162,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Cub Coda/Michael Lutz",
        "milliseconds": 206837,
        "bytes": 6735408,
        "unitPrice": 0.99
    },
    {
        "name": "Primal Scream",
        "albumId": 162,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Mick Mars/Nikki Sixx/Tommy Lee/Vince Neil",
        "milliseconds": 286197,
        "bytes": 9421164,
        "unitPrice": 0.99
    },
    {
        "name": "Too Fast For Love",
        "albumId": 162,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Nikki Sixx",
        "milliseconds": 200829,
        "bytes": 6580542,
        "unitPrice": 0.99
    },
    {
        "name": "Looks That Kill",
        "albumId": 162,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Nikki Sixx",
        "milliseconds": 240979,
        "bytes": 7831122,
        "unitPrice": 0.99
    },
    {
        "name": "Shout At The Devil",
        "albumId": 162,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Nikki Sixx",
        "milliseconds": 221962,
        "bytes": 7281974,
        "unitPrice": 0.99
    },
    {
        "name": "Intro",
        "albumId": 163,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Kurt Cobain",
        "milliseconds": 52218,
        "bytes": 1688527,
        "unitPrice": 0.99
    },
    {
        "name": "School",
        "albumId": 163,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Kurt Cobain",
        "milliseconds": 160235,
        "bytes": 5234885,
        "unitPrice": 0.99
    },
    {
        "name": "Drain You",
        "albumId": 163,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Kurt Cobain",
        "milliseconds": 215196,
        "bytes": 7013175,
        "unitPrice": 0.99
    },
    {
        "name": "Aneurysm",
        "albumId": 163,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Nirvana",
        "milliseconds": 271516,
        "bytes": 8862545,
        "unitPrice": 0.99
    },
    {
        "name": "Smells Like Teen Spirit",
        "albumId": 163,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Nirvana",
        "milliseconds": 287190,
        "bytes": 9425215,
        "unitPrice": 0.99
    },
    {
        "name": "Been A Son",
        "albumId": 163,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Kurt Cobain",
        "milliseconds": 127555,
        "bytes": 4170369,
        "unitPrice": 0.99
    },
    {
        "name": "Lithium",
        "albumId": 163,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Kurt Cobain",
        "milliseconds": 250017,
        "bytes": 8148800,
        "unitPrice": 0.99
    },
    {
        "name": "Sliver",
        "albumId": 163,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Kurt Cobain",
        "milliseconds": 116218,
        "bytes": 3784567,
        "unitPrice": 0.99
    },
    {
        "name": "Spank Thru",
        "albumId": 163,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Kurt Cobain",
        "milliseconds": 190354,
        "bytes": 6186487,
        "unitPrice": 0.99
    },
    {
        "name": "Scentless Apprentice",
        "albumId": 163,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Nirvana",
        "milliseconds": 211200,
        "bytes": 6898177,
        "unitPrice": 0.99
    },
    {
        "name": "Heart-Shaped Box",
        "albumId": 163,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Kurt Cobain",
        "milliseconds": 281887,
        "bytes": 9210982,
        "unitPrice": 0.99
    },
    {
        "name": "Milk It",
        "albumId": 163,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Kurt Cobain",
        "milliseconds": 225724,
        "bytes": 7406945,
        "unitPrice": 0.99
    },
    {
        "name": "Negative Creep",
        "albumId": 163,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Kurt Cobain",
        "milliseconds": 163761,
        "bytes": 5354854,
        "unitPrice": 0.99
    },
    {
        "name": "Polly",
        "albumId": 163,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Kurt Cobain",
        "milliseconds": 149995,
        "bytes": 4885331,
        "unitPrice": 0.99
    },
    {
        "name": "Breed",
        "albumId": 163,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Kurt Cobain",
        "milliseconds": 208378,
        "bytes": 6759080,
        "unitPrice": 0.99
    },
    {
        "name": "Tourette's",
        "albumId": 163,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Kurt Cobain",
        "milliseconds": 115591,
        "bytes": 3753246,
        "unitPrice": 0.99
    },
    {
        "name": "Blew",
        "albumId": 163,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Kurt Cobain",
        "milliseconds": 216346,
        "bytes": 7096936,
        "unitPrice": 0.99
    },
    {
        "name": "Smells Like Teen Spirit",
        "albumId": 164,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Kurt Cobain",
        "milliseconds": 301296,
        "bytes": 9823847,
        "unitPrice": 0.99
    },
    {
        "name": "In Bloom",
        "albumId": 164,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Kurt Cobain",
        "milliseconds": 254928,
        "bytes": 8327077,
        "unitPrice": 0.99
    },
    {
        "name": "Come As You Are",
        "albumId": 164,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Kurt Cobain",
        "milliseconds": 219219,
        "bytes": 7123357,
        "unitPrice": 0.99
    },
    {
        "name": "Breed",
        "albumId": 164,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Kurt Cobain",
        "milliseconds": 183928,
        "bytes": 5984812,
        "unitPrice": 0.99
    },
    {
        "name": "Lithium",
        "albumId": 164,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Kurt Cobain",
        "milliseconds": 256992,
        "bytes": 8404745,
        "unitPrice": 0.99
    },
    {
        "name": "Polly",
        "albumId": 164,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Kurt Cobain",
        "milliseconds": 177031,
        "bytes": 5788407,
        "unitPrice": 0.99
    },
    {
        "name": "Territorial Pissings",
        "albumId": 164,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Kurt Cobain",
        "milliseconds": 143281,
        "bytes": 4613880,
        "unitPrice": 0.99
    },
    {
        "name": "Drain You",
        "albumId": 164,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Kurt Cobain",
        "milliseconds": 223973,
        "bytes": 7273440,
        "unitPrice": 0.99
    },
    {
        "name": "Lounge Act",
        "albumId": 164,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Kurt Cobain",
        "milliseconds": 156786,
        "bytes": 5093635,
        "unitPrice": 0.99
    },
    {
        "name": "Stay Away",
        "albumId": 164,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Kurt Cobain",
        "milliseconds": 212636,
        "bytes": 6956404,
        "unitPrice": 0.99
    },
    {
        "name": "On A Plain",
        "albumId": 164,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Kurt Cobain",
        "milliseconds": 196440,
        "bytes": 6390635,
        "unitPrice": 0.99
    },
    {
        "name": "Something In The Way",
        "albumId": 164,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Kurt Cobain",
        "milliseconds": 230556,
        "bytes": 7472168,
        "unitPrice": 0.99
    },
    {
        "name": "Time",
        "albumId": 165,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 96888,
        "bytes": 3124455,
        "unitPrice": 0.99
    },
    {
        "name": "P.S.Apareça",
        "albumId": 165,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 209188,
        "bytes": 6842244,
        "unitPrice": 0.99
    },
    {
        "name": "Sangue Latino",
        "albumId": 165,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 223033,
        "bytes": 7354184,
        "unitPrice": 0.99
    },
    {
        "name": "Folhas Secas",
        "albumId": 165,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 161253,
        "bytes": 5284522,
        "unitPrice": 0.99
    },
    {
        "name": "Poeira",
        "albumId": 165,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 267075,
        "bytes": 8784141,
        "unitPrice": 0.99
    },
    {
        "name": "Mágica",
        "albumId": 165,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 233743,
        "bytes": 7627348,
        "unitPrice": 0.99
    },
    {
        "name": "Quem Mata A Mulher Mata O Melhor",
        "albumId": 165,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 262791,
        "bytes": 8640121,
        "unitPrice": 0.99
    },
    {
        "name": "Mundaréu",
        "albumId": 165,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 217521,
        "bytes": 7158975,
        "unitPrice": 0.99
    },
    {
        "name": "O Braço Da Minha Guitarra",
        "albumId": 165,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 258351,
        "bytes": 8469531,
        "unitPrice": 0.99
    },
    {
        "name": "Deus",
        "albumId": 165,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 284160,
        "bytes": 9188110,
        "unitPrice": 0.99
    },
    {
        "name": "Mãe Terra",
        "albumId": 165,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 306625,
        "bytes": 9949269,
        "unitPrice": 0.99
    },
    {
        "name": "Às Vezes",
        "albumId": 165,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 330292,
        "bytes": 10706614,
        "unitPrice": 0.99
    },
    {
        "name": "Menino De Rua",
        "albumId": 165,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 329795,
        "bytes": 10784595,
        "unitPrice": 0.99
    },
    {
        "name": "Prazer E Fé",
        "albumId": 165,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 214831,
        "bytes": 7031383,
        "unitPrice": 0.99
    },
    {
        "name": "Elza",
        "albumId": 165,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 199105,
        "bytes": 6517629,
        "unitPrice": 0.99
    },
    {
        "name": "Requebra",
        "albumId": 166,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 240744,
        "bytes": 8010811,
        "unitPrice": 0.99
    },
    {
        "name": "Nossa Gente (Avisa Là)",
        "albumId": 166,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 188212,
        "bytes": 6233201,
        "unitPrice": 0.99
    },
    {
        "name": "Olodum - Alegria Geral",
        "albumId": 166,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 233404,
        "bytes": 7754245,
        "unitPrice": 0.99
    },
    {
        "name": "Madagáscar Olodum",
        "albumId": 166,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 252264,
        "bytes": 8270584,
        "unitPrice": 0.99
    },
    {
        "name": "Faraó Divindade Do Egito",
        "albumId": 166,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 228571,
        "bytes": 7523278,
        "unitPrice": 0.99
    },
    {
        "name": "Todo Amor (Asas Da Liberdade)",
        "albumId": 166,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 245133,
        "bytes": 8121434,
        "unitPrice": 0.99
    },
    {
        "name": "Denúncia",
        "albumId": 166,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 159555,
        "bytes": 5327433,
        "unitPrice": 0.99
    },
    {
        "name": "Olodum, A Banda Do Pelô",
        "albumId": 166,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 146599,
        "bytes": 4900121,
        "unitPrice": 0.99
    },
    {
        "name": "Cartao Postal",
        "albumId": 166,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 211565,
        "bytes": 7082301,
        "unitPrice": 0.99
    },
    {
        "name": "Jeito Faceiro",
        "albumId": 166,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 217286,
        "bytes": 7233608,
        "unitPrice": 0.99
    },
    {
        "name": "Revolta Olodum",
        "albumId": 166,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 230191,
        "bytes": 7557065,
        "unitPrice": 0.99
    },
    {
        "name": "Reggae Odoyá",
        "albumId": 166,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 224470,
        "bytes": 7499807,
        "unitPrice": 0.99
    },
    {
        "name": "Protesto Do Olodum (Ao Vivo)",
        "albumId": 166,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 206001,
        "bytes": 6766104,
        "unitPrice": 0.99
    },
    {
        "name": "Olodum - Smile (Instrumental)",
        "albumId": 166,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 235833,
        "bytes": 7871409,
        "unitPrice": 0.99
    },
    {
        "name": "Vulcão Dub - Fui Eu",
        "albumId": 167,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Bi Ribeira/Herbert Vianna/João Barone",
        "milliseconds": 287059,
        "bytes": 9495202,
        "unitPrice": 0.99
    },
    {
        "name": "O Trem Da Juventude",
        "albumId": 167,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Herbert Vianna",
        "milliseconds": 225880,
        "bytes": 7507655,
        "unitPrice": 0.99
    },
    {
        "name": "Manguetown",
        "albumId": 167,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Chico Science/Dengue/Lúcio Maia",
        "milliseconds": 162925,
        "bytes": 5382018,
        "unitPrice": 0.99
    },
    {
        "name": "Um Amor, Um Lugar",
        "albumId": 167,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Herbert Vianna",
        "milliseconds": 184555,
        "bytes": 6090334,
        "unitPrice": 0.99
    },
    {
        "name": "Bora-Bora",
        "albumId": 167,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Herbert Vianna",
        "milliseconds": 182987,
        "bytes": 6036046,
        "unitPrice": 0.99
    },
    {
        "name": "Vai Valer",
        "albumId": 167,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Herbert Vianna",
        "milliseconds": 206524,
        "bytes": 6899778,
        "unitPrice": 0.99
    },
    {
        "name": "I Feel Good (I Got You) - Sossego",
        "albumId": 167,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "James Brown/Tim Maia",
        "milliseconds": 244976,
        "bytes": 8091302,
        "unitPrice": 0.99
    },
    {
        "name": "Uns Dias",
        "albumId": 167,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Herbert Vianna",
        "milliseconds": 240796,
        "bytes": 7931552,
        "unitPrice": 0.99
    },
    {
        "name": "Sincero Breu",
        "albumId": 167,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "C. A./C.A./Celso Alvim/Herbert Vianna/Mário Moura/Pedro Luís/Sidon Silva",
        "milliseconds": 208013,
        "bytes": 6921669,
        "unitPrice": 0.99
    },
    {
        "name": "Meu Erro",
        "albumId": 167,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Herbert Vianna",
        "milliseconds": 188577,
        "bytes": 6192791,
        "unitPrice": 0.99
    },
    {
        "name": "Selvagem",
        "albumId": 167,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Bi Ribeiro/Herbert Vianna/João Barone",
        "milliseconds": 148558,
        "bytes": 4942831,
        "unitPrice": 0.99
    },
    {
        "name": "Brasília 5:31",
        "albumId": 167,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Herbert Vianna",
        "milliseconds": 178337,
        "bytes": 5857116,
        "unitPrice": 0.99
    },
    {
        "name": "Tendo A Lua",
        "albumId": 167,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Herbert Vianna/Tet Tillett",
        "milliseconds": 198922,
        "bytes": 6568180,
        "unitPrice": 0.99
    },
    {
        "name": "Que País É Este",
        "albumId": 167,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Renato Russo",
        "milliseconds": 216685,
        "bytes": 7137865,
        "unitPrice": 0.99
    },
    {
        "name": "Navegar Impreciso",
        "albumId": 167,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Herbert Vianna",
        "milliseconds": 262870,
        "bytes": 8761283,
        "unitPrice": 0.99
    },
    {
        "name": "Feira Moderna",
        "albumId": 167,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Beto Guedes/Fernando Brant/L Borges",
        "milliseconds": 182517,
        "bytes": 6001793,
        "unitPrice": 0.99
    },
    {
        "name": "Tequila - Lourinha Bombril (Parate Y Mira)",
        "albumId": 167,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Bahiano/Chuck Rio/Diego Blanco/Herbert Vianna",
        "milliseconds": 255738,
        "bytes": 8514961,
        "unitPrice": 0.99
    },
    {
        "name": "Vamo Batê Lata",
        "albumId": 167,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Herbert Vianna",
        "milliseconds": 228754,
        "bytes": 7585707,
        "unitPrice": 0.99
    },
    {
        "name": "Life During Wartime",
        "albumId": 167,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Chris Frantz/David Byrne/Jerry Harrison/Tina Weymouth",
        "milliseconds": 259186,
        "bytes": 8543439,
        "unitPrice": 0.99
    },
    {
        "name": "Nebulosa Do Amor",
        "albumId": 167,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Herbert Vianna",
        "milliseconds": 203415,
        "bytes": 6732496,
        "unitPrice": 0.99
    },
    {
        "name": "Caleidoscópio",
        "albumId": 167,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Herbert Vianna",
        "milliseconds": 256522,
        "bytes": 8484597,
        "unitPrice": 0.99
    },
    {
        "name": "Trac Trac",
        "albumId": 168,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Fito Paez/Herbert Vianna",
        "milliseconds": 231653,
        "bytes": 7638256,
        "unitPrice": 0.99
    },
    {
        "name": "Tendo A Lua",
        "albumId": 168,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Herbert Vianna/Tetê Tillet",
        "milliseconds": 219585,
        "bytes": 7342776,
        "unitPrice": 0.99
    },
    {
        "name": "Mensagen De Amor (2000)",
        "albumId": 168,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Herbert Vianna",
        "milliseconds": 183588,
        "bytes": 6061324,
        "unitPrice": 0.99
    },
    {
        "name": "Lourinha Bombril",
        "albumId": 168,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Bahiano/Diego Blanco/Herbert Vianna",
        "milliseconds": 159895,
        "bytes": 5301882,
        "unitPrice": 0.99
    },
    {
        "name": "La Bella Luna",
        "albumId": 168,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Herbert Vianna",
        "milliseconds": 192653,
        "bytes": 6428598,
        "unitPrice": 0.99
    },
    {
        "name": "Busca Vida",
        "albumId": 168,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Herbert Vianna",
        "milliseconds": 176431,
        "bytes": 5798663,
        "unitPrice": 0.99
    },
    {
        "name": "Uma Brasileira",
        "albumId": 168,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Carlinhos Brown/Herbert Vianna",
        "milliseconds": 217573,
        "bytes": 7280574,
        "unitPrice": 0.99
    },
    {
        "name": "Luis Inacio (300 Picaretas)",
        "albumId": 168,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Herbert Vianna",
        "milliseconds": 198191,
        "bytes": 6576790,
        "unitPrice": 0.99
    },
    {
        "name": "Saber Amar",
        "albumId": 168,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Herbert Vianna",
        "milliseconds": 202788,
        "bytes": 6723733,
        "unitPrice": 0.99
    },
    {
        "name": "Ela Disse Adeus",
        "albumId": 168,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Herbert Vianna",
        "milliseconds": 226298,
        "bytes": 7608999,
        "unitPrice": 0.99
    },
    {
        "name": "O Amor Nao Sabe Esperar",
        "albumId": 168,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Herbert Vianna",
        "milliseconds": 241084,
        "bytes": 8042534,
        "unitPrice": 0.99
    },
    {
        "name": "Aonde Quer Que Eu Va",
        "albumId": 168,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Herbert Vianna/Paulo Sérgio Valle",
        "milliseconds": 258089,
        "bytes": 8470121,
        "unitPrice": 0.99
    },
    {
        "name": "Caleidoscópio",
        "albumId": 169,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 211330,
        "bytes": 7000017,
        "unitPrice": 0.99
    },
    {
        "name": "Óculos",
        "albumId": 169,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 219271,
        "bytes": 7262419,
        "unitPrice": 0.99
    },
    {
        "name": "Cinema Mudo",
        "albumId": 169,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 227918,
        "bytes": 7612168,
        "unitPrice": 0.99
    },
    {
        "name": "Alagados",
        "albumId": 169,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 302393,
        "bytes": 10255463,
        "unitPrice": 0.99
    },
    {
        "name": "Lanterna Dos Afogados",
        "albumId": 169,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 190197,
        "bytes": 6264318,
        "unitPrice": 0.99
    },
    {
        "name": "Melô Do Marinheiro",
        "albumId": 169,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 208352,
        "bytes": 6905668,
        "unitPrice": 0.99
    },
    {
        "name": "Vital E Sua Moto",
        "albumId": 169,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 210207,
        "bytes": 6902878,
        "unitPrice": 0.99
    },
    {
        "name": "O Beco",
        "albumId": 169,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 189178,
        "bytes": 6293184,
        "unitPrice": 0.99
    },
    {
        "name": "Meu Erro",
        "albumId": 169,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 208431,
        "bytes": 6893533,
        "unitPrice": 0.99
    },
    {
        "name": "Perplexo",
        "albumId": 169,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 161175,
        "bytes": 5355013,
        "unitPrice": 0.99
    },
    {
        "name": "Me Liga",
        "albumId": 169,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 229590,
        "bytes": 7565912,
        "unitPrice": 0.99
    },
    {
        "name": "Quase Um Segundo",
        "albumId": 169,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 275644,
        "bytes": 8971355,
        "unitPrice": 0.99
    },
    {
        "name": "Selvagem",
        "albumId": 169,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 245890,
        "bytes": 8141084,
        "unitPrice": 0.99
    },
    {
        "name": "Romance Ideal",
        "albumId": 169,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 250070,
        "bytes": 8260477,
        "unitPrice": 0.99
    },
    {
        "name": "Será Que Vai Chover?",
        "albumId": 169,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 337057,
        "bytes": 11133830,
        "unitPrice": 0.99
    },
    {
        "name": "SKA",
        "albumId": 169,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 148871,
        "bytes": 4943540,
        "unitPrice": 0.99
    },
    {
        "name": "Bark at the Moon",
        "albumId": 170,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": "O. Osbourne",
        "milliseconds": 257252,
        "bytes": 4601224,
        "unitPrice": 0.99
    },
    {
        "name": "I Don't Know",
        "albumId": 171,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": "B. Daisley, O. Osbourne & R. Rhoads",
        "milliseconds": 312980,
        "bytes": 5525339,
        "unitPrice": 0.99
    },
    {
        "name": "Crazy Train",
        "albumId": 171,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": "B. Daisley, O. Osbourne & R. Rhoads",
        "milliseconds": 295960,
        "bytes": 5255083,
        "unitPrice": 0.99
    },
    {
        "name": "Flying High Again",
        "albumId": 172,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": "L. Kerslake, O. Osbourne, R. Daisley & R. Rhoads",
        "milliseconds": 290851,
        "bytes": 5179599,
        "unitPrice": 0.99
    },
    {
        "name": "Mama, I'm Coming Home",
        "albumId": 173,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": "L. Kilmister, O. Osbourne & Z. Wylde",
        "milliseconds": 251586,
        "bytes": 4302390,
        "unitPrice": 0.99
    },
    {
        "name": "No More Tears",
        "albumId": 173,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": "J. Purdell, M. Inez, O. Osbourne, R. Castillo & Z. Wylde",
        "milliseconds": 444358,
        "bytes": 7362964,
        "unitPrice": 0.99
    },
    {
        "name": "I Don't Know",
        "albumId": 174,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "O. Osbourne, R. Daisley, R. Rhoads",
        "milliseconds": 283088,
        "bytes": 9207869,
        "unitPrice": 0.99
    },
    {
        "name": "Crazy Train",
        "albumId": 174,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "O. Osbourne, R. Daisley, R. Rhoads",
        "milliseconds": 322716,
        "bytes": 10517408,
        "unitPrice": 0.99
    },
    {
        "name": "Believer",
        "albumId": 174,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "O. Osbourne, R. Daisley, R. Rhoads",
        "milliseconds": 308897,
        "bytes": 10003794,
        "unitPrice": 0.99
    },
    {
        "name": "Mr. Crowley",
        "albumId": 174,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "O. Osbourne, R. Daisley, R. Rhoads",
        "milliseconds": 344241,
        "bytes": 11184130,
        "unitPrice": 0.99
    },
    {
        "name": "Flying High Again",
        "albumId": 174,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "O. Osbourne, R. Daisley, R. Rhoads, L. Kerslake",
        "milliseconds": 261224,
        "bytes": 8481822,
        "unitPrice": 0.99
    },
    {
        "name": "Relvelation (Mother Earth)",
        "albumId": 174,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "O. Osbourne, R. Daisley, R. Rhoads",
        "milliseconds": 349440,
        "bytes": 11367866,
        "unitPrice": 0.99
    },
    {
        "name": "Steal Away (The Night)",
        "albumId": 174,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "O. Osbourne, R. Daisley, R. Rhoads",
        "milliseconds": 485720,
        "bytes": 15945806,
        "unitPrice": 0.99
    },
    {
        "name": "Suicide Solution (With Guitar Solo)",
        "albumId": 174,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "O. Osbourne, R. Daisley, R. Rhoads",
        "milliseconds": 467069,
        "bytes": 15119938,
        "unitPrice": 0.99
    },
    {
        "name": "Iron Man",
        "albumId": 174,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "A. F. Iommi, W. Ward, T. Butler, J. Osbourne",
        "milliseconds": 172120,
        "bytes": 5609799,
        "unitPrice": 0.99
    },
    {
        "name": "Children Of The Grave",
        "albumId": 174,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "A. F. Iommi, W. Ward, T. Butler, J. Osbourne",
        "milliseconds": 357067,
        "bytes": 11626740,
        "unitPrice": 0.99
    },
    {
        "name": "Paranoid",
        "albumId": 174,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "A. F. Iommi, W. Ward, T. Butler, J. Osbourne",
        "milliseconds": 176352,
        "bytes": 5729813,
        "unitPrice": 0.99
    },
    {
        "name": "Goodbye To Romance",
        "albumId": 174,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "O. Osbourne, R. Daisley, R. Rhoads",
        "milliseconds": 334393,
        "bytes": 10841337,
        "unitPrice": 0.99
    },
    {
        "name": "No Bone Movies",
        "albumId": 174,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "O. Osbourne, R. Daisley, R. Rhoads",
        "milliseconds": 249208,
        "bytes": 8095199,
        "unitPrice": 0.99
    },
    {
        "name": "Dee",
        "albumId": 174,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "R. Rhoads",
        "milliseconds": 261302,
        "bytes": 8555963,
        "unitPrice": 0.99
    },
    {
        "name": "Shining In The Light",
        "albumId": 175,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page, Robert Plant, Charlie Jones, Michael Lee",
        "milliseconds": 240796,
        "bytes": 7951688,
        "unitPrice": 0.99
    },
    {
        "name": "When The World Was Young",
        "albumId": 175,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page, Robert Plant, Charlie Jones, Michael Lee",
        "milliseconds": 373394,
        "bytes": 12198930,
        "unitPrice": 0.99
    },
    {
        "name": "Upon A Golden Horse",
        "albumId": 175,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page, Robert Plant, Charlie Jones, Michael Lee",
        "milliseconds": 232359,
        "bytes": 7594829,
        "unitPrice": 0.99
    },
    {
        "name": "Blue Train",
        "albumId": 175,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page, Robert Plant, Charlie Jones, Michael Lee",
        "milliseconds": 405028,
        "bytes": 13170391,
        "unitPrice": 0.99
    },
    {
        "name": "Please Read The Letter",
        "albumId": 175,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page, Robert Plant, Charlie Jones, Michael Lee",
        "milliseconds": 262112,
        "bytes": 8603372,
        "unitPrice": 0.99
    },
    {
        "name": "Most High",
        "albumId": 175,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page, Robert Plant, Charlie Jones, Michael Lee",
        "milliseconds": 336535,
        "bytes": 10999203,
        "unitPrice": 0.99
    },
    {
        "name": "Heart In Your Hand",
        "albumId": 175,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page, Robert Plant, Charlie Jones, Michael Lee",
        "milliseconds": 230896,
        "bytes": 7598019,
        "unitPrice": 0.99
    },
    {
        "name": "Walking Into Clarksdale",
        "albumId": 175,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page, Robert Plant, Charlie Jones, Michael Lee",
        "milliseconds": 318511,
        "bytes": 10396315,
        "unitPrice": 0.99
    },
    {
        "name": "Burning Up",
        "albumId": 175,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page, Robert Plant, Charlie Jones, Michael Lee",
        "milliseconds": 321619,
        "bytes": 10525136,
        "unitPrice": 0.99
    },
    {
        "name": "When I Was A Child",
        "albumId": 175,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page, Robert Plant, Charlie Jones, Michael Lee",
        "milliseconds": 345626,
        "bytes": 11249456,
        "unitPrice": 0.99
    },
    {
        "name": "House Of Love",
        "albumId": 175,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page, Robert Plant, Charlie Jones, Michael Lee",
        "milliseconds": 335699,
        "bytes": 10990880,
        "unitPrice": 0.99
    },
    {
        "name": "Sons Of Freedom",
        "albumId": 175,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy Page, Robert Plant, Charlie Jones, Michael Lee",
        "milliseconds": 246465,
        "bytes": 8087944,
        "unitPrice": 0.99
    },
    {
        "name": "United Colours",
        "albumId": 176,
        "mediaTypeId": 1,
        "genreId": 10,
        "composer": "Brian Eno, Bono, Adam Clayton, The Edge & Larry Mullen Jnr.",
        "milliseconds": 330266,
        "bytes": 10939131,
        "unitPrice": 0.99
    },
    {
        "name": "Slug",
        "albumId": 176,
        "mediaTypeId": 1,
        "genreId": 10,
        "composer": "Brian Eno, Bono, Adam Clayton, The Edge & Larry Mullen Jnr.",
        "milliseconds": 281469,
        "bytes": 9295950,
        "unitPrice": 0.99
    },
    {
        "name": "Your Blue Room",
        "albumId": 176,
        "mediaTypeId": 1,
        "genreId": 10,
        "composer": "Brian Eno, Bono, Adam Clayton, The Edge & Larry Mullen Jnr.",
        "milliseconds": 328228,
        "bytes": 10867860,
        "unitPrice": 0.99
    },
    {
        "name": "Always Forever Now",
        "albumId": 176,
        "mediaTypeId": 1,
        "genreId": 10,
        "composer": "Brian Eno, Bono, Adam Clayton, The Edge & Larry Mullen Jnr.",
        "milliseconds": 383764,
        "bytes": 12727928,
        "unitPrice": 0.99
    },
    {
        "name": "A Different Kind Of Blue",
        "albumId": 176,
        "mediaTypeId": 1,
        "genreId": 10,
        "composer": "Brian Eno, Bono, Adam Clayton, The Edge & Larry Mullen Jnr.",
        "milliseconds": 120816,
        "bytes": 3884133,
        "unitPrice": 0.99
    },
    {
        "name": "Beach Sequence",
        "albumId": 176,
        "mediaTypeId": 1,
        "genreId": 10,
        "composer": "Brian Eno, Bono, Adam Clayton, The Edge & Larry Mullen Jnr.",
        "milliseconds": 212297,
        "bytes": 6928259,
        "unitPrice": 0.99
    },
    {
        "name": "Miss Sarajevo",
        "albumId": 176,
        "mediaTypeId": 1,
        "genreId": 10,
        "composer": "Brian Eno, Bono, Adam Clayton, The Edge & Larry Mullen Jnr.",
        "milliseconds": 340767,
        "bytes": 11064884,
        "unitPrice": 0.99
    },
    {
        "name": "Ito Okashi",
        "albumId": 176,
        "mediaTypeId": 1,
        "genreId": 10,
        "composer": "Brian Eno, Bono, Adam Clayton, The Edge & Larry Mullen Jnr.",
        "milliseconds": 205087,
        "bytes": 6572813,
        "unitPrice": 0.99
    },
    {
        "name": "One Minute Warning",
        "albumId": 176,
        "mediaTypeId": 1,
        "genreId": 10,
        "composer": "Brian Eno, Bono, Adam Clayton, The Edge & Larry Mullen Jnr.",
        "milliseconds": 279693,
        "bytes": 9335453,
        "unitPrice": 0.99
    },
    {
        "name": "Corpse (These Chains Are Way Too Long)",
        "albumId": 176,
        "mediaTypeId": 1,
        "genreId": 10,
        "composer": "Brian Eno, Bono, Adam Clayton, The Edge & Larry Mullen Jnr.",
        "milliseconds": 214909,
        "bytes": 6920451,
        "unitPrice": 0.99
    },
    {
        "name": "Elvis Ate America",
        "albumId": 176,
        "mediaTypeId": 1,
        "genreId": 10,
        "composer": "Brian Eno, Bono, Adam Clayton, The Edge & Larry Mullen Jnr.",
        "milliseconds": 180166,
        "bytes": 5851053,
        "unitPrice": 0.99
    },
    {
        "name": "Plot 180",
        "albumId": 176,
        "mediaTypeId": 1,
        "genreId": 10,
        "composer": "Brian Eno, Bono, Adam Clayton, The Edge & Larry Mullen Jnr.",
        "milliseconds": 221596,
        "bytes": 7253729,
        "unitPrice": 0.99
    },
    {
        "name": "Theme From The Swan",
        "albumId": 176,
        "mediaTypeId": 1,
        "genreId": 10,
        "composer": "Brian Eno, Bono, Adam Clayton, The Edge & Larry Mullen Jnr.",
        "milliseconds": 203911,
        "bytes": 6638076,
        "unitPrice": 0.99
    },
    {
        "name": "Theme From Let's Go Native",
        "albumId": 176,
        "mediaTypeId": 1,
        "genreId": 10,
        "composer": "Brian Eno, Bono, Adam Clayton, The Edge & Larry Mullen Jnr.",
        "milliseconds": 186723,
        "bytes": 6179777,
        "unitPrice": 0.99
    },
    {
        "name": "Wrathchild",
        "albumId": 177,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Steve Harris",
        "milliseconds": 170396,
        "bytes": 5499390,
        "unitPrice": 0.99
    },
    {
        "name": "Killers",
        "albumId": 177,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Paul Di'Anno/Steve Harris",
        "milliseconds": 309995,
        "bytes": 10009697,
        "unitPrice": 0.99
    },
    {
        "name": "Prowler",
        "albumId": 177,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Steve Harris",
        "milliseconds": 240274,
        "bytes": 7782963,
        "unitPrice": 0.99
    },
    {
        "name": "Murders In The Rue Morgue",
        "albumId": 177,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Steve Harris",
        "milliseconds": 258638,
        "bytes": 8360999,
        "unitPrice": 0.99
    },
    {
        "name": "Women In Uniform",
        "albumId": 177,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Greg Macainsh",
        "milliseconds": 189936,
        "bytes": 6139651,
        "unitPrice": 0.99
    },
    {
        "name": "Remember Tomorrow",
        "albumId": 177,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Paul Di'Anno/Steve Harris",
        "milliseconds": 326426,
        "bytes": 10577976,
        "unitPrice": 0.99
    },
    {
        "name": "Sanctuary",
        "albumId": 177,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "David Murray/Paul Di'Anno/Steve Harris",
        "milliseconds": 198844,
        "bytes": 6423543,
        "unitPrice": 0.99
    },
    {
        "name": "Running Free",
        "albumId": 177,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Paul Di'Anno/Steve Harris",
        "milliseconds": 199706,
        "bytes": 6483496,
        "unitPrice": 0.99
    },
    {
        "name": "Phantom Of The Opera",
        "albumId": 177,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Steve Harris",
        "milliseconds": 418168,
        "bytes": 13585530,
        "unitPrice": 0.99
    },
    {
        "name": "Iron Maiden",
        "albumId": 177,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Steve Harris",
        "milliseconds": 235232,
        "bytes": 7600077,
        "unitPrice": 0.99
    },
    {
        "name": "Corduroy",
        "albumId": 178,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Pearl Jam & Eddie Vedder",
        "milliseconds": 305293,
        "bytes": 9991106,
        "unitPrice": 0.99
    },
    {
        "name": "Given To Fly",
        "albumId": 178,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Eddie Vedder & Mike McCready",
        "milliseconds": 233613,
        "bytes": 7678347,
        "unitPrice": 0.99
    },
    {
        "name": "Hail, Hail",
        "albumId": 178,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Stone Gossard & Eddie Vedder & Jeff Ament & Mike McCready",
        "milliseconds": 223764,
        "bytes": 7364206,
        "unitPrice": 0.99
    },
    {
        "name": "Daughter",
        "albumId": 178,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave Abbruzzese & Jeff Ament & Stone Gossard & Mike McCready & Eddie Vedder",
        "milliseconds": 407484,
        "bytes": 13420697,
        "unitPrice": 0.99
    },
    {
        "name": "Elderly Woman Behind The Counter In A Small Town",
        "albumId": 178,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave Abbruzzese & Jeff Ament & Stone Gossard & Mike McCready & Eddie Vedder",
        "milliseconds": 229328,
        "bytes": 7509304,
        "unitPrice": 0.99
    },
    {
        "name": "Untitled",
        "albumId": 178,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Pearl Jam",
        "milliseconds": 122801,
        "bytes": 3957141,
        "unitPrice": 0.99
    },
    {
        "name": "MFC",
        "albumId": 178,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Eddie Vedder",
        "milliseconds": 148192,
        "bytes": 4817665,
        "unitPrice": 0.99
    },
    {
        "name": "Go",
        "albumId": 178,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave Abbruzzese & Jeff Ament & Stone Gossard & Mike McCready & Eddie Vedder",
        "milliseconds": 161541,
        "bytes": 5290810,
        "unitPrice": 0.99
    },
    {
        "name": "Red Mosquito",
        "albumId": 178,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jeff Ament & Stone Gossard & Jack Irons & Mike McCready & Eddie Vedder",
        "milliseconds": 242991,
        "bytes": 7944923,
        "unitPrice": 0.99
    },
    {
        "name": "Even Flow",
        "albumId": 178,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Stone Gossard & Eddie Vedder",
        "milliseconds": 317100,
        "bytes": 10394239,
        "unitPrice": 0.99
    },
    {
        "name": "Off He Goes",
        "albumId": 178,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Eddie Vedder",
        "milliseconds": 343222,
        "bytes": 11245109,
        "unitPrice": 0.99
    },
    {
        "name": "Nothingman",
        "albumId": 178,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jeff Ament & Eddie Vedder",
        "milliseconds": 278595,
        "bytes": 9107017,
        "unitPrice": 0.99
    },
    {
        "name": "Do The Evolution",
        "albumId": 178,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Eddie Vedder & Stone Gossard",
        "milliseconds": 225462,
        "bytes": 7377286,
        "unitPrice": 0.99
    },
    {
        "name": "Better Man",
        "albumId": 178,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Eddie Vedder",
        "milliseconds": 246204,
        "bytes": 8019563,
        "unitPrice": 0.99
    },
    {
        "name": "Black",
        "albumId": 178,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Stone Gossard & Eddie Vedder",
        "milliseconds": 415712,
        "bytes": 13580009,
        "unitPrice": 0.99
    },
    {
        "name": "F*Ckin' Up",
        "albumId": 178,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Neil Young",
        "milliseconds": 377652,
        "bytes": 12360893,
        "unitPrice": 0.99
    },
    {
        "name": "Life Wasted",
        "albumId": 179,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Stone Gossard",
        "milliseconds": 234344,
        "bytes": 7610169,
        "unitPrice": 0.99
    },
    {
        "name": "World Wide Suicide",
        "albumId": 179,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Eddie Vedder",
        "milliseconds": 209188,
        "bytes": 6885908,
        "unitPrice": 0.99
    },
    {
        "name": "Comatose",
        "albumId": 179,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Mike McCready & Stone Gossard",
        "milliseconds": 139990,
        "bytes": 4574516,
        "unitPrice": 0.99
    },
    {
        "name": "Severed Hand",
        "albumId": 179,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Eddie Vedder",
        "milliseconds": 270341,
        "bytes": 8817438,
        "unitPrice": 0.99
    },
    {
        "name": "Marker In The Sand",
        "albumId": 179,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Mike McCready",
        "milliseconds": 263235,
        "bytes": 8656578,
        "unitPrice": 0.99
    },
    {
        "name": "Parachutes",
        "albumId": 179,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Stone Gossard",
        "milliseconds": 216555,
        "bytes": 7074973,
        "unitPrice": 0.99
    },
    {
        "name": "Unemployable",
        "albumId": 179,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Matt Cameron & Mike McCready",
        "milliseconds": 184398,
        "bytes": 6066542,
        "unitPrice": 0.99
    },
    {
        "name": "Big Wave",
        "albumId": 179,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Jeff Ament",
        "milliseconds": 178573,
        "bytes": 5858788,
        "unitPrice": 0.99
    },
    {
        "name": "Gone",
        "albumId": 179,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Eddie Vedder",
        "milliseconds": 249547,
        "bytes": 8158204,
        "unitPrice": 0.99
    },
    {
        "name": "Wasted Reprise",
        "albumId": 179,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Stone Gossard",
        "milliseconds": 53733,
        "bytes": 1731020,
        "unitPrice": 0.99
    },
    {
        "name": "Army Reserve",
        "albumId": 179,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Jeff Ament",
        "milliseconds": 225567,
        "bytes": 7393771,
        "unitPrice": 0.99
    },
    {
        "name": "Come Back",
        "albumId": 179,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Eddie Vedder & Mike McCready",
        "milliseconds": 329743,
        "bytes": 10768701,
        "unitPrice": 0.99
    },
    {
        "name": "Inside Job",
        "albumId": 179,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Eddie Vedder & Mike McCready",
        "milliseconds": 428643,
        "bytes": 14006924,
        "unitPrice": 0.99
    },
    {
        "name": "Can't Keep",
        "albumId": 180,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Eddie Vedder",
        "milliseconds": 219428,
        "bytes": 7215713,
        "unitPrice": 0.99
    },
    {
        "name": "Save You",
        "albumId": 180,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Eddie Vedder/Jeff Ament/Matt Cameron/Mike McCready/Stone Gossard",
        "milliseconds": 230112,
        "bytes": 7609110,
        "unitPrice": 0.99
    },
    {
        "name": "Love Boat Captain",
        "albumId": 180,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Eddie Vedder",
        "milliseconds": 276453,
        "bytes": 9016789,
        "unitPrice": 0.99
    },
    {
        "name": "Cropduster",
        "albumId": 180,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Matt Cameron",
        "milliseconds": 231888,
        "bytes": 7588928,
        "unitPrice": 0.99
    },
    {
        "name": "Ghost",
        "albumId": 180,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jeff Ament",
        "milliseconds": 195108,
        "bytes": 6383772,
        "unitPrice": 0.99
    },
    {
        "name": "I Am Mine",
        "albumId": 180,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Eddie Vedder",
        "milliseconds": 215719,
        "bytes": 7086901,
        "unitPrice": 0.99
    },
    {
        "name": "Thumbing My Way",
        "albumId": 180,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Eddie Vedder",
        "milliseconds": 250226,
        "bytes": 8201437,
        "unitPrice": 0.99
    },
    {
        "name": "You Are",
        "albumId": 180,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Matt Cameron",
        "milliseconds": 270863,
        "bytes": 8938409,
        "unitPrice": 0.99
    },
    {
        "name": "Get Right",
        "albumId": 180,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Matt Cameron",
        "milliseconds": 158589,
        "bytes": 5223345,
        "unitPrice": 0.99
    },
    {
        "name": "Green Disease",
        "albumId": 180,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Eddie Vedder",
        "milliseconds": 161253,
        "bytes": 5375818,
        "unitPrice": 0.99
    },
    {
        "name": "Help Help",
        "albumId": 180,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jeff Ament",
        "milliseconds": 215092,
        "bytes": 7033002,
        "unitPrice": 0.99
    },
    {
        "name": "Bushleager",
        "albumId": 180,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Stone Gossard",
        "milliseconds": 237479,
        "bytes": 7849757,
        "unitPrice": 0.99
    },
    {
        "name": "1/2 Full",
        "albumId": 180,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jeff Ament",
        "milliseconds": 251010,
        "bytes": 8197219,
        "unitPrice": 0.99
    },
    {
        "name": "Arc",
        "albumId": 180,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Pearl Jam",
        "milliseconds": 65593,
        "bytes": 2099421,
        "unitPrice": 0.99
    },
    {
        "name": "All or None",
        "albumId": 180,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Stone Gossard",
        "milliseconds": 277655,
        "bytes": 9104728,
        "unitPrice": 0.99
    },
    {
        "name": "Once",
        "albumId": 181,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Stone Gossard",
        "milliseconds": 231758,
        "bytes": 7561555,
        "unitPrice": 0.99
    },
    {
        "name": "Evenflow",
        "albumId": 181,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Stone Gossard",
        "milliseconds": 293720,
        "bytes": 9622017,
        "unitPrice": 0.99
    },
    {
        "name": "Alive",
        "albumId": 181,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Stone Gossard",
        "milliseconds": 341080,
        "bytes": 11176623,
        "unitPrice": 0.99
    },
    {
        "name": "Why Go",
        "albumId": 181,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jeff Ament",
        "milliseconds": 200254,
        "bytes": 6539287,
        "unitPrice": 0.99
    },
    {
        "name": "Black",
        "albumId": 181,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave Krusen/Stone Gossard",
        "milliseconds": 343823,
        "bytes": 11213314,
        "unitPrice": 0.99
    },
    {
        "name": "Jeremy",
        "albumId": 181,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jeff Ament",
        "milliseconds": 318981,
        "bytes": 10447222,
        "unitPrice": 0.99
    },
    {
        "name": "Oceans",
        "albumId": 181,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jeff Ament/Stone Gossard",
        "milliseconds": 162194,
        "bytes": 5282368,
        "unitPrice": 0.99
    },
    {
        "name": "Porch",
        "albumId": 181,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Eddie Vedder",
        "milliseconds": 210520,
        "bytes": 6877475,
        "unitPrice": 0.99
    },
    {
        "name": "Garden",
        "albumId": 181,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jeff Ament/Stone Gossard",
        "milliseconds": 299154,
        "bytes": 9740738,
        "unitPrice": 0.99
    },
    {
        "name": "Deep",
        "albumId": 181,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jeff Ament/Stone Gossard",
        "milliseconds": 258324,
        "bytes": 8432497,
        "unitPrice": 0.99
    },
    {
        "name": "Release",
        "albumId": 181,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jeff Ament/Mike McCready/Stone Gossard",
        "milliseconds": 546063,
        "bytes": 17802673,
        "unitPrice": 0.99
    },
    {
        "name": "Go",
        "albumId": 182,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave Abbruzzese/Eddie Vedder/Jeff Ament/Mike McCready/Stone Gossard",
        "milliseconds": 193123,
        "bytes": 6351920,
        "unitPrice": 0.99
    },
    {
        "name": "Animal",
        "albumId": 182,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave Abbruzzese/Eddie Vedder/Jeff Ament/Mike McCready/Stone Gossard",
        "milliseconds": 169325,
        "bytes": 5503459,
        "unitPrice": 0.99
    },
    {
        "name": "Daughter",
        "albumId": 182,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave Abbruzzese/Eddie Vedder/Jeff Ament/Mike McCready/Stone Gossard",
        "milliseconds": 235598,
        "bytes": 7824586,
        "unitPrice": 0.99
    },
    {
        "name": "Glorified G",
        "albumId": 182,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave Abbruzzese/Eddie Vedder/Jeff Ament/Mike McCready/Stone Gossard",
        "milliseconds": 206968,
        "bytes": 6772116,
        "unitPrice": 0.99
    },
    {
        "name": "Dissident",
        "albumId": 182,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave Abbruzzese/Eddie Vedder/Jeff Ament/Mike McCready/Stone Gossard",
        "milliseconds": 215510,
        "bytes": 7034500,
        "unitPrice": 0.99
    },
    {
        "name": "W.M.A.",
        "albumId": 182,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave Abbruzzese/Eddie Vedder/Jeff Ament/Mike McCready/Stone Gossard",
        "milliseconds": 359262,
        "bytes": 12037261,
        "unitPrice": 0.99
    },
    {
        "name": "Blood",
        "albumId": 182,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave Abbruzzese/Eddie Vedder/Jeff Ament/Mike McCready/Stone Gossard",
        "milliseconds": 170631,
        "bytes": 5551478,
        "unitPrice": 0.99
    },
    {
        "name": "Rearviewmirror",
        "albumId": 182,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave Abbruzzese/Eddie Vedder/Jeff Ament/Mike McCready/Stone Gossard",
        "milliseconds": 284186,
        "bytes": 9321053,
        "unitPrice": 0.99
    },
    {
        "name": "Rats",
        "albumId": 182,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave Abbruzzese/Eddie Vedder/Jeff Ament/Mike McCready/Stone Gossard",
        "milliseconds": 255425,
        "bytes": 8341934,
        "unitPrice": 0.99
    },
    {
        "name": "Elderly Woman Behind The Counter In A Small Town",
        "albumId": 182,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave Abbruzzese/Eddie Vedder/Jeff Ament/Mike McCready/Stone Gossard",
        "milliseconds": 196336,
        "bytes": 6499398,
        "unitPrice": 0.99
    },
    {
        "name": "Leash",
        "albumId": 182,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave Abbruzzese/Eddie Vedder/Jeff Ament/Mike McCready/Stone Gossard",
        "milliseconds": 189257,
        "bytes": 6191560,
        "unitPrice": 0.99
    },
    {
        "name": "Indifference",
        "albumId": 182,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave Abbruzzese/Eddie Vedder/Jeff Ament/Mike McCready/Stone Gossard",
        "milliseconds": 302053,
        "bytes": 9756133,
        "unitPrice": 0.99
    },
    {
        "name": "Johnny B. Goode",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": null,
        "milliseconds": 243200,
        "bytes": 8092024,
        "unitPrice": 0.99
    },
    {
        "name": "Don't Look Back",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": null,
        "milliseconds": 221100,
        "bytes": 7344023,
        "unitPrice": 0.99
    },
    {
        "name": "Jah Seh No",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": null,
        "milliseconds": 276871,
        "bytes": 9134476,
        "unitPrice": 0.99
    },
    {
        "name": "I'm The Toughest",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": null,
        "milliseconds": 230191,
        "bytes": 7657594,
        "unitPrice": 0.99
    },
    {
        "name": "Nothing But Love",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": null,
        "milliseconds": 221570,
        "bytes": 7335228,
        "unitPrice": 0.99
    },
    {
        "name": "Buk-In-Hamm Palace",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": null,
        "milliseconds": 265665,
        "bytes": 8964369,
        "unitPrice": 0.99
    },
    {
        "name": "Bush Doctor",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": null,
        "milliseconds": 239751,
        "bytes": 7942299,
        "unitPrice": 0.99
    },
    {
        "name": "Wanted Dread And Alive",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": null,
        "milliseconds": 260310,
        "bytes": 8670933,
        "unitPrice": 0.99
    },
    {
        "name": "Mystic Man",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": null,
        "milliseconds": 353671,
        "bytes": 11812170,
        "unitPrice": 0.99
    },
    {
        "name": "Coming In Hot",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": null,
        "milliseconds": 213054,
        "bytes": 7109414,
        "unitPrice": 0.99
    },
    {
        "name": "Pick Myself Up",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": null,
        "milliseconds": 234684,
        "bytes": 7788255,
        "unitPrice": 0.99
    },
    {
        "name": "Crystal Ball",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": null,
        "milliseconds": 309733,
        "bytes": 10319296,
        "unitPrice": 0.99
    },
    {
        "name": "Equal Rights Downpresser Man",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": null,
        "milliseconds": 366733,
        "bytes": 12086524,
        "unitPrice": 0.99
    },
    {
        "name": "Speak To Me/Breathe",
        "albumId": 183,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Mason/Waters, Gilmour, Wright",
        "milliseconds": 234213,
        "bytes": 7631305,
        "unitPrice": 0.99
    },
    {
        "name": "On The Run",
        "albumId": 183,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Gilmour, Waters",
        "milliseconds": 214595,
        "bytes": 7206300,
        "unitPrice": 0.99
    },
    {
        "name": "Time",
        "albumId": 183,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Mason, Waters, Wright, Gilmour",
        "milliseconds": 425195,
        "bytes": 13955426,
        "unitPrice": 0.99
    },
    {
        "name": "The Great Gig In The Sky",
        "albumId": 183,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Wright, Waters",
        "milliseconds": 284055,
        "bytes": 9147563,
        "unitPrice": 0.99
    },
    {
        "name": "Money",
        "albumId": 183,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Waters",
        "milliseconds": 391888,
        "bytes": 12930070,
        "unitPrice": 0.99
    },
    {
        "name": "Us And Them",
        "albumId": 183,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Waters, Wright",
        "milliseconds": 461035,
        "bytes": 15000299,
        "unitPrice": 0.99
    },
    {
        "name": "Any Colour You Like",
        "albumId": 183,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Gilmour, Mason, Wright, Waters",
        "milliseconds": 205740,
        "bytes": 6707989,
        "unitPrice": 0.99
    },
    {
        "name": "Brain Damage",
        "albumId": 183,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Waters",
        "milliseconds": 230556,
        "bytes": 7497655,
        "unitPrice": 0.99
    },
    {
        "name": "Eclipse",
        "albumId": 183,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Waters",
        "milliseconds": 125361,
        "bytes": 4065299,
        "unitPrice": 0.99
    },
    {
        "name": "ZeroVinteUm",
        "albumId": 184,
        "mediaTypeId": 1,
        "genreId": 17,
        "composer": null,
        "milliseconds": 315637,
        "bytes": 10426550,
        "unitPrice": 0.99
    },
    {
        "name": "Queimando Tudo",
        "albumId": 184,
        "mediaTypeId": 1,
        "genreId": 17,
        "composer": null,
        "milliseconds": 172591,
        "bytes": 5723677,
        "unitPrice": 0.99
    },
    {
        "name": "Hip Hop Rio",
        "albumId": 184,
        "mediaTypeId": 1,
        "genreId": 17,
        "composer": null,
        "milliseconds": 151536,
        "bytes": 4991935,
        "unitPrice": 0.99
    },
    {
        "name": "Bossa",
        "albumId": 184,
        "mediaTypeId": 1,
        "genreId": 17,
        "composer": null,
        "milliseconds": 29048,
        "bytes": 967098,
        "unitPrice": 0.99
    },
    {
        "name": "100% HardCore",
        "albumId": 184,
        "mediaTypeId": 1,
        "genreId": 17,
        "composer": null,
        "milliseconds": 165146,
        "bytes": 5407744,
        "unitPrice": 0.99
    },
    {
        "name": "Biruta",
        "albumId": 184,
        "mediaTypeId": 1,
        "genreId": 17,
        "composer": null,
        "milliseconds": 213263,
        "bytes": 7108200,
        "unitPrice": 0.99
    },
    {
        "name": "Mão Na Cabeça",
        "albumId": 184,
        "mediaTypeId": 1,
        "genreId": 17,
        "composer": null,
        "milliseconds": 202631,
        "bytes": 6642753,
        "unitPrice": 0.99
    },
    {
        "name": "O Bicho Tá Pregando",
        "albumId": 184,
        "mediaTypeId": 1,
        "genreId": 17,
        "composer": null,
        "milliseconds": 171964,
        "bytes": 5683369,
        "unitPrice": 0.99
    },
    {
        "name": "Adoled (Ocean)",
        "albumId": 184,
        "mediaTypeId": 1,
        "genreId": 17,
        "composer": null,
        "milliseconds": 185103,
        "bytes": 6009946,
        "unitPrice": 0.99
    },
    {
        "name": "Seus Amigos",
        "albumId": 184,
        "mediaTypeId": 1,
        "genreId": 17,
        "composer": null,
        "milliseconds": 100858,
        "bytes": 3304738,
        "unitPrice": 0.99
    },
    {
        "name": "Paga Pau",
        "albumId": 184,
        "mediaTypeId": 1,
        "genreId": 17,
        "composer": null,
        "milliseconds": 197485,
        "bytes": 6529041,
        "unitPrice": 0.99
    },
    {
        "name": "Rappers Reais",
        "albumId": 184,
        "mediaTypeId": 1,
        "genreId": 17,
        "composer": null,
        "milliseconds": 202004,
        "bytes": 6684160,
        "unitPrice": 0.99
    },
    {
        "name": "Nega Do Cabelo Duro",
        "albumId": 184,
        "mediaTypeId": 1,
        "genreId": 17,
        "composer": null,
        "milliseconds": 121808,
        "bytes": 4116536,
        "unitPrice": 0.99
    },
    {
        "name": "Hemp Family",
        "albumId": 184,
        "mediaTypeId": 1,
        "genreId": 17,
        "composer": null,
        "milliseconds": 205923,
        "bytes": 6806900,
        "unitPrice": 0.99
    },
    {
        "name": "Quem Me Cobrou?",
        "albumId": 184,
        "mediaTypeId": 1,
        "genreId": 17,
        "composer": null,
        "milliseconds": 121704,
        "bytes": 3947664,
        "unitPrice": 0.99
    },
    {
        "name": "Se Liga",
        "albumId": 184,
        "mediaTypeId": 1,
        "genreId": 17,
        "composer": null,
        "milliseconds": 410409,
        "bytes": 13559173,
        "unitPrice": 0.99
    },
    {
        "name": "Bohemian Rhapsody",
        "albumId": 185,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Mercury, Freddie",
        "milliseconds": 358948,
        "bytes": 11619868,
        "unitPrice": 0.99
    },
    {
        "name": "Another One Bites The Dust",
        "albumId": 185,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Deacon, John",
        "milliseconds": 216946,
        "bytes": 7172355,
        "unitPrice": 0.99
    },
    {
        "name": "Killer Queen",
        "albumId": 185,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Mercury, Freddie",
        "milliseconds": 182099,
        "bytes": 5967749,
        "unitPrice": 0.99
    },
    {
        "name": "Fat Bottomed Girls",
        "albumId": 185,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "May, Brian",
        "milliseconds": 204695,
        "bytes": 6630041,
        "unitPrice": 0.99
    },
    {
        "name": "Bicycle Race",
        "albumId": 185,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Mercury, Freddie",
        "milliseconds": 183823,
        "bytes": 6012409,
        "unitPrice": 0.99
    },
    {
        "name": "You're My Best Friend",
        "albumId": 185,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Deacon, John",
        "milliseconds": 172225,
        "bytes": 5602173,
        "unitPrice": 0.99
    },
    {
        "name": "Don't Stop Me Now",
        "albumId": 185,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Mercury, Freddie",
        "milliseconds": 211826,
        "bytes": 6896666,
        "unitPrice": 0.99
    },
    {
        "name": "Save Me",
        "albumId": 185,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "May, Brian",
        "milliseconds": 228832,
        "bytes": 7444624,
        "unitPrice": 0.99
    },
    {
        "name": "Crazy Little Thing Called Love",
        "albumId": 185,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Mercury, Freddie",
        "milliseconds": 164231,
        "bytes": 5435501,
        "unitPrice": 0.99
    },
    {
        "name": "Somebody To Love",
        "albumId": 185,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Mercury, Freddie",
        "milliseconds": 297351,
        "bytes": 9650520,
        "unitPrice": 0.99
    },
    {
        "name": "Now I'm Here",
        "albumId": 185,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "May, Brian",
        "milliseconds": 255346,
        "bytes": 8328312,
        "unitPrice": 0.99
    },
    {
        "name": "Good Old-Fashioned Lover Boy",
        "albumId": 185,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Mercury, Freddie",
        "milliseconds": 175960,
        "bytes": 5747506,
        "unitPrice": 0.99
    },
    {
        "name": "Play The Game",
        "albumId": 185,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Mercury, Freddie",
        "milliseconds": 213368,
        "bytes": 6915832,
        "unitPrice": 0.99
    },
    {
        "name": "Flash",
        "albumId": 185,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "May, Brian",
        "milliseconds": 168489,
        "bytes": 5464986,
        "unitPrice": 0.99
    },
    {
        "name": "Seven Seas Of Rhye",
        "albumId": 185,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Mercury, Freddie",
        "milliseconds": 170553,
        "bytes": 5539957,
        "unitPrice": 0.99
    },
    {
        "name": "We Will Rock You",
        "albumId": 185,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Deacon, John/May, Brian",
        "milliseconds": 122880,
        "bytes": 4026955,
        "unitPrice": 0.99
    },
    {
        "name": "We Are The Champions",
        "albumId": 185,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Mercury, Freddie",
        "milliseconds": 180950,
        "bytes": 5880231,
        "unitPrice": 0.99
    },
    {
        "name": "We Will Rock You",
        "albumId": 186,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "May",
        "milliseconds": 122671,
        "bytes": 4026815,
        "unitPrice": 0.99
    },
    {
        "name": "We Are The Champions",
        "albumId": 186,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Mercury",
        "milliseconds": 182883,
        "bytes": 5939794,
        "unitPrice": 0.99
    },
    {
        "name": "Sheer Heart Attack",
        "albumId": 186,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Taylor",
        "milliseconds": 207386,
        "bytes": 6642685,
        "unitPrice": 0.99
    },
    {
        "name": "All Dead, All Dead",
        "albumId": 186,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "May",
        "milliseconds": 190119,
        "bytes": 6144878,
        "unitPrice": 0.99
    },
    {
        "name": "Spread Your Wings",
        "albumId": 186,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Deacon",
        "milliseconds": 275356,
        "bytes": 8936992,
        "unitPrice": 0.99
    },
    {
        "name": "Fight From The Inside",
        "albumId": 186,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Taylor",
        "milliseconds": 184737,
        "bytes": 6078001,
        "unitPrice": 0.99
    },
    {
        "name": "Get Down, Make Love",
        "albumId": 186,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Mercury",
        "milliseconds": 231235,
        "bytes": 7509333,
        "unitPrice": 0.99
    },
    {
        "name": "Sleep On The Sidewalk",
        "albumId": 186,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "May",
        "milliseconds": 187428,
        "bytes": 6099840,
        "unitPrice": 0.99
    },
    {
        "name": "Who Needs You",
        "albumId": 186,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Deacon",
        "milliseconds": 186958,
        "bytes": 6292969,
        "unitPrice": 0.99
    },
    {
        "name": "It's Late",
        "albumId": 186,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "May",
        "milliseconds": 386194,
        "bytes": 12519388,
        "unitPrice": 0.99
    },
    {
        "name": "My Melancholy Blues",
        "albumId": 186,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Mercury",
        "milliseconds": 206471,
        "bytes": 6691838,
        "unitPrice": 0.99
    },
    {
        "name": "Shiny Happy People",
        "albumId": 187,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Bill Berry/Michael Stipe/Mike Mills/Peter Buck",
        "milliseconds": 226298,
        "bytes": 7475323,
        "unitPrice": 0.99
    },
    {
        "name": "Me In Honey",
        "albumId": 187,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Bill Berry/Michael Stipe/Mike Mills/Peter Buck",
        "milliseconds": 246674,
        "bytes": 8194751,
        "unitPrice": 0.99
    },
    {
        "name": "Radio Song",
        "albumId": 187,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Bill Berry/Michael Stipe/Mike Mills/Peter Buck",
        "milliseconds": 255477,
        "bytes": 8421172,
        "unitPrice": 0.99
    },
    {
        "name": "Pop Song 89",
        "albumId": 188,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Bill Berry-Peter Buck-Mike Mills-Michael Stipe",
        "milliseconds": 185730,
        "bytes": 6132218,
        "unitPrice": 0.99
    },
    {
        "name": "Get Up",
        "albumId": 188,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Bill Berry-Peter Buck-Mike Mills-Michael Stipe",
        "milliseconds": 160235,
        "bytes": 5264376,
        "unitPrice": 0.99
    },
    {
        "name": "You Are The Everything",
        "albumId": 188,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Bill Berry-Peter Buck-Mike Mills-Michael Stipe",
        "milliseconds": 226298,
        "bytes": 7373181,
        "unitPrice": 0.99
    },
    {
        "name": "Stand",
        "albumId": 188,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Bill Berry-Peter Buck-Mike Mills-Michael Stipe",
        "milliseconds": 192862,
        "bytes": 6349090,
        "unitPrice": 0.99
    },
    {
        "name": "World Leader Pretend",
        "albumId": 188,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Bill Berry-Peter Buck-Mike Mills-Michael Stipe",
        "milliseconds": 259761,
        "bytes": 8537282,
        "unitPrice": 0.99
    },
    {
        "name": "The Wrong Child",
        "albumId": 188,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Bill Berry-Peter Buck-Mike Mills-Michael Stipe",
        "milliseconds": 216633,
        "bytes": 7065060,
        "unitPrice": 0.99
    },
    {
        "name": "Orange Crush",
        "albumId": 188,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Bill Berry-Peter Buck-Mike Mills-Michael Stipe",
        "milliseconds": 231706,
        "bytes": 7742894,
        "unitPrice": 0.99
    },
    {
        "name": "Turn You Inside-Out",
        "albumId": 188,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Bill Berry-Peter Buck-Mike Mills-Michael Stipe",
        "milliseconds": 257358,
        "bytes": 8395671,
        "unitPrice": 0.99
    },
    {
        "name": "Hairshirt",
        "albumId": 188,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Bill Berry-Peter Buck-Mike Mills-Michael Stipe",
        "milliseconds": 235911,
        "bytes": 7753807,
        "unitPrice": 0.99
    },
    {
        "name": "I Remember California",
        "albumId": 188,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Bill Berry-Peter Buck-Mike Mills-Michael Stipe",
        "milliseconds": 304013,
        "bytes": 9950311,
        "unitPrice": 0.99
    },
    {
        "name": "Untitled",
        "albumId": 188,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Bill Berry-Peter Buck-Mike Mills-Michael Stipe",
        "milliseconds": 191503,
        "bytes": 6332426,
        "unitPrice": 0.99
    },
    {
        "name": "How The West Was Won And Where It Got Us",
        "albumId": 189,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bill Berry-Peter Buck-Mike Mills-Michael Stipe",
        "milliseconds": 271151,
        "bytes": 8994291,
        "unitPrice": 0.99
    },
    {
        "name": "The Wake-Up Bomb",
        "albumId": 189,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bill Berry-Peter Buck-Mike Mills-Michael Stipe",
        "milliseconds": 308532,
        "bytes": 10077337,
        "unitPrice": 0.99
    },
    {
        "name": "New Test Leper",
        "albumId": 189,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bill Berry-Peter Buck-Mike Mills-Michael Stipe",
        "milliseconds": 326791,
        "bytes": 10866447,
        "unitPrice": 0.99
    },
    {
        "name": "Undertow",
        "albumId": 189,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bill Berry-Peter Buck-Mike Mills-Michael Stipe",
        "milliseconds": 309498,
        "bytes": 10131005,
        "unitPrice": 0.99
    },
    {
        "name": "E-Bow The Letter",
        "albumId": 189,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bill Berry-Peter Buck-Mike Mills-Michael Stipe",
        "milliseconds": 324963,
        "bytes": 10714576,
        "unitPrice": 0.99
    },
    {
        "name": "Leave",
        "albumId": 189,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bill Berry-Peter Buck-Mike Mills-Michael Stipe",
        "milliseconds": 437968,
        "bytes": 14433365,
        "unitPrice": 0.99
    },
    {
        "name": "Departure",
        "albumId": 189,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bill Berry-Peter Buck-Mike Mills-Michael Stipe",
        "milliseconds": 209423,
        "bytes": 6818425,
        "unitPrice": 0.99
    },
    {
        "name": "Bittersweet Me",
        "albumId": 189,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bill Berry-Peter Buck-Mike Mills-Michael Stipe",
        "milliseconds": 245812,
        "bytes": 8114718,
        "unitPrice": 0.99
    },
    {
        "name": "Be Mine",
        "albumId": 189,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bill Berry-Peter Buck-Mike Mills-Michael Stipe",
        "milliseconds": 333087,
        "bytes": 10790541,
        "unitPrice": 0.99
    },
    {
        "name": "Binky The Doormat",
        "albumId": 189,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bill Berry-Peter Buck-Mike Mills-Michael Stipe",
        "milliseconds": 301688,
        "bytes": 9950320,
        "unitPrice": 0.99
    },
    {
        "name": "Zither",
        "albumId": 189,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bill Berry-Peter Buck-Mike Mills-Michael Stipe",
        "milliseconds": 154148,
        "bytes": 5032962,
        "unitPrice": 0.99
    },
    {
        "name": "So Fast, So Numb",
        "albumId": 189,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bill Berry-Peter Buck-Mike Mills-Michael Stipe",
        "milliseconds": 252682,
        "bytes": 8341223,
        "unitPrice": 0.99
    },
    {
        "name": "Low Desert",
        "albumId": 189,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bill Berry-Peter Buck-Mike Mills-Michael Stipe",
        "milliseconds": 212062,
        "bytes": 6989288,
        "unitPrice": 0.99
    },
    {
        "name": "Electrolite",
        "albumId": 189,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bill Berry-Peter Buck-Mike Mills-Michael Stipe",
        "milliseconds": 245315,
        "bytes": 8051199,
        "unitPrice": 0.99
    },
    {
        "name": "Losing My Religion",
        "albumId": 187,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Bill Berry/Michael Stipe/Mike Mills/Peter Buck",
        "milliseconds": 269035,
        "bytes": 8885672,
        "unitPrice": 0.99
    },
    {
        "name": "Low",
        "albumId": 187,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Bill Berry/Michael Stipe/Mike Mills/Peter Buck",
        "milliseconds": 296777,
        "bytes": 9633860,
        "unitPrice": 0.99
    },
    {
        "name": "Near Wild Heaven",
        "albumId": 187,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Bill Berry/Michael Stipe/Mike Mills/Peter Buck",
        "milliseconds": 199862,
        "bytes": 6610009,
        "unitPrice": 0.99
    },
    {
        "name": "Endgame",
        "albumId": 187,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Bill Berry/Michael Stipe/Mike Mills/Peter Buck",
        "milliseconds": 230687,
        "bytes": 7664479,
        "unitPrice": 0.99
    },
    {
        "name": "Belong",
        "albumId": 187,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Bill Berry/Michael Stipe/Mike Mills/Peter Buck",
        "milliseconds": 247013,
        "bytes": 8219375,
        "unitPrice": 0.99
    },
    {
        "name": "Half A World Away",
        "albumId": 187,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Bill Berry/Michael Stipe/Mike Mills/Peter Buck",
        "milliseconds": 208431,
        "bytes": 6837283,
        "unitPrice": 0.99
    },
    {
        "name": "Texarkana",
        "albumId": 187,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Bill Berry/Michael Stipe/Mike Mills/Peter Buck",
        "milliseconds": 220081,
        "bytes": 7260681,
        "unitPrice": 0.99
    },
    {
        "name": "Country Feedback",
        "albumId": 187,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Bill Berry/Michael Stipe/Mike Mills/Peter Buck",
        "milliseconds": 249782,
        "bytes": 8178943,
        "unitPrice": 0.99
    },
    {
        "name": "Carnival Of Sorts",
        "albumId": 190,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "R.E.M.",
        "milliseconds": 233482,
        "bytes": 7669658,
        "unitPrice": 0.99
    },
    {
        "name": "Radio Free Aurope",
        "albumId": 190,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "R.E.M.",
        "milliseconds": 245315,
        "bytes": 8163490,
        "unitPrice": 0.99
    },
    {
        "name": "Perfect Circle",
        "albumId": 190,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "R.E.M.",
        "milliseconds": 208509,
        "bytes": 6898067,
        "unitPrice": 0.99
    },
    {
        "name": "Talk About The Passion",
        "albumId": 190,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "R.E.M.",
        "milliseconds": 203206,
        "bytes": 6725435,
        "unitPrice": 0.99
    },
    {
        "name": "So Central Rain",
        "albumId": 190,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "R.E.M.",
        "milliseconds": 194768,
        "bytes": 6414550,
        "unitPrice": 0.99
    },
    {
        "name": "Don't Go Back To Rockville",
        "albumId": 190,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "R.E.M.",
        "milliseconds": 272352,
        "bytes": 9010715,
        "unitPrice": 0.99
    },
    {
        "name": "Pretty Persuasion",
        "albumId": 190,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "R.E.M.",
        "milliseconds": 229929,
        "bytes": 7577754,
        "unitPrice": 0.99
    },
    {
        "name": "Green Grow The Rushes",
        "albumId": 190,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "R.E.M.",
        "milliseconds": 225671,
        "bytes": 7422425,
        "unitPrice": 0.99
    },
    {
        "name": "Can't Get There From Here",
        "albumId": 190,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "R.E.M.",
        "milliseconds": 220630,
        "bytes": 7285936,
        "unitPrice": 0.99
    },
    {
        "name": "Driver 8",
        "albumId": 190,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "R.E.M.",
        "milliseconds": 204747,
        "bytes": 6779076,
        "unitPrice": 0.99
    },
    {
        "name": "Fall On Me",
        "albumId": 190,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "R.E.M.",
        "milliseconds": 172016,
        "bytes": 5676811,
        "unitPrice": 0.99
    },
    {
        "name": "I Believe",
        "albumId": 190,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "R.E.M.",
        "milliseconds": 227709,
        "bytes": 7542929,
        "unitPrice": 0.99
    },
    {
        "name": "Cuyahoga",
        "albumId": 190,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "R.E.M.",
        "milliseconds": 260623,
        "bytes": 8591057,
        "unitPrice": 0.99
    },
    {
        "name": "The One I Love",
        "albumId": 190,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "R.E.M.",
        "milliseconds": 197355,
        "bytes": 6495125,
        "unitPrice": 0.99
    },
    {
        "name": "The Finest Worksong",
        "albumId": 190,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "R.E.M.",
        "milliseconds": 229276,
        "bytes": 7574856,
        "unitPrice": 0.99
    },
    {
        "name": "It's The End Of The World As We Know It (And I Feel Fine)",
        "albumId": 190,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "R.E.M.",
        "milliseconds": 244819,
        "bytes": 7998987,
        "unitPrice": 0.99
    },
    {
        "name": "Infeliz Natal",
        "albumId": 191,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Rodolfo",
        "milliseconds": 138266,
        "bytes": 4503299,
        "unitPrice": 0.99
    },
    {
        "name": "A Sua",
        "albumId": 191,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Rodolfo",
        "milliseconds": 142132,
        "bytes": 4622064,
        "unitPrice": 0.99
    },
    {
        "name": "Papeau Nuky Doe",
        "albumId": 191,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Rodolfo",
        "milliseconds": 121652,
        "bytes": 3995022,
        "unitPrice": 0.99
    },
    {
        "name": "Merry Christmas",
        "albumId": 191,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Rodolfo",
        "milliseconds": 126040,
        "bytes": 4166652,
        "unitPrice": 0.99
    },
    {
        "name": "Bodies",
        "albumId": 191,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Rodolfo",
        "milliseconds": 180035,
        "bytes": 5873778,
        "unitPrice": 0.99
    },
    {
        "name": "Puteiro Em João Pessoa",
        "albumId": 191,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Rodolfo",
        "milliseconds": 195578,
        "bytes": 6395490,
        "unitPrice": 0.99
    },
    {
        "name": "Esporrei Na Manivela",
        "albumId": 191,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Rodolfo",
        "milliseconds": 293276,
        "bytes": 9618499,
        "unitPrice": 0.99
    },
    {
        "name": "Bê-a-Bá",
        "albumId": 191,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Rodolfo",
        "milliseconds": 249051,
        "bytes": 8130636,
        "unitPrice": 0.99
    },
    {
        "name": "Cajueiro",
        "albumId": 191,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Rodolfo",
        "milliseconds": 158589,
        "bytes": 5164837,
        "unitPrice": 0.99
    },
    {
        "name": "Palhas Do Coqueiro",
        "albumId": 191,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Rodolfo",
        "milliseconds": 133851,
        "bytes": 4396466,
        "unitPrice": 0.99
    },
    {
        "name": "Maluco Beleza",
        "albumId": 192,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 203206,
        "bytes": 6628067,
        "unitPrice": 0.99
    },
    {
        "name": "O Dia Em Que A Terra Parou",
        "albumId": 192,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 261720,
        "bytes": 8586678,
        "unitPrice": 0.99
    },
    {
        "name": "No Fundo Do Quintal Da Escola",
        "albumId": 192,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 177606,
        "bytes": 5836953,
        "unitPrice": 0.99
    },
    {
        "name": "O Segredo Do Universo",
        "albumId": 192,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 192679,
        "bytes": 6315187,
        "unitPrice": 0.99
    },
    {
        "name": "As Profecias",
        "albumId": 192,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 232515,
        "bytes": 7657732,
        "unitPrice": 0.99
    },
    {
        "name": "Mata Virgem",
        "albumId": 192,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 142602,
        "bytes": 4690029,
        "unitPrice": 0.99
    },
    {
        "name": "Sapato 36",
        "albumId": 192,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 196702,
        "bytes": 6507301,
        "unitPrice": 0.99
    },
    {
        "name": "Todo Mundo Explica",
        "albumId": 192,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 134896,
        "bytes": 4449772,
        "unitPrice": 0.99
    },
    {
        "name": "Que Luz É Essa",
        "albumId": 192,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 165067,
        "bytes": 5620058,
        "unitPrice": 0.99
    },
    {
        "name": "Diamante De Mendigo",
        "albumId": 192,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 206053,
        "bytes": 6775101,
        "unitPrice": 0.99
    },
    {
        "name": "Negócio É",
        "albumId": 192,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 175464,
        "bytes": 5826775,
        "unitPrice": 0.99
    },
    {
        "name": "Muita Estrela, Pouca Constelação",
        "albumId": 192,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 268068,
        "bytes": 8781021,
        "unitPrice": 0.99
    },
    {
        "name": "Século XXI",
        "albumId": 192,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 244897,
        "bytes": 8040563,
        "unitPrice": 0.99
    },
    {
        "name": "Rock Das Aranhas (Ao Vivo) (Live)",
        "albumId": 192,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 231836,
        "bytes": 7591945,
        "unitPrice": 0.99
    },
    {
        "name": "The Power Of Equality",
        "albumId": 193,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Anthony Kiedis/Chad Smith/Flea/John Frusciante",
        "milliseconds": 243591,
        "bytes": 8148266,
        "unitPrice": 0.99
    },
    {
        "name": "If You Have To Ask",
        "albumId": 193,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Anthony Kiedis/Chad Smith/Flea/John Frusciante",
        "milliseconds": 216790,
        "bytes": 7199175,
        "unitPrice": 0.99
    },
    {
        "name": "Breaking The Girl",
        "albumId": 193,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Anthony Kiedis/Chad Smith/Flea/John Frusciante",
        "milliseconds": 295497,
        "bytes": 9805526,
        "unitPrice": 0.99
    },
    {
        "name": "Funky Monks",
        "albumId": 193,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Anthony Kiedis/Chad Smith/Flea/John Frusciante",
        "milliseconds": 323395,
        "bytes": 10708168,
        "unitPrice": 0.99
    },
    {
        "name": "Suck My Kiss",
        "albumId": 193,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Anthony Kiedis/Chad Smith/Flea/John Frusciante",
        "milliseconds": 217234,
        "bytes": 7129137,
        "unitPrice": 0.99
    },
    {
        "name": "I Could Have Lied",
        "albumId": 193,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Anthony Kiedis/Chad Smith/Flea/John Frusciante",
        "milliseconds": 244506,
        "bytes": 8088244,
        "unitPrice": 0.99
    },
    {
        "name": "Mellowship Slinky In B Major",
        "albumId": 193,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Anthony Kiedis/Chad Smith/Flea/John Frusciante",
        "milliseconds": 240091,
        "bytes": 7971384,
        "unitPrice": 0.99
    },
    {
        "name": "The Righteous & The Wicked",
        "albumId": 193,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Anthony Kiedis/Chad Smith/Flea/John Frusciante",
        "milliseconds": 248084,
        "bytes": 8134096,
        "unitPrice": 0.99
    },
    {
        "name": "Give It Away",
        "albumId": 193,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Anthony Kiedis/Chad Smith/Flea/John Frusciante",
        "milliseconds": 283010,
        "bytes": 9308997,
        "unitPrice": 0.99
    },
    {
        "name": "Blood Sugar Sex Magik",
        "albumId": 193,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Anthony Kiedis/Chad Smith/Flea/John Frusciante",
        "milliseconds": 271229,
        "bytes": 8940573,
        "unitPrice": 0.99
    },
    {
        "name": "Under The Bridge",
        "albumId": 193,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Anthony Kiedis/Chad Smith/Flea/John Frusciante",
        "milliseconds": 264359,
        "bytes": 8682716,
        "unitPrice": 0.99
    },
    {
        "name": "Naked In The Rain",
        "albumId": 193,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Anthony Kiedis/Chad Smith/Flea/John Frusciante",
        "milliseconds": 265717,
        "bytes": 8724674,
        "unitPrice": 0.99
    },
    {
        "name": "Apache Rose Peacock",
        "albumId": 193,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Anthony Kiedis/Chad Smith/Flea/John Frusciante",
        "milliseconds": 282226,
        "bytes": 9312588,
        "unitPrice": 0.99
    },
    {
        "name": "The Greeting Song",
        "albumId": 193,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Anthony Kiedis/Chad Smith/Flea/John Frusciante",
        "milliseconds": 193593,
        "bytes": 6346507,
        "unitPrice": 0.99
    },
    {
        "name": "My Lovely Man",
        "albumId": 193,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Anthony Kiedis/Chad Smith/Flea/John Frusciante",
        "milliseconds": 279118,
        "bytes": 9220114,
        "unitPrice": 0.99
    },
    {
        "name": "Sir Psycho Sexy",
        "albumId": 193,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Anthony Kiedis/Chad Smith/Flea/John Frusciante",
        "milliseconds": 496692,
        "bytes": 16354362,
        "unitPrice": 0.99
    },
    {
        "name": "They're Red Hot",
        "albumId": 193,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Robert Johnson",
        "milliseconds": 71941,
        "bytes": 2382220,
        "unitPrice": 0.99
    },
    {
        "name": "By The Way",
        "albumId": 194,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Anthony Kiedis, Flea, John Frusciante, and Chad Smith",
        "milliseconds": 218017,
        "bytes": 7197430,
        "unitPrice": 0.99
    },
    {
        "name": "Universally Speaking",
        "albumId": 194,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Anthony Kiedis, Flea, John Frusciante, and Chad Smith",
        "milliseconds": 259213,
        "bytes": 8501904,
        "unitPrice": 0.99
    },
    {
        "name": "This Is The Place",
        "albumId": 194,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Anthony Kiedis, Flea, John Frusciante, and Chad Smith",
        "milliseconds": 257906,
        "bytes": 8469765,
        "unitPrice": 0.99
    },
    {
        "name": "Dosed",
        "albumId": 194,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Anthony Kiedis, Flea, John Frusciante, and Chad Smith",
        "milliseconds": 312058,
        "bytes": 10235611,
        "unitPrice": 0.99
    },
    {
        "name": "Don't Forget Me",
        "albumId": 194,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Anthony Kiedis, Flea, John Frusciante, and Chad Smith",
        "milliseconds": 277995,
        "bytes": 9107071,
        "unitPrice": 0.99
    },
    {
        "name": "The Zephyr Song",
        "albumId": 194,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Anthony Kiedis, Flea, John Frusciante, and Chad Smith",
        "milliseconds": 232960,
        "bytes": 7690312,
        "unitPrice": 0.99
    },
    {
        "name": "Can't Stop",
        "albumId": 194,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Anthony Kiedis, Flea, John Frusciante, and Chad Smith",
        "milliseconds": 269400,
        "bytes": 8872479,
        "unitPrice": 0.99
    },
    {
        "name": "I Could Die For You",
        "albumId": 194,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Anthony Kiedis, Flea, John Frusciante, and Chad Smith",
        "milliseconds": 193906,
        "bytes": 6333311,
        "unitPrice": 0.99
    },
    {
        "name": "Midnight",
        "albumId": 194,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Anthony Kiedis, Flea, John Frusciante, and Chad Smith",
        "milliseconds": 295810,
        "bytes": 9702450,
        "unitPrice": 0.99
    },
    {
        "name": "Throw Away Your Television",
        "albumId": 194,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Anthony Kiedis, Flea, John Frusciante, and Chad Smith",
        "milliseconds": 224574,
        "bytes": 7483526,
        "unitPrice": 0.99
    },
    {
        "name": "Cabron",
        "albumId": 194,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Anthony Kiedis, Flea, John Frusciante, and Chad Smith",
        "milliseconds": 218592,
        "bytes": 7458864,
        "unitPrice": 0.99
    },
    {
        "name": "Tear",
        "albumId": 194,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Anthony Kiedis, Flea, John Frusciante, and Chad Smith",
        "milliseconds": 317413,
        "bytes": 10395500,
        "unitPrice": 0.99
    },
    {
        "name": "On Mercury",
        "albumId": 194,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Anthony Kiedis, Flea, John Frusciante, and Chad Smith",
        "milliseconds": 208509,
        "bytes": 6834762,
        "unitPrice": 0.99
    },
    {
        "name": "Minor Thing",
        "albumId": 194,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Anthony Kiedis, Flea, John Frusciante, and Chad Smith",
        "milliseconds": 217835,
        "bytes": 7148115,
        "unitPrice": 0.99
    },
    {
        "name": "Warm Tape",
        "albumId": 194,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Anthony Kiedis, Flea, John Frusciante, and Chad Smith",
        "milliseconds": 256653,
        "bytes": 8358200,
        "unitPrice": 0.99
    },
    {
        "name": "Venice Queen",
        "albumId": 194,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Anthony Kiedis, Flea, John Frusciante, and Chad Smith",
        "milliseconds": 369110,
        "bytes": 12280381,
        "unitPrice": 0.99
    },
    {
        "name": "Around The World",
        "albumId": 195,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Anthony Kiedis/Chad Smith/Flea/John Frusciante",
        "milliseconds": 238837,
        "bytes": 7859167,
        "unitPrice": 0.99
    },
    {
        "name": "Parallel Universe",
        "albumId": 195,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Red Hot Chili Peppers",
        "milliseconds": 270654,
        "bytes": 8958519,
        "unitPrice": 0.99
    },
    {
        "name": "Scar Tissue",
        "albumId": 195,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Red Hot Chili Peppers",
        "milliseconds": 217469,
        "bytes": 7153744,
        "unitPrice": 0.99
    },
    {
        "name": "Otherside",
        "albumId": 195,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Red Hot Chili Peppers",
        "milliseconds": 255973,
        "bytes": 8357989,
        "unitPrice": 0.99
    },
    {
        "name": "Get On Top",
        "albumId": 195,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Red Hot Chili Peppers",
        "milliseconds": 198164,
        "bytes": 6587883,
        "unitPrice": 0.99
    },
    {
        "name": "Californication",
        "albumId": 195,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Red Hot Chili Peppers",
        "milliseconds": 321671,
        "bytes": 10568999,
        "unitPrice": 0.99
    },
    {
        "name": "Easily",
        "albumId": 195,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Red Hot Chili Peppers",
        "milliseconds": 231418,
        "bytes": 7504534,
        "unitPrice": 0.99
    },
    {
        "name": "Porcelain",
        "albumId": 195,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Anthony Kiedis/Chad Smith/Flea/John Frusciante",
        "milliseconds": 163787,
        "bytes": 5278793,
        "unitPrice": 0.99
    },
    {
        "name": "Emit Remmus",
        "albumId": 195,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Red Hot Chili Peppers",
        "milliseconds": 240300,
        "bytes": 7901717,
        "unitPrice": 0.99
    },
    {
        "name": "I Like Dirt",
        "albumId": 195,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Red Hot Chili Peppers",
        "milliseconds": 157727,
        "bytes": 5225917,
        "unitPrice": 0.99
    },
    {
        "name": "This Velvet Glove",
        "albumId": 195,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Red Hot Chili Peppers",
        "milliseconds": 225280,
        "bytes": 7480537,
        "unitPrice": 0.99
    },
    {
        "name": "Savior",
        "albumId": 195,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Anthony Kiedis/Chad Smith/Flea/John Frusciante",
        "milliseconds": 292493,
        "bytes": 9551885,
        "unitPrice": 0.99
    },
    {
        "name": "Purple Stain",
        "albumId": 195,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Red Hot Chili Peppers",
        "milliseconds": 253440,
        "bytes": 8359971,
        "unitPrice": 0.99
    },
    {
        "name": "Right On Time",
        "albumId": 195,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Red Hot Chili Peppers",
        "milliseconds": 112613,
        "bytes": 3722219,
        "unitPrice": 0.99
    },
    {
        "name": "Road Trippin'",
        "albumId": 195,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Red Hot Chili Peppers",
        "milliseconds": 205635,
        "bytes": 6685831,
        "unitPrice": 0.99
    },
    {
        "name": "The Spirit Of Radio",
        "albumId": 196,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Geddy Lee And Alex Lifeson/Geddy Lee And Neil Peart/Rush",
        "milliseconds": 299154,
        "bytes": 9862012,
        "unitPrice": 0.99
    },
    {
        "name": "The Trees",
        "albumId": 196,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Geddy Lee And Alex Lifeson/Geddy Lee And Neil Peart/Rush",
        "milliseconds": 285126,
        "bytes": 9345473,
        "unitPrice": 0.99
    },
    {
        "name": "Something For Nothing",
        "albumId": 196,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Geddy Lee And Alex Lifeson/Geddy Lee And Neil Peart/Rush",
        "milliseconds": 240770,
        "bytes": 7898395,
        "unitPrice": 0.99
    },
    {
        "name": "Freewill",
        "albumId": 196,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Geddy Lee And Alex Lifeson/Geddy Lee And Neil Peart/Rush",
        "milliseconds": 324362,
        "bytes": 10694110,
        "unitPrice": 0.99
    },
    {
        "name": "Xanadu",
        "albumId": 196,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Geddy Lee And Alex Lifeson/Geddy Lee And Neil Peart/Rush",
        "milliseconds": 667428,
        "bytes": 21753168,
        "unitPrice": 0.99
    },
    {
        "name": "Bastille Day",
        "albumId": 196,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Geddy Lee And Alex Lifeson/Geddy Lee And Neil Peart/Rush",
        "milliseconds": 280528,
        "bytes": 9264769,
        "unitPrice": 0.99
    },
    {
        "name": "By-Tor And The Snow Dog",
        "albumId": 196,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Geddy Lee And Alex Lifeson/Geddy Lee And Neil Peart/Rush",
        "milliseconds": 519888,
        "bytes": 17076397,
        "unitPrice": 0.99
    },
    {
        "name": "Anthem",
        "albumId": 196,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Geddy Lee And Alex Lifeson/Geddy Lee And Neil Peart/Rush",
        "milliseconds": 264515,
        "bytes": 8693343,
        "unitPrice": 0.99
    },
    {
        "name": "Closer To The Heart",
        "albumId": 196,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Geddy Lee And Alex Lifeson/Geddy Lee And Neil Peart/Rush",
        "milliseconds": 175412,
        "bytes": 5767005,
        "unitPrice": 0.99
    },
    {
        "name": "2112 Overture",
        "albumId": 196,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Geddy Lee And Alex Lifeson/Geddy Lee And Neil Peart/Rush",
        "milliseconds": 272718,
        "bytes": 8898066,
        "unitPrice": 0.99
    },
    {
        "name": "The Temples Of Syrinx",
        "albumId": 196,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Geddy Lee And Alex Lifeson/Geddy Lee And Neil Peart/Rush",
        "milliseconds": 133459,
        "bytes": 4360163,
        "unitPrice": 0.99
    },
    {
        "name": "La Villa Strangiato",
        "albumId": 196,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Geddy Lee And Alex Lifeson/Geddy Lee And Neil Peart/Rush",
        "milliseconds": 577488,
        "bytes": 19137855,
        "unitPrice": 0.99
    },
    {
        "name": "Fly By Night",
        "albumId": 196,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Geddy Lee And Alex Lifeson/Geddy Lee And Neil Peart/Rush",
        "milliseconds": 202318,
        "bytes": 6683061,
        "unitPrice": 0.99
    },
    {
        "name": "Finding My Way",
        "albumId": 196,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Geddy Lee And Alex Lifeson/Geddy Lee And Neil Peart/Rush",
        "milliseconds": 305528,
        "bytes": 9985701,
        "unitPrice": 0.99
    },
    {
        "name": "Jingo",
        "albumId": 197,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "M.Babatunde Olantunji",
        "milliseconds": 592953,
        "bytes": 19736495,
        "unitPrice": 0.99
    },
    {
        "name": "El Corazon Manda",
        "albumId": 197,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "E.Weiss",
        "milliseconds": 713534,
        "bytes": 23519583,
        "unitPrice": 0.99
    },
    {
        "name": "La Puesta Del Sol",
        "albumId": 197,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "E.Weiss",
        "milliseconds": 628062,
        "bytes": 20614621,
        "unitPrice": 0.99
    },
    {
        "name": "Persuasion",
        "albumId": 197,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Carlos Santana",
        "milliseconds": 318432,
        "bytes": 10354751,
        "unitPrice": 0.99
    },
    {
        "name": "As The Years Go by",
        "albumId": 197,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Albert King",
        "milliseconds": 233064,
        "bytes": 7566829,
        "unitPrice": 0.99
    },
    {
        "name": "Soul Sacrifice",
        "albumId": 197,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Carlos Santana",
        "milliseconds": 296437,
        "bytes": 9801120,
        "unitPrice": 0.99
    },
    {
        "name": "Fried Neckbones And Home Fries",
        "albumId": 197,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "W.Correa",
        "milliseconds": 638563,
        "bytes": 20939646,
        "unitPrice": 0.99
    },
    {
        "name": "Santana Jam",
        "albumId": 197,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Carlos Santana",
        "milliseconds": 882834,
        "bytes": 29207100,
        "unitPrice": 0.99
    },
    {
        "name": "Evil Ways",
        "albumId": 198,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 475402,
        "bytes": 15289235,
        "unitPrice": 0.99
    },
    {
        "name": "We've Got To Get Together/Jingo",
        "albumId": 198,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 1070027,
        "bytes": 34618222,
        "unitPrice": 0.99
    },
    {
        "name": "Rock Me",
        "albumId": 198,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 94720,
        "bytes": 3037596,
        "unitPrice": 0.99
    },
    {
        "name": "Just Ain't Good Enough",
        "albumId": 198,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 850259,
        "bytes": 27489067,
        "unitPrice": 0.99
    },
    {
        "name": "Funky Piano",
        "albumId": 198,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 934791,
        "bytes": 30200730,
        "unitPrice": 0.99
    },
    {
        "name": "The Way You Do To Mer",
        "albumId": 198,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 618344,
        "bytes": 20028702,
        "unitPrice": 0.99
    },
    {
        "name": "Holding Back The Years",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Mick Hucknall and Neil Moss",
        "milliseconds": 270053,
        "bytes": 8833220,
        "unitPrice": 0.99
    },
    {
        "name": "Money's Too Tight To Mention",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "John and William Valentine",
        "milliseconds": 268408,
        "bytes": 8861921,
        "unitPrice": 0.99
    },
    {
        "name": "The Right Thing",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Mick Hucknall",
        "milliseconds": 262687,
        "bytes": 8624063,
        "unitPrice": 0.99
    },
    {
        "name": "It's Only Love",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jimmy and Vella Cameron",
        "milliseconds": 232594,
        "bytes": 7659017,
        "unitPrice": 0.99
    },
    {
        "name": "A New Flame",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Mick Hucknall",
        "milliseconds": 237662,
        "bytes": 7822875,
        "unitPrice": 0.99
    },
    {
        "name": "You've Got It",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Mick Hucknall and Lamont Dozier",
        "milliseconds": 235232,
        "bytes": 7712845,
        "unitPrice": 0.99
    },
    {
        "name": "If You Don't Know Me By Now",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Kenny Gamble and Leon Huff",
        "milliseconds": 206524,
        "bytes": 6712634,
        "unitPrice": 0.99
    },
    {
        "name": "Stars",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Mick Hucknall",
        "milliseconds": 248137,
        "bytes": 8194906,
        "unitPrice": 0.99
    },
    {
        "name": "Something Got Me Started",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Mick Hucknall and Fritz McIntyre",
        "milliseconds": 239595,
        "bytes": 7997139,
        "unitPrice": 0.99
    },
    {
        "name": "Thrill Me",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Mick Hucknall and Fritz McIntyre",
        "milliseconds": 303934,
        "bytes": 10034711,
        "unitPrice": 0.99
    },
    {
        "name": "Your Mirror",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Mick Hucknall",
        "milliseconds": 240666,
        "bytes": 7893821,
        "unitPrice": 0.99
    },
    {
        "name": "For Your Babies",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Mick Hucknall",
        "milliseconds": 256992,
        "bytes": 8408803,
        "unitPrice": 0.99
    },
    {
        "name": "So Beautiful",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Mick Hucknall",
        "milliseconds": 298083,
        "bytes": 9837832,
        "unitPrice": 0.99
    },
    {
        "name": "Angel",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Carolyn Franklin and Sonny Saunders",
        "milliseconds": 240561,
        "bytes": 7880256,
        "unitPrice": 0.99
    },
    {
        "name": "Fairground",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Mick Hucknall",
        "milliseconds": 263888,
        "bytes": 8793094,
        "unitPrice": 0.99
    },
    {
        "name": "Água E Fogo",
        "albumId": 199,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Chico Amaral/Edgard Scandurra/Samuel Rosa",
        "milliseconds": 278987,
        "bytes": 9272272,
        "unitPrice": 0.99
    },
    {
        "name": "Três Lados",
        "albumId": 199,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Chico Amaral/Samuel Rosa",
        "milliseconds": 233665,
        "bytes": 7699609,
        "unitPrice": 0.99
    },
    {
        "name": "Ela Desapareceu",
        "albumId": 199,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Chico Amaral/Samuel Rosa",
        "milliseconds": 250122,
        "bytes": 8289200,
        "unitPrice": 0.99
    },
    {
        "name": "Balada Do Amor Inabalável",
        "albumId": 199,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Fausto Fawcett/Samuel Rosa",
        "milliseconds": 240613,
        "bytes": 8025816,
        "unitPrice": 0.99
    },
    {
        "name": "Canção Noturna",
        "albumId": 199,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Chico Amaral/Lelo Zanettik",
        "milliseconds": 238628,
        "bytes": 7874774,
        "unitPrice": 0.99
    },
    {
        "name": "Muçulmano",
        "albumId": 199,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Leão, Rodrigo F./Samuel Rosa",
        "milliseconds": 249600,
        "bytes": 8270613,
        "unitPrice": 0.99
    },
    {
        "name": "Maquinarama",
        "albumId": 199,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Chico Amaral/Samuel Rosa",
        "milliseconds": 245629,
        "bytes": 8213710,
        "unitPrice": 0.99
    },
    {
        "name": "Rebelião",
        "albumId": 199,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Chico Amaral/Samuel Rosa",
        "milliseconds": 298527,
        "bytes": 9817847,
        "unitPrice": 0.99
    },
    {
        "name": "A Última Guerra",
        "albumId": 199,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Leão, Rodrigo F./Lô Borges/Samuel Rosa",
        "milliseconds": 314723,
        "bytes": 10480391,
        "unitPrice": 0.99
    },
    {
        "name": "Fica",
        "albumId": 199,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Chico Amaral/Samuel Rosa",
        "milliseconds": 272169,
        "bytes": 8980972,
        "unitPrice": 0.99
    },
    {
        "name": "Ali",
        "albumId": 199,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Nando Reis/Samuel Rosa",
        "milliseconds": 306390,
        "bytes": 10110351,
        "unitPrice": 0.99
    },
    {
        "name": "Preto Damião",
        "albumId": 199,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Chico Amaral/Samuel Rosa",
        "milliseconds": 264568,
        "bytes": 8697658,
        "unitPrice": 0.99
    },
    {
        "name": "É Uma Partida De Futebol",
        "albumId": 200,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Samuel Rosa",
        "milliseconds": 1071,
        "bytes": 38747,
        "unitPrice": 0.99
    },
    {
        "name": "Eu Disse A Ela",
        "albumId": 200,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Samuel Rosa",
        "milliseconds": 254223,
        "bytes": 8479463,
        "unitPrice": 0.99
    },
    {
        "name": "Zé Trindade",
        "albumId": 200,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Samuel Rosa",
        "milliseconds": 247954,
        "bytes": 8331310,
        "unitPrice": 0.99
    },
    {
        "name": "Garota Nacional",
        "albumId": 200,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Samuel Rosa",
        "milliseconds": 317492,
        "bytes": 10511239,
        "unitPrice": 0.99
    },
    {
        "name": "Tão Seu",
        "albumId": 200,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Samuel Rosa",
        "milliseconds": 243748,
        "bytes": 8133126,
        "unitPrice": 0.99
    },
    {
        "name": "Sem Terra",
        "albumId": 200,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Samuel Rosa",
        "milliseconds": 279353,
        "bytes": 9196411,
        "unitPrice": 0.99
    },
    {
        "name": "Os Exilados",
        "albumId": 200,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Samuel Rosa",
        "milliseconds": 245551,
        "bytes": 8222095,
        "unitPrice": 0.99
    },
    {
        "name": "Um Dia Qualquer",
        "albumId": 200,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Samuel Rosa",
        "milliseconds": 292414,
        "bytes": 9805570,
        "unitPrice": 0.99
    },
    {
        "name": "Los Pretos",
        "albumId": 200,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Samuel Rosa",
        "milliseconds": 239229,
        "bytes": 8025667,
        "unitPrice": 0.99
    },
    {
        "name": "Sul Da América",
        "albumId": 200,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Samuel Rosa",
        "milliseconds": 254928,
        "bytes": 8484871,
        "unitPrice": 0.99
    },
    {
        "name": "Poconé",
        "albumId": 200,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Samuel Rosa",
        "milliseconds": 318406,
        "bytes": 10771610,
        "unitPrice": 0.99
    },
    {
        "name": "Lucky 13",
        "albumId": 201,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billy Corgan",
        "milliseconds": 189387,
        "bytes": 6200617,
        "unitPrice": 0.99
    },
    {
        "name": "Aeroplane Flies High",
        "albumId": 201,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billy Corgan",
        "milliseconds": 473391,
        "bytes": 15408329,
        "unitPrice": 0.99
    },
    {
        "name": "Because You Are",
        "albumId": 201,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billy Corgan",
        "milliseconds": 226403,
        "bytes": 7405137,
        "unitPrice": 0.99
    },
    {
        "name": "Slow Dawn",
        "albumId": 201,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billy Corgan",
        "milliseconds": 192339,
        "bytes": 6269057,
        "unitPrice": 0.99
    },
    {
        "name": "Believe",
        "albumId": 201,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "James Iha",
        "milliseconds": 192940,
        "bytes": 6320652,
        "unitPrice": 0.99
    },
    {
        "name": "My Mistake",
        "albumId": 201,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billy Corgan",
        "milliseconds": 240901,
        "bytes": 7843477,
        "unitPrice": 0.99
    },
    {
        "name": "Marquis In Spades",
        "albumId": 201,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billy Corgan",
        "milliseconds": 192731,
        "bytes": 6304789,
        "unitPrice": 0.99
    },
    {
        "name": "Here's To The Atom Bomb",
        "albumId": 201,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billy Corgan",
        "milliseconds": 266893,
        "bytes": 8763140,
        "unitPrice": 0.99
    },
    {
        "name": "Sparrow",
        "albumId": 201,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billy Corgan",
        "milliseconds": 176822,
        "bytes": 5696989,
        "unitPrice": 0.99
    },
    {
        "name": "Waiting",
        "albumId": 201,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billy Corgan",
        "milliseconds": 228336,
        "bytes": 7627641,
        "unitPrice": 0.99
    },
    {
        "name": "Saturnine",
        "albumId": 201,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billy Corgan",
        "milliseconds": 229877,
        "bytes": 7523502,
        "unitPrice": 0.99
    },
    {
        "name": "Rock On",
        "albumId": 201,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "David Cook",
        "milliseconds": 366471,
        "bytes": 12133825,
        "unitPrice": 0.99
    },
    {
        "name": "Set The Ray To Jerry",
        "albumId": 201,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billy Corgan",
        "milliseconds": 249364,
        "bytes": 8215184,
        "unitPrice": 0.99
    },
    {
        "name": "Winterlong",
        "albumId": 201,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billy Corgan",
        "milliseconds": 299389,
        "bytes": 9670616,
        "unitPrice": 0.99
    },
    {
        "name": "Soot & Stars",
        "albumId": 201,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billy Corgan",
        "milliseconds": 399986,
        "bytes": 12866557,
        "unitPrice": 0.99
    },
    {
        "name": "Blissed & Gone",
        "albumId": 201,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billy Corgan",
        "milliseconds": 286302,
        "bytes": 9305998,
        "unitPrice": 0.99
    },
    {
        "name": "Siva",
        "albumId": 202,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billy Corgan",
        "milliseconds": 261172,
        "bytes": 8576622,
        "unitPrice": 0.99
    },
    {
        "name": "Rhinocerous",
        "albumId": 202,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billy Corgan",
        "milliseconds": 353462,
        "bytes": 11526684,
        "unitPrice": 0.99
    },
    {
        "name": "Drown",
        "albumId": 202,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billy Corgan",
        "milliseconds": 270497,
        "bytes": 8883496,
        "unitPrice": 0.99
    },
    {
        "name": "Cherub Rock",
        "albumId": 202,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billy Corgan",
        "milliseconds": 299389,
        "bytes": 9786739,
        "unitPrice": 0.99
    },
    {
        "name": "Today",
        "albumId": 202,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billy Corgan",
        "milliseconds": 202213,
        "bytes": 6596933,
        "unitPrice": 0.99
    },
    {
        "name": "Disarm",
        "albumId": 202,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billy Corgan",
        "milliseconds": 198556,
        "bytes": 6508249,
        "unitPrice": 0.99
    },
    {
        "name": "Landslide",
        "albumId": 202,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Stevie Nicks",
        "milliseconds": 190275,
        "bytes": 6187754,
        "unitPrice": 0.99
    },
    {
        "name": "Bullet With Butterfly Wings",
        "albumId": 202,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billy Corgan",
        "milliseconds": 257306,
        "bytes": 8431747,
        "unitPrice": 0.99
    },
    {
        "name": "1979",
        "albumId": 202,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billy Corgan",
        "milliseconds": 263653,
        "bytes": 8728470,
        "unitPrice": 0.99
    },
    {
        "name": "Zero",
        "albumId": 202,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billy Corgan",
        "milliseconds": 161123,
        "bytes": 5267176,
        "unitPrice": 0.99
    },
    {
        "name": "Tonight, Tonight",
        "albumId": 202,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billy Corgan",
        "milliseconds": 255686,
        "bytes": 8351543,
        "unitPrice": 0.99
    },
    {
        "name": "Eye",
        "albumId": 202,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billy Corgan",
        "milliseconds": 294530,
        "bytes": 9784201,
        "unitPrice": 0.99
    },
    {
        "name": "Ava Adore",
        "albumId": 202,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billy Corgan",
        "milliseconds": 261433,
        "bytes": 8590412,
        "unitPrice": 0.99
    },
    {
        "name": "Perfect",
        "albumId": 202,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billy Corgan",
        "milliseconds": 203023,
        "bytes": 6734636,
        "unitPrice": 0.99
    },
    {
        "name": "The Everlasting Gaze",
        "albumId": 202,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billy Corgan",
        "milliseconds": 242155,
        "bytes": 7844404,
        "unitPrice": 0.99
    },
    {
        "name": "Stand Inside Your Love",
        "albumId": 202,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billy Corgan",
        "milliseconds": 253753,
        "bytes": 8270113,
        "unitPrice": 0.99
    },
    {
        "name": "Real Love",
        "albumId": 202,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billy Corgan",
        "milliseconds": 250697,
        "bytes": 8025896,
        "unitPrice": 0.99
    },
    {
        "name": "[Untitled]",
        "albumId": 202,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Billy Corgan",
        "milliseconds": 231784,
        "bytes": 7689713,
        "unitPrice": 0.99
    },
    {
        "name": "Nothing To Say",
        "albumId": 203,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Chris Cornell/Kim Thayil",
        "milliseconds": 238027,
        "bytes": 7744833,
        "unitPrice": 0.99
    },
    {
        "name": "Flower",
        "albumId": 203,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Chris Cornell/Kim Thayil",
        "milliseconds": 208822,
        "bytes": 6830732,
        "unitPrice": 0.99
    },
    {
        "name": "Loud Love",
        "albumId": 203,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Chris Cornell",
        "milliseconds": 297456,
        "bytes": 9660953,
        "unitPrice": 0.99
    },
    {
        "name": "Hands All Over",
        "albumId": 203,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Chris Cornell/Kim Thayil",
        "milliseconds": 362475,
        "bytes": 11893108,
        "unitPrice": 0.99
    },
    {
        "name": "Get On The Snake",
        "albumId": 203,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Chris Cornell/Kim Thayil",
        "milliseconds": 225123,
        "bytes": 7313744,
        "unitPrice": 0.99
    },
    {
        "name": "Jesus Christ Pose",
        "albumId": 203,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Ben Shepherd/Chris Cornell/Kim Thayil/Matt Cameron",
        "milliseconds": 352966,
        "bytes": 11739886,
        "unitPrice": 0.99
    },
    {
        "name": "Outshined",
        "albumId": 203,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Chris Cornell",
        "milliseconds": 312476,
        "bytes": 10274629,
        "unitPrice": 0.99
    },
    {
        "name": "Rusty Cage",
        "albumId": 203,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Chris Cornell",
        "milliseconds": 267728,
        "bytes": 8779485,
        "unitPrice": 0.99
    },
    {
        "name": "Spoonman",
        "albumId": 203,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Chris Cornell",
        "milliseconds": 248476,
        "bytes": 8289906,
        "unitPrice": 0.99
    },
    {
        "name": "The Day I Tried To Live",
        "albumId": 203,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Chris Cornell",
        "milliseconds": 321175,
        "bytes": 10507137,
        "unitPrice": 0.99
    },
    {
        "name": "Black Hole Sun",
        "albumId": 203,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Soundgarden",
        "milliseconds": 320365,
        "bytes": 10425229,
        "unitPrice": 0.99
    },
    {
        "name": "Fell On Black Days",
        "albumId": 203,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Chris Cornell",
        "milliseconds": 282331,
        "bytes": 9256082,
        "unitPrice": 0.99
    },
    {
        "name": "Pretty Noose",
        "albumId": 203,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Chris Cornell",
        "milliseconds": 253570,
        "bytes": 8317931,
        "unitPrice": 0.99
    },
    {
        "name": "Burden In My Hand",
        "albumId": 203,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Chris Cornell",
        "milliseconds": 292153,
        "bytes": 9659911,
        "unitPrice": 0.99
    },
    {
        "name": "Blow Up The Outside World",
        "albumId": 203,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Chris Cornell",
        "milliseconds": 347898,
        "bytes": 11379527,
        "unitPrice": 0.99
    },
    {
        "name": "Ty Cobb",
        "albumId": 203,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Ben Shepherd/Chris Cornell",
        "milliseconds": 188786,
        "bytes": 6233136,
        "unitPrice": 0.99
    },
    {
        "name": "Bleed Together",
        "albumId": 203,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Chris Cornell",
        "milliseconds": 232202,
        "bytes": 7597074,
        "unitPrice": 0.99
    },
    {
        "name": "Morning Dance",
        "albumId": 204,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Jay Beckenstein",
        "milliseconds": 238759,
        "bytes": 8101979,
        "unitPrice": 0.99
    },
    {
        "name": "Jubilee",
        "albumId": 204,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Jeremy Wall",
        "milliseconds": 275147,
        "bytes": 9151846,
        "unitPrice": 0.99
    },
    {
        "name": "Rasul",
        "albumId": 204,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Jeremy Wall",
        "milliseconds": 238315,
        "bytes": 7854737,
        "unitPrice": 0.99
    },
    {
        "name": "Song For Lorraine",
        "albumId": 204,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Jay Beckenstein",
        "milliseconds": 240091,
        "bytes": 8101723,
        "unitPrice": 0.99
    },
    {
        "name": "Starburst",
        "albumId": 204,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Jeremy Wall",
        "milliseconds": 291500,
        "bytes": 9768399,
        "unitPrice": 0.99
    },
    {
        "name": "Heliopolis",
        "albumId": 204,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Jay Beckenstein",
        "milliseconds": 338729,
        "bytes": 11365655,
        "unitPrice": 0.99
    },
    {
        "name": "It Doesn't Matter",
        "albumId": 204,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Chet Catallo",
        "milliseconds": 270027,
        "bytes": 9034177,
        "unitPrice": 0.99
    },
    {
        "name": "Little Linda",
        "albumId": 204,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Jeremy Wall",
        "milliseconds": 264019,
        "bytes": 8958743,
        "unitPrice": 0.99
    },
    {
        "name": "End Of Romanticism",
        "albumId": 204,
        "mediaTypeId": 1,
        "genreId": 2,
        "composer": "Rick Strauss",
        "milliseconds": 320078,
        "bytes": 10553155,
        "unitPrice": 0.99
    },
    {
        "name": "The House Is Rockin'",
        "albumId": 205,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Doyle Bramhall/Stevie Ray Vaughan",
        "milliseconds": 144352,
        "bytes": 4706253,
        "unitPrice": 0.99
    },
    {
        "name": "Crossfire",
        "albumId": 205,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "B. Carter/C. Layton/R. Ellsworth/R. Wynans/T. Shannon",
        "milliseconds": 251219,
        "bytes": 8238033,
        "unitPrice": 0.99
    },
    {
        "name": "Tightrope",
        "albumId": 205,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Doyle Bramhall/Stevie Ray Vaughan",
        "milliseconds": 281155,
        "bytes": 9254906,
        "unitPrice": 0.99
    },
    {
        "name": "Let Me Love You Baby",
        "albumId": 205,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Willie Dixon",
        "milliseconds": 164127,
        "bytes": 5378455,
        "unitPrice": 0.99
    },
    {
        "name": "Leave My Girl Alone",
        "albumId": 205,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "B. Guy",
        "milliseconds": 256365,
        "bytes": 8438021,
        "unitPrice": 0.99
    },
    {
        "name": "Travis Walk",
        "albumId": 205,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Stevie Ray Vaughan",
        "milliseconds": 140826,
        "bytes": 4650979,
        "unitPrice": 0.99
    },
    {
        "name": "Wall Of Denial",
        "albumId": 205,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Doyle Bramhall/Stevie Ray Vaughan",
        "milliseconds": 336927,
        "bytes": 11085915,
        "unitPrice": 0.99
    },
    {
        "name": "Scratch-N-Sniff",
        "albumId": 205,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Doyle Bramhall/Stevie Ray Vaughan",
        "milliseconds": 163422,
        "bytes": 5353627,
        "unitPrice": 0.99
    },
    {
        "name": "Love Me Darlin'",
        "albumId": 205,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "C. Burnett",
        "milliseconds": 201586,
        "bytes": 6650869,
        "unitPrice": 0.99
    },
    {
        "name": "Riviera Paradise",
        "albumId": 205,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Stevie Ray Vaughan",
        "milliseconds": 528692,
        "bytes": 17232776,
        "unitPrice": 0.99
    },
    {
        "name": "Dead And Bloated",
        "albumId": 206,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "R. DeLeo/Weiland",
        "milliseconds": 310386,
        "bytes": 10170433,
        "unitPrice": 0.99
    },
    {
        "name": "Sex Type Thing",
        "albumId": 206,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "D. DeLeo/Kretz/Weiland",
        "milliseconds": 218723,
        "bytes": 7102064,
        "unitPrice": 0.99
    },
    {
        "name": "Wicked Garden",
        "albumId": 206,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "D. DeLeo/R. DeLeo/Weiland",
        "milliseconds": 245368,
        "bytes": 7989505,
        "unitPrice": 0.99
    },
    {
        "name": "No Memory",
        "albumId": 206,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dean Deleo",
        "milliseconds": 80613,
        "bytes": 2660859,
        "unitPrice": 0.99
    },
    {
        "name": "Sin",
        "albumId": 206,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "R. DeLeo/Weiland",
        "milliseconds": 364800,
        "bytes": 12018823,
        "unitPrice": 0.99
    },
    {
        "name": "Naked Sunday",
        "albumId": 206,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "D. DeLeo/Kretz/R. DeLeo/Weiland",
        "milliseconds": 229720,
        "bytes": 7444201,
        "unitPrice": 0.99
    },
    {
        "name": "Creep",
        "albumId": 206,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "R. DeLeo/Weiland",
        "milliseconds": 333191,
        "bytes": 10894988,
        "unitPrice": 0.99
    },
    {
        "name": "Piece Of Pie",
        "albumId": 206,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "R. DeLeo/Weiland",
        "milliseconds": 324623,
        "bytes": 10605231,
        "unitPrice": 0.99
    },
    {
        "name": "Plush",
        "albumId": 206,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "R. DeLeo/Weiland",
        "milliseconds": 314017,
        "bytes": 10229848,
        "unitPrice": 0.99
    },
    {
        "name": "Wet My Bed",
        "albumId": 206,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "R. DeLeo/Weiland",
        "milliseconds": 96914,
        "bytes": 3198627,
        "unitPrice": 0.99
    },
    {
        "name": "Crackerman",
        "albumId": 206,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Kretz/R. DeLeo/Weiland",
        "milliseconds": 194403,
        "bytes": 6317361,
        "unitPrice": 0.99
    },
    {
        "name": "Where The River Goes",
        "albumId": 206,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "D. DeLeo/Kretz/Weiland",
        "milliseconds": 505991,
        "bytes": 16468904,
        "unitPrice": 0.99
    },
    {
        "name": "Soldier Side - Intro",
        "albumId": 207,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Dolmayan, John/Malakian, Daron/Odadjian, Shavo",
        "milliseconds": 63764,
        "bytes": 2056079,
        "unitPrice": 0.99
    },
    {
        "name": "B.Y.O.B.",
        "albumId": 207,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Tankian, Serj",
        "milliseconds": 255555,
        "bytes": 8407935,
        "unitPrice": 0.99
    },
    {
        "name": "Revenga",
        "albumId": 207,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Tankian, Serj",
        "milliseconds": 228127,
        "bytes": 7503805,
        "unitPrice": 0.99
    },
    {
        "name": "Cigaro",
        "albumId": 207,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Tankian, Serj",
        "milliseconds": 131787,
        "bytes": 4321705,
        "unitPrice": 0.99
    },
    {
        "name": "Radio/Video",
        "albumId": 207,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Dolmayan, John/Malakian, Daron/Odadjian, Shavo",
        "milliseconds": 249312,
        "bytes": 8224917,
        "unitPrice": 0.99
    },
    {
        "name": "This Cocaine Makes Me Feel Like I'm On This Song",
        "albumId": 207,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Tankian, Serj",
        "milliseconds": 128339,
        "bytes": 4185193,
        "unitPrice": 0.99
    },
    {
        "name": "Violent Pornography",
        "albumId": 207,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Dolmayan, John/Malakian, Daron/Odadjian, Shavo",
        "milliseconds": 211435,
        "bytes": 6985960,
        "unitPrice": 0.99
    },
    {
        "name": "Question!",
        "albumId": 207,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Tankian, Serj",
        "milliseconds": 200698,
        "bytes": 6616398,
        "unitPrice": 0.99
    },
    {
        "name": "Sad Statue",
        "albumId": 207,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Tankian, Serj",
        "milliseconds": 205897,
        "bytes": 6733449,
        "unitPrice": 0.99
    },
    {
        "name": "Old School Hollywood",
        "albumId": 207,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Dolmayan, John/Malakian, Daron/Odadjian, Shavo",
        "milliseconds": 176953,
        "bytes": 5830258,
        "unitPrice": 0.99
    },
    {
        "name": "Lost in Hollywood",
        "albumId": 207,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Tankian, Serj",
        "milliseconds": 320783,
        "bytes": 10535158,
        "unitPrice": 0.99
    },
    {
        "name": "The Sun Road",
        "albumId": 208,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Terry Bozzio, Steve Stevens, Tony Levin",
        "milliseconds": 880640,
        "bytes": 29008407,
        "unitPrice": 0.99
    },
    {
        "name": "Dark Corners",
        "albumId": 208,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Terry Bozzio, Steve Stevens, Tony Levin",
        "milliseconds": 513541,
        "bytes": 16839223,
        "unitPrice": 0.99
    },
    {
        "name": "Duende",
        "albumId": 208,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Terry Bozzio, Steve Stevens, Tony Levin",
        "milliseconds": 447582,
        "bytes": 14956771,
        "unitPrice": 0.99
    },
    {
        "name": "Black Light Syndrome",
        "albumId": 208,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Terry Bozzio, Steve Stevens, Tony Levin",
        "milliseconds": 526471,
        "bytes": 17300835,
        "unitPrice": 0.99
    },
    {
        "name": "Falling in Circles",
        "albumId": 208,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Terry Bozzio, Steve Stevens, Tony Levin",
        "milliseconds": 549093,
        "bytes": 18263248,
        "unitPrice": 0.99
    },
    {
        "name": "Book of Hours",
        "albumId": 208,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Terry Bozzio, Steve Stevens, Tony Levin",
        "milliseconds": 583366,
        "bytes": 19464726,
        "unitPrice": 0.99
    },
    {
        "name": "Chaos-Control",
        "albumId": 208,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Terry Bozzio, Steve Stevens, Tony Levin",
        "milliseconds": 529841,
        "bytes": 17455568,
        "unitPrice": 0.99
    },
    {
        "name": "Midnight From The Inside Out",
        "albumId": 209,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Chris Robinson/Rich Robinson",
        "milliseconds": 286981,
        "bytes": 9442157,
        "unitPrice": 0.99
    },
    {
        "name": "Sting Me",
        "albumId": 209,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Chris Robinson/Rich Robinson",
        "milliseconds": 268094,
        "bytes": 8813561,
        "unitPrice": 0.99
    },
    {
        "name": "Thick & Thin",
        "albumId": 209,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Chris Robinson/Rich Robinson",
        "milliseconds": 222720,
        "bytes": 7284377,
        "unitPrice": 0.99
    },
    {
        "name": "Greasy Grass River",
        "albumId": 209,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Chris Robinson/Rich Robinson",
        "milliseconds": 218749,
        "bytes": 7157045,
        "unitPrice": 0.99
    },
    {
        "name": "Sometimes Salvation",
        "albumId": 209,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Chris Robinson/Rich Robinson",
        "milliseconds": 389146,
        "bytes": 12749424,
        "unitPrice": 0.99
    },
    {
        "name": "Cursed Diamonds",
        "albumId": 209,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Chris Robinson/Rich Robinson",
        "milliseconds": 368300,
        "bytes": 12047978,
        "unitPrice": 0.99
    },
    {
        "name": "Miracle To Me",
        "albumId": 209,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Chris Robinson/Rich Robinson",
        "milliseconds": 372636,
        "bytes": 12222116,
        "unitPrice": 0.99
    },
    {
        "name": "Wiser Time",
        "albumId": 209,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Chris Robinson/Rich Robinson",
        "milliseconds": 459990,
        "bytes": 15161907,
        "unitPrice": 0.99
    },
    {
        "name": "Girl From A Pawnshop",
        "albumId": 209,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Chris Robinson/Rich Robinson",
        "milliseconds": 404688,
        "bytes": 13250848,
        "unitPrice": 0.99
    },
    {
        "name": "Cosmic Fiend",
        "albumId": 209,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Chris Robinson/Rich Robinson",
        "milliseconds": 308401,
        "bytes": 10115556,
        "unitPrice": 0.99
    },
    {
        "name": "Black Moon Creeping",
        "albumId": 210,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Chris Robinson/Rich Robinson",
        "milliseconds": 359314,
        "bytes": 11740886,
        "unitPrice": 0.99
    },
    {
        "name": "High Head Blues",
        "albumId": 210,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Chris Robinson/Rich Robinson",
        "milliseconds": 371879,
        "bytes": 12227998,
        "unitPrice": 0.99
    },
    {
        "name": "Title Song",
        "albumId": 210,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Chris Robinson/Rich Robinson",
        "milliseconds": 505521,
        "bytes": 16501316,
        "unitPrice": 0.99
    },
    {
        "name": "She Talks To Angels",
        "albumId": 210,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Chris Robinson/Rich Robinson",
        "milliseconds": 361978,
        "bytes": 11837342,
        "unitPrice": 0.99
    },
    {
        "name": "Twice As Hard",
        "albumId": 210,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Chris Robinson/Rich Robinson",
        "milliseconds": 275565,
        "bytes": 9008067,
        "unitPrice": 0.99
    },
    {
        "name": "Lickin'",
        "albumId": 210,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Chris Robinson/Rich Robinson",
        "milliseconds": 314409,
        "bytes": 10331216,
        "unitPrice": 0.99
    },
    {
        "name": "Soul Singing",
        "albumId": 210,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Chris Robinson/Rich Robinson",
        "milliseconds": 233639,
        "bytes": 7672489,
        "unitPrice": 0.99
    },
    {
        "name": "Hard To Handle",
        "albumId": 210,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "A.Isbell/A.Jones/O.Redding",
        "milliseconds": 206994,
        "bytes": 6786304,
        "unitPrice": 0.99
    },
    {
        "name": "Remedy",
        "albumId": 210,
        "mediaTypeId": 1,
        "genreId": 6,
        "composer": "Chris Robinson/Rich Robinson",
        "milliseconds": 337084,
        "bytes": 11049098,
        "unitPrice": 0.99
    },
    {
        "name": "White Riot",
        "albumId": 211,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Joe Strummer/Mick Jones",
        "milliseconds": 118726,
        "bytes": 3922819,
        "unitPrice": 0.99
    },
    {
        "name": "Remote Control",
        "albumId": 211,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Joe Strummer/Mick Jones",
        "milliseconds": 180297,
        "bytes": 5949647,
        "unitPrice": 0.99
    },
    {
        "name": "Complete Control",
        "albumId": 211,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Joe Strummer/Mick Jones",
        "milliseconds": 192653,
        "bytes": 6272081,
        "unitPrice": 0.99
    },
    {
        "name": "Clash City Rockers",
        "albumId": 211,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Joe Strummer/Mick Jones",
        "milliseconds": 227500,
        "bytes": 7555054,
        "unitPrice": 0.99
    },
    {
        "name": "(White Man) In Hammersmith Palais",
        "albumId": 211,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Joe Strummer/Mick Jones",
        "milliseconds": 240640,
        "bytes": 7883532,
        "unitPrice": 0.99
    },
    {
        "name": "Tommy Gun",
        "albumId": 211,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Joe Strummer/Mick Jones",
        "milliseconds": 195526,
        "bytes": 6399872,
        "unitPrice": 0.99
    },
    {
        "name": "English Civil War",
        "albumId": 211,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Mick Jones/Traditional arr. Joe Strummer",
        "milliseconds": 156708,
        "bytes": 5111226,
        "unitPrice": 0.99
    },
    {
        "name": "I Fought The Law",
        "albumId": 211,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Sonny Curtis",
        "milliseconds": 159764,
        "bytes": 5245258,
        "unitPrice": 0.99
    },
    {
        "name": "London Calling",
        "albumId": 211,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Joe Strummer/Mick Jones",
        "milliseconds": 199706,
        "bytes": 6569007,
        "unitPrice": 0.99
    },
    {
        "name": "Train In Vain",
        "albumId": 211,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Joe Strummer/Mick Jones",
        "milliseconds": 189675,
        "bytes": 6329877,
        "unitPrice": 0.99
    },
    {
        "name": "Bankrobber",
        "albumId": 211,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Joe Strummer/Mick Jones",
        "milliseconds": 272431,
        "bytes": 9067323,
        "unitPrice": 0.99
    },
    {
        "name": "The Call Up",
        "albumId": 211,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "The Clash",
        "milliseconds": 324336,
        "bytes": 10746937,
        "unitPrice": 0.99
    },
    {
        "name": "Hitsville UK",
        "albumId": 211,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "The Clash",
        "milliseconds": 261433,
        "bytes": 8606887,
        "unitPrice": 0.99
    },
    {
        "name": "The Magnificent Seven",
        "albumId": 211,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "The Clash",
        "milliseconds": 268486,
        "bytes": 8889821,
        "unitPrice": 0.99
    },
    {
        "name": "This Is Radio Clash",
        "albumId": 211,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "The Clash",
        "milliseconds": 249756,
        "bytes": 8366573,
        "unitPrice": 0.99
    },
    {
        "name": "Know Your Rights",
        "albumId": 211,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "The Clash",
        "milliseconds": 217678,
        "bytes": 7195726,
        "unitPrice": 0.99
    },
    {
        "name": "Rock The Casbah",
        "albumId": 211,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "The Clash",
        "milliseconds": 222145,
        "bytes": 7361500,
        "unitPrice": 0.99
    },
    {
        "name": "Should I Stay Or Should I Go",
        "albumId": 211,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "The Clash",
        "milliseconds": 187219,
        "bytes": 6188688,
        "unitPrice": 0.99
    },
    {
        "name": "War (The Process)",
        "albumId": 212,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Billy Duffy/Ian Astbury",
        "milliseconds": 252630,
        "bytes": 8254842,
        "unitPrice": 0.99
    },
    {
        "name": "The Saint",
        "albumId": 212,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Billy Duffy/Ian Astbury",
        "milliseconds": 216215,
        "bytes": 7061584,
        "unitPrice": 0.99
    },
    {
        "name": "Rise",
        "albumId": 212,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Billy Duffy/Ian Astbury",
        "milliseconds": 219088,
        "bytes": 7106195,
        "unitPrice": 0.99
    },
    {
        "name": "Take The Power",
        "albumId": 212,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Billy Duffy/Ian Astbury",
        "milliseconds": 235755,
        "bytes": 7650012,
        "unitPrice": 0.99
    },
    {
        "name": "Breathe",
        "albumId": 212,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Billy Duffy/Ian Astbury/Marti Frederiksen/Mick Jones",
        "milliseconds": 299781,
        "bytes": 9742361,
        "unitPrice": 0.99
    },
    {
        "name": "Nico",
        "albumId": 212,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Billy Duffy/Ian Astbury",
        "milliseconds": 289488,
        "bytes": 9412323,
        "unitPrice": 0.99
    },
    {
        "name": "American Gothic",
        "albumId": 212,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Billy Duffy/Ian Astbury",
        "milliseconds": 236878,
        "bytes": 7739840,
        "unitPrice": 0.99
    },
    {
        "name": "Ashes And Ghosts",
        "albumId": 212,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Billy Duffy/Bob Rock/Ian Astbury",
        "milliseconds": 300591,
        "bytes": 9787692,
        "unitPrice": 0.99
    },
    {
        "name": "Shape The Sky",
        "albumId": 212,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Billy Duffy/Ian Astbury",
        "milliseconds": 209789,
        "bytes": 6885647,
        "unitPrice": 0.99
    },
    {
        "name": "Speed Of Light",
        "albumId": 212,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Billy Duffy/Bob Rock/Ian Astbury",
        "milliseconds": 262817,
        "bytes": 8563352,
        "unitPrice": 0.99
    },
    {
        "name": "True Believers",
        "albumId": 212,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Billy Duffy/Ian Astbury",
        "milliseconds": 308009,
        "bytes": 9981359,
        "unitPrice": 0.99
    },
    {
        "name": "My Bridges Burn",
        "albumId": 212,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Billy Duffy/Ian Astbury",
        "milliseconds": 231862,
        "bytes": 7571370,
        "unitPrice": 0.99
    },
    {
        "name": "She Sells Sanctuary",
        "albumId": 213,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 253727,
        "bytes": 8368634,
        "unitPrice": 0.99
    },
    {
        "name": "Fire Woman",
        "albumId": 213,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 312790,
        "bytes": 10196995,
        "unitPrice": 0.99
    },
    {
        "name": "Lil' Evil",
        "albumId": 213,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 165825,
        "bytes": 5419655,
        "unitPrice": 0.99
    },
    {
        "name": "Spirit Walker",
        "albumId": 213,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 230060,
        "bytes": 7555897,
        "unitPrice": 0.99
    },
    {
        "name": "The Witch",
        "albumId": 213,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 258768,
        "bytes": 8725403,
        "unitPrice": 0.99
    },
    {
        "name": "Revolution",
        "albumId": 213,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 256026,
        "bytes": 8371254,
        "unitPrice": 0.99
    },
    {
        "name": "Wild Hearted Son",
        "albumId": 213,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 266893,
        "bytes": 8670550,
        "unitPrice": 0.99
    },
    {
        "name": "Love Removal Machine",
        "albumId": 213,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 257619,
        "bytes": 8412167,
        "unitPrice": 0.99
    },
    {
        "name": "Rain",
        "albumId": 213,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 236669,
        "bytes": 7788461,
        "unitPrice": 0.99
    },
    {
        "name": "Edie (Ciao Baby)",
        "albumId": 213,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 241632,
        "bytes": 7846177,
        "unitPrice": 0.99
    },
    {
        "name": "Heart Of Soul",
        "albumId": 213,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 274207,
        "bytes": 8967257,
        "unitPrice": 0.99
    },
    {
        "name": "Love",
        "albumId": 213,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 326739,
        "bytes": 10729824,
        "unitPrice": 0.99
    },
    {
        "name": "Wild Flower",
        "albumId": 213,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 215536,
        "bytes": 7084321,
        "unitPrice": 0.99
    },
    {
        "name": "Go West",
        "albumId": 213,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 238158,
        "bytes": 7777749,
        "unitPrice": 0.99
    },
    {
        "name": "Resurrection Joe",
        "albumId": 213,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 255451,
        "bytes": 8532840,
        "unitPrice": 0.99
    },
    {
        "name": "Sun King",
        "albumId": 213,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 368431,
        "bytes": 12010865,
        "unitPrice": 0.99
    },
    {
        "name": "Sweet Soul Sister",
        "albumId": 213,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 212009,
        "bytes": 6889883,
        "unitPrice": 0.99
    },
    {
        "name": "Earth Mofo",
        "albumId": 213,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": null,
        "milliseconds": 282200,
        "bytes": 9204581,
        "unitPrice": 0.99
    },
    {
        "name": "Break on Through",
        "albumId": 214,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Robby Krieger, Ray Manzarek, John Densmore, Jim Morrison",
        "milliseconds": 149342,
        "bytes": 4943144,
        "unitPrice": 0.99
    },
    {
        "name": "Soul Kitchen",
        "albumId": 214,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Robby Krieger, Ray Manzarek, John Densmore, Jim Morrison",
        "milliseconds": 215066,
        "bytes": 7040865,
        "unitPrice": 0.99
    },
    {
        "name": "The Crystal Ship",
        "albumId": 214,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Robby Krieger, Ray Manzarek, John Densmore, Jim Morrison",
        "milliseconds": 154853,
        "bytes": 5052658,
        "unitPrice": 0.99
    },
    {
        "name": "Twentienth Century Fox",
        "albumId": 214,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Robby Krieger, Ray Manzarek, John Densmore, Jim Morrison",
        "milliseconds": 153913,
        "bytes": 5069211,
        "unitPrice": 0.99
    },
    {
        "name": "Alabama Song",
        "albumId": 214,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Weill-Brecht",
        "milliseconds": 200097,
        "bytes": 6563411,
        "unitPrice": 0.99
    },
    {
        "name": "Light My Fire",
        "albumId": 214,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Robby Krieger, Ray Manzarek, John Densmore, Jim Morrison",
        "milliseconds": 428329,
        "bytes": 13963351,
        "unitPrice": 0.99
    },
    {
        "name": "Back Door Man",
        "albumId": 214,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Willie Dixon, C. Burnett",
        "milliseconds": 214360,
        "bytes": 7035636,
        "unitPrice": 0.99
    },
    {
        "name": "I Looked At You",
        "albumId": 214,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Robby Krieger, Ray Manzarek, John Densmore, Jim Morrison",
        "milliseconds": 142080,
        "bytes": 4663988,
        "unitPrice": 0.99
    },
    {
        "name": "End Of The Night",
        "albumId": 214,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Robby Krieger, Ray Manzarek, John Densmore, Jim Morrison",
        "milliseconds": 172695,
        "bytes": 5589732,
        "unitPrice": 0.99
    },
    {
        "name": "Take It As It Comes",
        "albumId": 214,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Robby Krieger, Ray Manzarek, John Densmore, Jim Morrison",
        "milliseconds": 137168,
        "bytes": 4512656,
        "unitPrice": 0.99
    },
    {
        "name": "The End",
        "albumId": 214,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Robby Krieger, Ray Manzarek, John Densmore, Jim Morrison",
        "milliseconds": 701831,
        "bytes": 22927336,
        "unitPrice": 0.99
    },
    {
        "name": "Roxanne",
        "albumId": 215,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "G M Sumner",
        "milliseconds": 192992,
        "bytes": 6330159,
        "unitPrice": 0.99
    },
    {
        "name": "Can't Stand Losing You",
        "albumId": 215,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "G M Sumner",
        "milliseconds": 181159,
        "bytes": 5971983,
        "unitPrice": 0.99
    },
    {
        "name": "Message in a Bottle",
        "albumId": 215,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "G M Sumner",
        "milliseconds": 291474,
        "bytes": 9647829,
        "unitPrice": 0.99
    },
    {
        "name": "Walking on the Moon",
        "albumId": 215,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "G M Sumner",
        "milliseconds": 302080,
        "bytes": 10019861,
        "unitPrice": 0.99
    },
    {
        "name": "Don't Stand so Close to Me",
        "albumId": 215,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "G M Sumner",
        "milliseconds": 241031,
        "bytes": 7956658,
        "unitPrice": 0.99
    },
    {
        "name": "De Do Do Do, De Da Da Da",
        "albumId": 215,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "G M Sumner",
        "milliseconds": 247196,
        "bytes": 8227075,
        "unitPrice": 0.99
    },
    {
        "name": "Every Little Thing She Does is Magic",
        "albumId": 215,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "G M Sumner",
        "milliseconds": 261120,
        "bytes": 8646853,
        "unitPrice": 0.99
    },
    {
        "name": "Invisible Sun",
        "albumId": 215,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "G M Sumner",
        "milliseconds": 225593,
        "bytes": 7304320,
        "unitPrice": 0.99
    },
    {
        "name": "Spirit's in the Material World",
        "albumId": 215,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "G M Sumner",
        "milliseconds": 181133,
        "bytes": 5986622,
        "unitPrice": 0.99
    },
    {
        "name": "Every Breath You Take",
        "albumId": 215,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "G M Sumner",
        "milliseconds": 254615,
        "bytes": 8364520,
        "unitPrice": 0.99
    },
    {
        "name": "King Of Pain",
        "albumId": 215,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "G M Sumner",
        "milliseconds": 300512,
        "bytes": 9880303,
        "unitPrice": 0.99
    },
    {
        "name": "Wrapped Around Your Finger",
        "albumId": 215,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "G M Sumner",
        "milliseconds": 315454,
        "bytes": 10361490,
        "unitPrice": 0.99
    },
    {
        "name": "Don't Stand So Close to Me '86",
        "albumId": 215,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "G M Sumner",
        "milliseconds": 293590,
        "bytes": 9636683,
        "unitPrice": 0.99
    },
    {
        "name": "Message in a Bottle (new classic rock mix)",
        "albumId": 215,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "G M Sumner",
        "milliseconds": 290951,
        "bytes": 9640349,
        "unitPrice": 0.99
    },
    {
        "name": "Time Is On My Side",
        "albumId": 216,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jerry Ragavoy",
        "milliseconds": 179983,
        "bytes": 5855836,
        "unitPrice": 0.99
    },
    {
        "name": "Heart Of Stone",
        "albumId": 216,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jagger/Richards",
        "milliseconds": 164493,
        "bytes": 5329538,
        "unitPrice": 0.99
    },
    {
        "name": "Play With Fire",
        "albumId": 216,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Nanker Phelge",
        "milliseconds": 132022,
        "bytes": 4265297,
        "unitPrice": 0.99
    },
    {
        "name": "Satisfaction",
        "albumId": 216,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jagger/Richards",
        "milliseconds": 226612,
        "bytes": 7398766,
        "unitPrice": 0.99
    },
    {
        "name": "As Tears Go By",
        "albumId": 216,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jagger/Richards/Oldham",
        "milliseconds": 164284,
        "bytes": 5357350,
        "unitPrice": 0.99
    },
    {
        "name": "Get Off Of My Cloud",
        "albumId": 216,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jagger/Richards",
        "milliseconds": 176013,
        "bytes": 5719514,
        "unitPrice": 0.99
    },
    {
        "name": "Mother's Little Helper",
        "albumId": 216,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jagger/Richards",
        "milliseconds": 167549,
        "bytes": 5422434,
        "unitPrice": 0.99
    },
    {
        "name": "19th Nervous Breakdown",
        "albumId": 216,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jagger/Richards",
        "milliseconds": 237923,
        "bytes": 7742984,
        "unitPrice": 0.99
    },
    {
        "name": "Paint It Black",
        "albumId": 216,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jagger/Richards",
        "milliseconds": 226063,
        "bytes": 7442888,
        "unitPrice": 0.99
    },
    {
        "name": "Under My Thumb",
        "albumId": 216,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jagger/Richards",
        "milliseconds": 221387,
        "bytes": 7371799,
        "unitPrice": 0.99
    },
    {
        "name": "Ruby Tuesday",
        "albumId": 216,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jagger/Richards",
        "milliseconds": 197459,
        "bytes": 6433467,
        "unitPrice": 0.99
    },
    {
        "name": "Let's Spend The Night Together",
        "albumId": 216,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jagger/Richards",
        "milliseconds": 217495,
        "bytes": 7137048,
        "unitPrice": 0.99
    },
    {
        "name": "Intro",
        "albumId": 217,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jagger/Richards",
        "milliseconds": 49737,
        "bytes": 1618591,
        "unitPrice": 0.99
    },
    {
        "name": "You Got Me Rocking",
        "albumId": 217,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jagger/Richards",
        "milliseconds": 205766,
        "bytes": 6734385,
        "unitPrice": 0.99
    },
    {
        "name": "Gimmie Shelters",
        "albumId": 217,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jagger/Richards",
        "milliseconds": 382119,
        "bytes": 12528764,
        "unitPrice": 0.99
    },
    {
        "name": "Flip The Switch",
        "albumId": 217,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jagger/Richards",
        "milliseconds": 252421,
        "bytes": 8336591,
        "unitPrice": 0.99
    },
    {
        "name": "Memory Motel",
        "albumId": 217,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jagger/Richards",
        "milliseconds": 365844,
        "bytes": 11982431,
        "unitPrice": 0.99
    },
    {
        "name": "Corinna",
        "albumId": 217,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jesse Ed Davis III/Taj Mahal",
        "milliseconds": 257488,
        "bytes": 8449471,
        "unitPrice": 0.99
    },
    {
        "name": "Saint Of Me",
        "albumId": 217,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jagger/Richards",
        "milliseconds": 325694,
        "bytes": 10725160,
        "unitPrice": 0.99
    },
    {
        "name": "Wainting On A Friend",
        "albumId": 217,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jagger/Richards",
        "milliseconds": 302497,
        "bytes": 9978046,
        "unitPrice": 0.99
    },
    {
        "name": "Sister Morphine",
        "albumId": 217,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Faithfull/Jagger/Richards",
        "milliseconds": 376215,
        "bytes": 12345289,
        "unitPrice": 0.99
    },
    {
        "name": "Live With Me",
        "albumId": 217,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jagger/Richards",
        "milliseconds": 234893,
        "bytes": 7709006,
        "unitPrice": 0.99
    },
    {
        "name": "Respectable",
        "albumId": 217,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jagger/Richards",
        "milliseconds": 215693,
        "bytes": 7099669,
        "unitPrice": 0.99
    },
    {
        "name": "Thief In The Night",
        "albumId": 217,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "De Beauport/Jagger/Richards",
        "milliseconds": 337266,
        "bytes": 10952756,
        "unitPrice": 0.99
    },
    {
        "name": "The Last Time",
        "albumId": 217,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jagger/Richards",
        "milliseconds": 287294,
        "bytes": 9498758,
        "unitPrice": 0.99
    },
    {
        "name": "Out Of Control",
        "albumId": 217,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jagger/Richards",
        "milliseconds": 479242,
        "bytes": 15749289,
        "unitPrice": 0.99
    },
    {
        "name": "Love Is Strong",
        "albumId": 218,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jagger/Richards",
        "milliseconds": 230896,
        "bytes": 7639774,
        "unitPrice": 0.99
    },
    {
        "name": "You Got Me Rocking",
        "albumId": 218,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jagger/Richards",
        "milliseconds": 215928,
        "bytes": 7162159,
        "unitPrice": 0.99
    },
    {
        "name": "Sparks Will Fly",
        "albumId": 218,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jagger/Richards",
        "milliseconds": 196466,
        "bytes": 6492847,
        "unitPrice": 0.99
    },
    {
        "name": "The Worst",
        "albumId": 218,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jagger/Richards",
        "milliseconds": 144613,
        "bytes": 4750094,
        "unitPrice": 0.99
    },
    {
        "name": "New Faces",
        "albumId": 218,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jagger/Richards",
        "milliseconds": 172146,
        "bytes": 5689122,
        "unitPrice": 0.99
    },
    {
        "name": "Moon Is Up",
        "albumId": 218,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jagger/Richards",
        "milliseconds": 222119,
        "bytes": 7366316,
        "unitPrice": 0.99
    },
    {
        "name": "Out Of Tears",
        "albumId": 218,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jagger/Richards",
        "milliseconds": 327418,
        "bytes": 10677236,
        "unitPrice": 0.99
    },
    {
        "name": "I Go Wild",
        "albumId": 218,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jagger/Richards",
        "milliseconds": 264019,
        "bytes": 8630833,
        "unitPrice": 0.99
    },
    {
        "name": "Brand New Car",
        "albumId": 218,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jagger/Richards",
        "milliseconds": 256052,
        "bytes": 8459344,
        "unitPrice": 0.99
    },
    {
        "name": "Sweethearts Together",
        "albumId": 218,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jagger/Richards",
        "milliseconds": 285492,
        "bytes": 9550459,
        "unitPrice": 0.99
    },
    {
        "name": "Suck On The Jugular",
        "albumId": 218,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jagger/Richards",
        "milliseconds": 268225,
        "bytes": 8920566,
        "unitPrice": 0.99
    },
    {
        "name": "Blinded By Rainbows",
        "albumId": 218,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jagger/Richards",
        "milliseconds": 273946,
        "bytes": 8971343,
        "unitPrice": 0.99
    },
    {
        "name": "Baby Break It Down",
        "albumId": 218,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jagger/Richards",
        "milliseconds": 249417,
        "bytes": 8197309,
        "unitPrice": 0.99
    },
    {
        "name": "Thru And Thru",
        "albumId": 218,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jagger/Richards",
        "milliseconds": 375092,
        "bytes": 12175406,
        "unitPrice": 0.99
    },
    {
        "name": "Mean Disposition",
        "albumId": 218,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jagger/Richards",
        "milliseconds": 249155,
        "bytes": 8273602,
        "unitPrice": 0.99
    },
    {
        "name": "Walking Wounded",
        "albumId": 219,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "The Tea Party",
        "milliseconds": 277968,
        "bytes": 9184345,
        "unitPrice": 0.99
    },
    {
        "name": "Temptation",
        "albumId": 219,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "The Tea Party",
        "milliseconds": 205087,
        "bytes": 6711943,
        "unitPrice": 0.99
    },
    {
        "name": "The Messenger",
        "albumId": 219,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Daniel Lanois",
        "milliseconds": 212062,
        "bytes": 6975437,
        "unitPrice": 0.99
    },
    {
        "name": "Psychopomp",
        "albumId": 219,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "The Tea Party",
        "milliseconds": 315559,
        "bytes": 10295199,
        "unitPrice": 0.99
    },
    {
        "name": "Sister Awake",
        "albumId": 219,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "The Tea Party",
        "milliseconds": 343875,
        "bytes": 11299407,
        "unitPrice": 0.99
    },
    {
        "name": "The Bazaar",
        "albumId": 219,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "The Tea Party",
        "milliseconds": 222458,
        "bytes": 7245691,
        "unitPrice": 0.99
    },
    {
        "name": "Save Me (Remix)",
        "albumId": 219,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "The Tea Party",
        "milliseconds": 396303,
        "bytes": 13053839,
        "unitPrice": 0.99
    },
    {
        "name": "Fire In The Head",
        "albumId": 219,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "The Tea Party",
        "milliseconds": 306337,
        "bytes": 10005675,
        "unitPrice": 0.99
    },
    {
        "name": "Release",
        "albumId": 219,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "The Tea Party",
        "milliseconds": 244114,
        "bytes": 8014606,
        "unitPrice": 0.99
    },
    {
        "name": "Heaven Coming Down",
        "albumId": 219,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "The Tea Party",
        "milliseconds": 241867,
        "bytes": 7846459,
        "unitPrice": 0.99
    },
    {
        "name": "The River (Remix)",
        "albumId": 219,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "The Tea Party",
        "milliseconds": 343170,
        "bytes": 11193268,
        "unitPrice": 0.99
    },
    {
        "name": "Babylon",
        "albumId": 219,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "The Tea Party",
        "milliseconds": 169795,
        "bytes": 5568808,
        "unitPrice": 0.99
    },
    {
        "name": "Waiting On A Sign",
        "albumId": 219,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "The Tea Party",
        "milliseconds": 261903,
        "bytes": 8558590,
        "unitPrice": 0.99
    },
    {
        "name": "Life Line",
        "albumId": 219,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "The Tea Party",
        "milliseconds": 277786,
        "bytes": 9082773,
        "unitPrice": 0.99
    },
    {
        "name": "Paint It Black",
        "albumId": 219,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Keith Richards/Mick Jagger",
        "milliseconds": 214752,
        "bytes": 7101572,
        "unitPrice": 0.99
    },
    {
        "name": "Temptation",
        "albumId": 220,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "The Tea Party",
        "milliseconds": 205244,
        "bytes": 6719465,
        "unitPrice": 0.99
    },
    {
        "name": "Army Ants",
        "albumId": 220,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "The Tea Party",
        "milliseconds": 215405,
        "bytes": 7075838,
        "unitPrice": 0.99
    },
    {
        "name": "Psychopomp",
        "albumId": 220,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "The Tea Party",
        "milliseconds": 317231,
        "bytes": 10351778,
        "unitPrice": 0.99
    },
    {
        "name": "Gyroscope",
        "albumId": 220,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "The Tea Party",
        "milliseconds": 177711,
        "bytes": 5810323,
        "unitPrice": 0.99
    },
    {
        "name": "Alarum",
        "albumId": 220,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "The Tea Party",
        "milliseconds": 298187,
        "bytes": 9712545,
        "unitPrice": 0.99
    },
    {
        "name": "Release",
        "albumId": 220,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "The Tea Party",
        "milliseconds": 266292,
        "bytes": 8725824,
        "unitPrice": 0.99
    },
    {
        "name": "Transmission",
        "albumId": 220,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "The Tea Party",
        "milliseconds": 317257,
        "bytes": 10351152,
        "unitPrice": 0.99
    },
    {
        "name": "Babylon",
        "albumId": 220,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "The Tea Party",
        "milliseconds": 292466,
        "bytes": 9601786,
        "unitPrice": 0.99
    },
    {
        "name": "Pulse",
        "albumId": 220,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "The Tea Party",
        "milliseconds": 250253,
        "bytes": 8183872,
        "unitPrice": 0.99
    },
    {
        "name": "Emerald",
        "albumId": 220,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "The Tea Party",
        "milliseconds": 289750,
        "bytes": 9543789,
        "unitPrice": 0.99
    },
    {
        "name": "Aftermath",
        "albumId": 220,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "The Tea Party",
        "milliseconds": 343745,
        "bytes": 11085607,
        "unitPrice": 0.99
    },
    {
        "name": "I Can't Explain",
        "albumId": 221,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Pete Townshend",
        "milliseconds": 125152,
        "bytes": 4082896,
        "unitPrice": 0.99
    },
    {
        "name": "Anyway, Anyhow, Anywhere",
        "albumId": 221,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Pete Townshend, Roger Daltrey",
        "milliseconds": 161253,
        "bytes": 5234173,
        "unitPrice": 0.99
    },
    {
        "name": "My Generation",
        "albumId": 221,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "John Entwistle/Pete Townshend",
        "milliseconds": 197825,
        "bytes": 6446634,
        "unitPrice": 0.99
    },
    {
        "name": "Substitute",
        "albumId": 221,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Pete Townshend",
        "milliseconds": 228022,
        "bytes": 7409995,
        "unitPrice": 0.99
    },
    {
        "name": "I'm A Boy",
        "albumId": 221,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Pete Townshend",
        "milliseconds": 157126,
        "bytes": 5120605,
        "unitPrice": 0.99
    },
    {
        "name": "Boris The Spider",
        "albumId": 221,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "John Entwistle",
        "milliseconds": 149472,
        "bytes": 4835202,
        "unitPrice": 0.99
    },
    {
        "name": "Happy Jack",
        "albumId": 221,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Pete Townshend",
        "milliseconds": 132310,
        "bytes": 4353063,
        "unitPrice": 0.99
    },
    {
        "name": "Pictures Of Lily",
        "albumId": 221,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Pete Townshend",
        "milliseconds": 164414,
        "bytes": 5329751,
        "unitPrice": 0.99
    },
    {
        "name": "I Can See For Miles",
        "albumId": 221,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Pete Townshend",
        "milliseconds": 262791,
        "bytes": 8604989,
        "unitPrice": 0.99
    },
    {
        "name": "Magic Bus",
        "albumId": 221,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Pete Townshend",
        "milliseconds": 197224,
        "bytes": 6452700,
        "unitPrice": 0.99
    },
    {
        "name": "Pinball Wizard",
        "albumId": 221,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "John Entwistle/Pete Townshend",
        "milliseconds": 181890,
        "bytes": 6055580,
        "unitPrice": 0.99
    },
    {
        "name": "The Seeker",
        "albumId": 221,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Pete Townshend",
        "milliseconds": 204643,
        "bytes": 6736866,
        "unitPrice": 0.99
    },
    {
        "name": "Baba O'Riley",
        "albumId": 221,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "John Entwistle/Pete Townshend",
        "milliseconds": 309472,
        "bytes": 10141660,
        "unitPrice": 0.99
    },
    {
        "name": "Won't Get Fooled Again (Full Length Version)",
        "albumId": 221,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "John Entwistle/Pete Townshend",
        "milliseconds": 513750,
        "bytes": 16855521,
        "unitPrice": 0.99
    },
    {
        "name": "Let's See Action",
        "albumId": 221,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Pete Townshend",
        "milliseconds": 243513,
        "bytes": 8078418,
        "unitPrice": 0.99
    },
    {
        "name": "5.15",
        "albumId": 221,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Pete Townshend",
        "milliseconds": 289619,
        "bytes": 9458549,
        "unitPrice": 0.99
    },
    {
        "name": "Join Together",
        "albumId": 221,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Pete Townshend",
        "milliseconds": 262556,
        "bytes": 8602485,
        "unitPrice": 0.99
    },
    {
        "name": "Squeeze Box",
        "albumId": 221,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Pete Townshend",
        "milliseconds": 161280,
        "bytes": 5256508,
        "unitPrice": 0.99
    },
    {
        "name": "Who Are You (Single Edit Version)",
        "albumId": 221,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "John Entwistle/Pete Townshend",
        "milliseconds": 299232,
        "bytes": 9900469,
        "unitPrice": 0.99
    },
    {
        "name": "You Better You Bet",
        "albumId": 221,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Pete Townshend",
        "milliseconds": 338520,
        "bytes": 11160877,
        "unitPrice": 0.99
    },
    {
        "name": "Primavera",
        "albumId": 222,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Genival Cassiano/Silvio Rochael",
        "milliseconds": 126615,
        "bytes": 4152604,
        "unitPrice": 0.99
    },
    {
        "name": "Chocolate",
        "albumId": 222,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Tim Maia",
        "milliseconds": 194690,
        "bytes": 6411587,
        "unitPrice": 0.99
    },
    {
        "name": "Azul Da Cor Do Mar",
        "albumId": 222,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Tim Maia",
        "milliseconds": 197955,
        "bytes": 6475007,
        "unitPrice": 0.99
    },
    {
        "name": "O Descobridor Dos Sete Mares",
        "albumId": 222,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Gilson Mendonça/Michel",
        "milliseconds": 262974,
        "bytes": 8749583,
        "unitPrice": 0.99
    },
    {
        "name": "Até Que Enfim Encontrei Você",
        "albumId": 222,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Tim Maia",
        "milliseconds": 105064,
        "bytes": 3477751,
        "unitPrice": 0.99
    },
    {
        "name": "Coroné Antonio Bento",
        "albumId": 222,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Do Vale, João/Luiz Wanderley",
        "milliseconds": 131317,
        "bytes": 4340326,
        "unitPrice": 0.99
    },
    {
        "name": "New Love",
        "albumId": 222,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Tim Maia",
        "milliseconds": 237897,
        "bytes": 7786824,
        "unitPrice": 0.99
    },
    {
        "name": "Não Vou Ficar",
        "albumId": 222,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Tim Maia",
        "milliseconds": 172068,
        "bytes": 5642919,
        "unitPrice": 0.99
    },
    {
        "name": "Música No Ar",
        "albumId": 222,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Tim Maia",
        "milliseconds": 158511,
        "bytes": 5184891,
        "unitPrice": 0.99
    },
    {
        "name": "Salve Nossa Senhora",
        "albumId": 222,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Carlos Imperial/Edardo Araújo",
        "milliseconds": 115461,
        "bytes": 3827629,
        "unitPrice": 0.99
    },
    {
        "name": "Você Fugiu",
        "albumId": 222,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Genival Cassiano",
        "milliseconds": 238367,
        "bytes": 7971147,
        "unitPrice": 0.99
    },
    {
        "name": "Cristina Nº 2",
        "albumId": 222,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Carlos Imperial/Tim Maia",
        "milliseconds": 90148,
        "bytes": 2978589,
        "unitPrice": 0.99
    },
    {
        "name": "Compadre",
        "albumId": 222,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Tim Maia",
        "milliseconds": 171389,
        "bytes": 5631446,
        "unitPrice": 0.99
    },
    {
        "name": "Over Again",
        "albumId": 222,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Tim Maia",
        "milliseconds": 200489,
        "bytes": 6612634,
        "unitPrice": 0.99
    },
    {
        "name": "Réu Confesso",
        "albumId": 222,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Tim Maia",
        "milliseconds": 217391,
        "bytes": 7189874,
        "unitPrice": 0.99
    },
    {
        "name": "O Que Me Importa",
        "albumId": 223,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 153155,
        "bytes": 4977852,
        "unitPrice": 0.99
    },
    {
        "name": "Gostava Tanto De Você",
        "albumId": 223,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 253805,
        "bytes": 8380077,
        "unitPrice": 0.99
    },
    {
        "name": "Você",
        "albumId": 223,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 242599,
        "bytes": 7911702,
        "unitPrice": 0.99
    },
    {
        "name": "Não Quero Dinheiro",
        "albumId": 223,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 152607,
        "bytes": 5031797,
        "unitPrice": 0.99
    },
    {
        "name": "Eu Amo Você",
        "albumId": 223,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 242782,
        "bytes": 7914628,
        "unitPrice": 0.99
    },
    {
        "name": "A Festa Do Santo Reis",
        "albumId": 223,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 159791,
        "bytes": 5204995,
        "unitPrice": 0.99
    },
    {
        "name": "I Don't Know What To Do With Myself",
        "albumId": 223,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 221387,
        "bytes": 7251478,
        "unitPrice": 0.99
    },
    {
        "name": "Padre Cícero",
        "albumId": 223,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 139598,
        "bytes": 4581685,
        "unitPrice": 0.99
    },
    {
        "name": "Nosso Adeus",
        "albumId": 223,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 206471,
        "bytes": 6793270,
        "unitPrice": 0.99
    },
    {
        "name": "Canário Do Reino",
        "albumId": 223,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 139337,
        "bytes": 4552858,
        "unitPrice": 0.99
    },
    {
        "name": "Preciso Ser Amado",
        "albumId": 223,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 174001,
        "bytes": 5618895,
        "unitPrice": 0.99
    },
    {
        "name": "Balanço",
        "albumId": 223,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 209737,
        "bytes": 6890327,
        "unitPrice": 0.99
    },
    {
        "name": "Preciso Aprender A Ser Só",
        "albumId": 223,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 162220,
        "bytes": 5213894,
        "unitPrice": 0.99
    },
    {
        "name": "Esta É A Canção",
        "albumId": 223,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 184450,
        "bytes": 6069933,
        "unitPrice": 0.99
    },
    {
        "name": "Formigueiro",
        "albumId": 223,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 252943,
        "bytes": 8455132,
        "unitPrice": 0.99
    },
    {
        "name": "Comida",
        "albumId": 224,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Titãs",
        "milliseconds": 322612,
        "bytes": 10786578,
        "unitPrice": 0.99
    },
    {
        "name": "Go Back",
        "albumId": 224,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Titãs",
        "milliseconds": 230504,
        "bytes": 7668899,
        "unitPrice": 0.99
    },
    {
        "name": "Prá Dizer Adeus",
        "albumId": 224,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Titãs",
        "milliseconds": 222484,
        "bytes": 7382048,
        "unitPrice": 0.99
    },
    {
        "name": "Família",
        "albumId": 224,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Titãs",
        "milliseconds": 218331,
        "bytes": 7267458,
        "unitPrice": 0.99
    },
    {
        "name": "Os Cegos Do Castelo",
        "albumId": 224,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Titãs",
        "milliseconds": 296829,
        "bytes": 9868187,
        "unitPrice": 0.99
    },
    {
        "name": "O Pulso",
        "albumId": 224,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Titãs",
        "milliseconds": 199131,
        "bytes": 6566998,
        "unitPrice": 0.99
    },
    {
        "name": "Marvin",
        "albumId": 224,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Titãs",
        "milliseconds": 264359,
        "bytes": 8741444,
        "unitPrice": 0.99
    },
    {
        "name": "Nem 5 Minutos Guardados",
        "albumId": 224,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Titãs",
        "milliseconds": 245995,
        "bytes": 8143797,
        "unitPrice": 0.99
    },
    {
        "name": "Flores",
        "albumId": 224,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Titãs",
        "milliseconds": 215510,
        "bytes": 7148017,
        "unitPrice": 0.99
    },
    {
        "name": "Palavras",
        "albumId": 224,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Titãs",
        "milliseconds": 158458,
        "bytes": 5285715,
        "unitPrice": 0.99
    },
    {
        "name": "Hereditário",
        "albumId": 224,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Titãs",
        "milliseconds": 151693,
        "bytes": 5020547,
        "unitPrice": 0.99
    },
    {
        "name": "A Melhor Forma",
        "albumId": 224,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Titãs",
        "milliseconds": 191503,
        "bytes": 6349938,
        "unitPrice": 0.99
    },
    {
        "name": "Cabeça Dinossauro",
        "albumId": 224,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Titãs",
        "milliseconds": 37120,
        "bytes": 1220930,
        "unitPrice": 0.99
    },
    {
        "name": "32 Dentes",
        "albumId": 224,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Titãs",
        "milliseconds": 184946,
        "bytes": 6157904,
        "unitPrice": 0.99
    },
    {
        "name": "Bichos Escrotos (Vinheta)",
        "albumId": 224,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Titãs",
        "milliseconds": 104986,
        "bytes": 3503755,
        "unitPrice": 0.99
    },
    {
        "name": "Não Vou Lutar",
        "albumId": 224,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Titãs",
        "milliseconds": 189988,
        "bytes": 6308613,
        "unitPrice": 0.99
    },
    {
        "name": "Homem Primata (Vinheta)",
        "albumId": 224,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Titãs",
        "milliseconds": 34168,
        "bytes": 1124909,
        "unitPrice": 0.99
    },
    {
        "name": "Homem Primata",
        "albumId": 224,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Titãs",
        "milliseconds": 195500,
        "bytes": 6486470,
        "unitPrice": 0.99
    },
    {
        "name": "Polícia (Vinheta)",
        "albumId": 224,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Titãs",
        "milliseconds": 56111,
        "bytes": 1824213,
        "unitPrice": 0.99
    },
    {
        "name": "Querem Meu Sangue",
        "albumId": 224,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Titãs",
        "milliseconds": 212401,
        "bytes": 7069773,
        "unitPrice": 0.99
    },
    {
        "name": "Diversão",
        "albumId": 224,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Titãs",
        "milliseconds": 285936,
        "bytes": 9531268,
        "unitPrice": 0.99
    },
    {
        "name": "Televisão",
        "albumId": 224,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Titãs",
        "milliseconds": 293668,
        "bytes": 9776548,
        "unitPrice": 0.99
    },
    {
        "name": "Sonifera Ilha",
        "albumId": 225,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Branco Mello/Carlos Barmack/Ciro Pessoa/Marcelo Fromer/Toni Belloto",
        "milliseconds": 170684,
        "bytes": 5678290,
        "unitPrice": 0.99
    },
    {
        "name": "Lugar Nenhum",
        "albumId": 225,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Arnaldo Antunes/Charles Gavin/Marcelo Fromer/Sérgio Britto/Toni Bellotto",
        "milliseconds": 195840,
        "bytes": 6472780,
        "unitPrice": 0.99
    },
    {
        "name": "Sua Impossivel Chance",
        "albumId": 225,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Nando Reis",
        "milliseconds": 246622,
        "bytes": 8073248,
        "unitPrice": 0.99
    },
    {
        "name": "Desordem",
        "albumId": 225,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Charles Gavin/Marcelo Fromer/Sérgio Britto",
        "milliseconds": 213289,
        "bytes": 7067340,
        "unitPrice": 0.99
    },
    {
        "name": "Não Vou Me Adaptar",
        "albumId": 225,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Arnaldo Antunes",
        "milliseconds": 221831,
        "bytes": 7304656,
        "unitPrice": 0.99
    },
    {
        "name": "Domingo",
        "albumId": 225,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Sérgio Britto/Toni Bellotto",
        "milliseconds": 208613,
        "bytes": 6883180,
        "unitPrice": 0.99
    },
    {
        "name": "Amanhã Não Se Sabe",
        "albumId": 225,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Sérgio Britto",
        "milliseconds": 189440,
        "bytes": 6243967,
        "unitPrice": 0.99
    },
    {
        "name": "Caras Como Eu",
        "albumId": 225,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Toni Bellotto",
        "milliseconds": 183092,
        "bytes": 5999048,
        "unitPrice": 0.99
    },
    {
        "name": "Senhora E Senhor",
        "albumId": 225,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Arnaldo Anutnes/Marcelo Fromer/Paulo Miklos",
        "milliseconds": 203702,
        "bytes": 6733733,
        "unitPrice": 0.99
    },
    {
        "name": "Era Uma Vez",
        "albumId": 225,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Arnaldo Anutnes/Branco Mello/Marcelo Fromer/Sergio Brotto/Toni Bellotto",
        "milliseconds": 224261,
        "bytes": 7453156,
        "unitPrice": 0.99
    },
    {
        "name": "Miséria",
        "albumId": 225,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Arnaldo Antunes/Britto, SergioMiklos, Paulo",
        "milliseconds": 262191,
        "bytes": 8727645,
        "unitPrice": 0.99
    },
    {
        "name": "Insensível",
        "albumId": 225,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Sérgio Britto",
        "milliseconds": 207830,
        "bytes": 6893664,
        "unitPrice": 0.99
    },
    {
        "name": "Eu E Ela",
        "albumId": 225,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Nando Reis",
        "milliseconds": 276035,
        "bytes": 9138846,
        "unitPrice": 0.99
    },
    {
        "name": "Toda Cor",
        "albumId": 225,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Ciro Pressoa/Marcelo Fromer",
        "milliseconds": 209084,
        "bytes": 6939176,
        "unitPrice": 0.99
    },
    {
        "name": "É Preciso Saber Viver",
        "albumId": 225,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Erasmo Carlos/Roberto Carlos",
        "milliseconds": 251115,
        "bytes": 8271418,
        "unitPrice": 0.99
    },
    {
        "name": "Senhor Delegado/Eu Não Aguento",
        "albumId": 225,
        "mediaTypeId": 1,
        "genreId": 4,
        "composer": "Antonio Lopes",
        "milliseconds": 156656,
        "bytes": 5277983,
        "unitPrice": 0.99
    },
    {
        "name": "Battlestar Galactica: The Story So Far",
        "albumId": 226,
        "mediaTypeId": 3,
        "genreId": 18,
        "composer": null,
        "milliseconds": 2622250,
        "bytes": 490750393,
        "unitPrice": 1.99
    },
    {
        "name": "Occupation / Precipice",
        "albumId": 227,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 5286953,
        "bytes": 1054423946,
        "unitPrice": 1.99
    },
    {
        "name": "Exodus, Pt. 1",
        "albumId": 227,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2621708,
        "bytes": 475079441,
        "unitPrice": 1.99
    },
    {
        "name": "Exodus, Pt. 2",
        "albumId": 227,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2618000,
        "bytes": 466820021,
        "unitPrice": 1.99
    },
    {
        "name": "Collaborators",
        "albumId": 227,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2626626,
        "bytes": 483484911,
        "unitPrice": 1.99
    },
    {
        "name": "Torn",
        "albumId": 227,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2631291,
        "bytes": 495262585,
        "unitPrice": 1.99
    },
    {
        "name": "A Measure of Salvation",
        "albumId": 227,
        "mediaTypeId": 3,
        "genreId": 18,
        "composer": null,
        "milliseconds": 2563938,
        "bytes": 489715554,
        "unitPrice": 1.99
    },
    {
        "name": "Hero",
        "albumId": 227,
        "mediaTypeId": 3,
        "genreId": 18,
        "composer": null,
        "milliseconds": 2713755,
        "bytes": 506896959,
        "unitPrice": 1.99
    },
    {
        "name": "Unfinished Business",
        "albumId": 227,
        "mediaTypeId": 3,
        "genreId": 18,
        "composer": null,
        "milliseconds": 2622038,
        "bytes": 528499160,
        "unitPrice": 1.99
    },
    {
        "name": "The Passage",
        "albumId": 227,
        "mediaTypeId": 3,
        "genreId": 18,
        "composer": null,
        "milliseconds": 2623875,
        "bytes": 490375760,
        "unitPrice": 1.99
    },
    {
        "name": "The Eye of Jupiter",
        "albumId": 227,
        "mediaTypeId": 3,
        "genreId": 18,
        "composer": null,
        "milliseconds": 2618750,
        "bytes": 517909587,
        "unitPrice": 1.99
    },
    {
        "name": "Rapture",
        "albumId": 227,
        "mediaTypeId": 3,
        "genreId": 18,
        "composer": null,
        "milliseconds": 2624541,
        "bytes": 508406153,
        "unitPrice": 1.99
    },
    {
        "name": "Taking a Break from All Your Worries",
        "albumId": 227,
        "mediaTypeId": 3,
        "genreId": 18,
        "composer": null,
        "milliseconds": 2624207,
        "bytes": 492700163,
        "unitPrice": 1.99
    },
    {
        "name": "The Woman King",
        "albumId": 227,
        "mediaTypeId": 3,
        "genreId": 18,
        "composer": null,
        "milliseconds": 2626376,
        "bytes": 552893447,
        "unitPrice": 1.99
    },
    {
        "name": "A Day In the Life",
        "albumId": 227,
        "mediaTypeId": 3,
        "genreId": 18,
        "composer": null,
        "milliseconds": 2620245,
        "bytes": 462818231,
        "unitPrice": 1.99
    },
    {
        "name": "Dirty Hands",
        "albumId": 227,
        "mediaTypeId": 3,
        "genreId": 18,
        "composer": null,
        "milliseconds": 2627961,
        "bytes": 537648614,
        "unitPrice": 1.99
    },
    {
        "name": "Maelstrom",
        "albumId": 227,
        "mediaTypeId": 3,
        "genreId": 18,
        "composer": null,
        "milliseconds": 2622372,
        "bytes": 514154275,
        "unitPrice": 1.99
    },
    {
        "name": "The Son Also Rises",
        "albumId": 227,
        "mediaTypeId": 3,
        "genreId": 18,
        "composer": null,
        "milliseconds": 2621830,
        "bytes": 499258498,
        "unitPrice": 1.99
    },
    {
        "name": "Crossroads, Pt. 1",
        "albumId": 227,
        "mediaTypeId": 3,
        "genreId": 20,
        "composer": null,
        "milliseconds": 2622622,
        "bytes": 486233524,
        "unitPrice": 1.99
    },
    {
        "name": "Crossroads, Pt. 2",
        "albumId": 227,
        "mediaTypeId": 3,
        "genreId": 20,
        "composer": null,
        "milliseconds": 2869953,
        "bytes": 497335706,
        "unitPrice": 1.99
    },
    {
        "name": "Genesis",
        "albumId": 228,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2611986,
        "bytes": 515671080,
        "unitPrice": 1.99
    },
    {
        "name": "Don't Look Back",
        "albumId": 228,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2571154,
        "bytes": 493628775,
        "unitPrice": 1.99
    },
    {
        "name": "One Giant Leap",
        "albumId": 228,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2607649,
        "bytes": 521616246,
        "unitPrice": 1.99
    },
    {
        "name": "Collision",
        "albumId": 228,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2605480,
        "bytes": 526182322,
        "unitPrice": 1.99
    },
    {
        "name": "Hiros",
        "albumId": 228,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2533575,
        "bytes": 488835454,
        "unitPrice": 1.99
    },
    {
        "name": "Better Halves",
        "albumId": 228,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2573031,
        "bytes": 549353481,
        "unitPrice": 1.99
    },
    {
        "name": "Nothing to Hide",
        "albumId": 228,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2605647,
        "bytes": 510058181,
        "unitPrice": 1.99
    },
    {
        "name": "Seven Minutes to Midnight",
        "albumId": 228,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2613988,
        "bytes": 515590682,
        "unitPrice": 1.99
    },
    {
        "name": "Homecoming",
        "albumId": 228,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2601351,
        "bytes": 516015339,
        "unitPrice": 1.99
    },
    {
        "name": "Six Months Ago",
        "albumId": 228,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2602852,
        "bytes": 505133869,
        "unitPrice": 1.99
    },
    {
        "name": "Fallout",
        "albumId": 228,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2594761,
        "bytes": 501145440,
        "unitPrice": 1.99
    },
    {
        "name": "The Fix",
        "albumId": 228,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2600266,
        "bytes": 507026323,
        "unitPrice": 1.99
    },
    {
        "name": "Distractions",
        "albumId": 228,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2590382,
        "bytes": 537111289,
        "unitPrice": 1.99
    },
    {
        "name": "Run!",
        "albumId": 228,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2602602,
        "bytes": 542936677,
        "unitPrice": 1.99
    },
    {
        "name": "Unexpected",
        "albumId": 228,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2598139,
        "bytes": 511777758,
        "unitPrice": 1.99
    },
    {
        "name": "Company Man",
        "albumId": 228,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2601226,
        "bytes": 493168135,
        "unitPrice": 1.99
    },
    {
        "name": "Company Man",
        "albumId": 228,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2601101,
        "bytes": 503786316,
        "unitPrice": 1.99
    },
    {
        "name": "Parasite",
        "albumId": 228,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2602727,
        "bytes": 487461520,
        "unitPrice": 1.99
    },
    {
        "name": "A Tale of Two Cities",
        "albumId": 229,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2636970,
        "bytes": 513691652,
        "unitPrice": 1.99
    },
    {
        "name": "Lost (Pilot, Part 1) [Premiere]",
        "albumId": 230,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2548875,
        "bytes": 217124866,
        "unitPrice": 1.99
    },
    {
        "name": "Man of Science, Man of Faith (Premiere)",
        "albumId": 231,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2612250,
        "bytes": 543342028,
        "unitPrice": 1.99
    },
    {
        "name": "Adrift",
        "albumId": 231,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2564958,
        "bytes": 502663995,
        "unitPrice": 1.99
    },
    {
        "name": "Lost (Pilot, Part 2)",
        "albumId": 230,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2436583,
        "bytes": 204995876,
        "unitPrice": 1.99
    },
    {
        "name": "The Glass Ballerina",
        "albumId": 229,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2637458,
        "bytes": 535729216,
        "unitPrice": 1.99
    },
    {
        "name": "Further Instructions",
        "albumId": 229,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2563980,
        "bytes": 502041019,
        "unitPrice": 1.99
    },
    {
        "name": "Orientation",
        "albumId": 231,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2609083,
        "bytes": 500600434,
        "unitPrice": 1.99
    },
    {
        "name": "Tabula Rasa",
        "albumId": 230,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2627105,
        "bytes": 210526410,
        "unitPrice": 1.99
    },
    {
        "name": "Every Man for Himself",
        "albumId": 229,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2637387,
        "bytes": 513803546,
        "unitPrice": 1.99
    },
    {
        "name": "Everybody Hates Hugo",
        "albumId": 231,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2609192,
        "bytes": 498163145,
        "unitPrice": 1.99
    },
    {
        "name": "Walkabout",
        "albumId": 230,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2587370,
        "bytes": 207748198,
        "unitPrice": 1.99
    },
    {
        "name": "...And Found",
        "albumId": 231,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2563833,
        "bytes": 500330548,
        "unitPrice": 1.99
    },
    {
        "name": "The Cost of Living",
        "albumId": 229,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2637500,
        "bytes": 505647192,
        "unitPrice": 1.99
    },
    {
        "name": "White Rabbit",
        "albumId": 230,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2571965,
        "bytes": 201654606,
        "unitPrice": 1.99
    },
    {
        "name": "Abandoned",
        "albumId": 231,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2587041,
        "bytes": 537348711,
        "unitPrice": 1.99
    },
    {
        "name": "House of the Rising Sun",
        "albumId": 230,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2590032,
        "bytes": 210379525,
        "unitPrice": 1.99
    },
    {
        "name": "I Do",
        "albumId": 229,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2627791,
        "bytes": 504676825,
        "unitPrice": 1.99
    },
    {
        "name": "Not In Portland",
        "albumId": 229,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2637303,
        "bytes": 499061234,
        "unitPrice": 1.99
    },
    {
        "name": "Not In Portland",
        "albumId": 229,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2637345,
        "bytes": 510546847,
        "unitPrice": 1.99
    },
    {
        "name": "The Moth",
        "albumId": 230,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2631327,
        "bytes": 228896396,
        "unitPrice": 1.99
    },
    {
        "name": "The Other 48 Days",
        "albumId": 231,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2610625,
        "bytes": 535256753,
        "unitPrice": 1.99
    },
    {
        "name": "Collision",
        "albumId": 231,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2564916,
        "bytes": 475656544,
        "unitPrice": 1.99
    },
    {
        "name": "Confidence Man",
        "albumId": 230,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2615244,
        "bytes": 223756475,
        "unitPrice": 1.99
    },
    {
        "name": "Flashes Before Your Eyes",
        "albumId": 229,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2636636,
        "bytes": 537760755,
        "unitPrice": 1.99
    },
    {
        "name": "Lost Survival Guide",
        "albumId": 229,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2632590,
        "bytes": 486675063,
        "unitPrice": 1.99
    },
    {
        "name": "Solitary",
        "albumId": 230,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2612894,
        "bytes": 207045178,
        "unitPrice": 1.99
    },
    {
        "name": "What Kate Did",
        "albumId": 231,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2610250,
        "bytes": 484583988,
        "unitPrice": 1.99
    },
    {
        "name": "Raised By Another",
        "albumId": 230,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2590459,
        "bytes": 223623810,
        "unitPrice": 1.99
    },
    {
        "name": "Stranger In a Strange Land",
        "albumId": 229,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2636428,
        "bytes": 505056021,
        "unitPrice": 1.99
    },
    {
        "name": "The 23rd Psalm",
        "albumId": 231,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2610416,
        "bytes": 487401604,
        "unitPrice": 1.99
    },
    {
        "name": "All the Best Cowboys Have Daddy Issues",
        "albumId": 230,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2555492,
        "bytes": 211743651,
        "unitPrice": 1.99
    },
    {
        "name": "The Hunting Party",
        "albumId": 231,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2611333,
        "bytes": 520350364,
        "unitPrice": 1.99
    },
    {
        "name": "Tricia Tanaka Is Dead",
        "albumId": 229,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2635010,
        "bytes": 548197162,
        "unitPrice": 1.99
    },
    {
        "name": "Enter 77",
        "albumId": 229,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2629796,
        "bytes": 517521422,
        "unitPrice": 1.99
    },
    {
        "name": "Fire + Water",
        "albumId": 231,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2600333,
        "bytes": 488458695,
        "unitPrice": 1.99
    },
    {
        "name": "Whatever the Case May Be",
        "albumId": 230,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2616410,
        "bytes": 183867185,
        "unitPrice": 1.99
    },
    {
        "name": "Hearts and Minds",
        "albumId": 230,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2619462,
        "bytes": 207607466,
        "unitPrice": 1.99
    },
    {
        "name": "Par Avion",
        "albumId": 229,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2629879,
        "bytes": 517079642,
        "unitPrice": 1.99
    },
    {
        "name": "The Long Con",
        "albumId": 231,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2679583,
        "bytes": 518376636,
        "unitPrice": 1.99
    },
    {
        "name": "One of Them",
        "albumId": 231,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2698791,
        "bytes": 542332389,
        "unitPrice": 1.99
    },
    {
        "name": "Special",
        "albumId": 230,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2618530,
        "bytes": 219961967,
        "unitPrice": 1.99
    },
    {
        "name": "The Man from Tallahassee",
        "albumId": 229,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2637637,
        "bytes": 550893556,
        "unitPrice": 1.99
    },
    {
        "name": "Exposé",
        "albumId": 229,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2593760,
        "bytes": 511338017,
        "unitPrice": 1.99
    },
    {
        "name": "Homecoming",
        "albumId": 230,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2515882,
        "bytes": 210675221,
        "unitPrice": 1.99
    },
    {
        "name": "Maternity Leave",
        "albumId": 231,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2780416,
        "bytes": 555244214,
        "unitPrice": 1.99
    },
    {
        "name": "Left Behind",
        "albumId": 229,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2635343,
        "bytes": 538491964,
        "unitPrice": 1.99
    },
    {
        "name": "Outlaws",
        "albumId": 230,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2619887,
        "bytes": 206500939,
        "unitPrice": 1.99
    },
    {
        "name": "The Whole Truth",
        "albumId": 231,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2610125,
        "bytes": 495487014,
        "unitPrice": 1.99
    },
    {
        "name": "...In Translation",
        "albumId": 230,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2604575,
        "bytes": 215441983,
        "unitPrice": 1.99
    },
    {
        "name": "Lockdown",
        "albumId": 231,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2610250,
        "bytes": 543886056,
        "unitPrice": 1.99
    },
    {
        "name": "One of Us",
        "albumId": 229,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2638096,
        "bytes": 502387276,
        "unitPrice": 1.99
    },
    {
        "name": "Catch-22",
        "albumId": 229,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2561394,
        "bytes": 489773399,
        "unitPrice": 1.99
    },
    {
        "name": "Dave",
        "albumId": 231,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2825166,
        "bytes": 574325829,
        "unitPrice": 1.99
    },
    {
        "name": "Numbers",
        "albumId": 230,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2609772,
        "bytes": 214709143,
        "unitPrice": 1.99
    },
    {
        "name": "D.O.C.",
        "albumId": 229,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2616032,
        "bytes": 518556641,
        "unitPrice": 1.99
    },
    {
        "name": "Deus Ex Machina",
        "albumId": 230,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2582009,
        "bytes": 214996732,
        "unitPrice": 1.99
    },
    {
        "name": "S.O.S.",
        "albumId": 231,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2639541,
        "bytes": 517979269,
        "unitPrice": 1.99
    },
    {
        "name": "Do No Harm",
        "albumId": 230,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2618487,
        "bytes": 212039309,
        "unitPrice": 1.99
    },
    {
        "name": "Two for the Road",
        "albumId": 231,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2610958,
        "bytes": 502404558,
        "unitPrice": 1.99
    },
    {
        "name": "The Greater Good",
        "albumId": 230,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2617784,
        "bytes": 214130273,
        "unitPrice": 1.99
    },
    {
        "name": ""?"",
        "albumId": 231,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2782333,
        "bytes": 528227089,
        "unitPrice": 1.99
    },
    {
        "name": "Born to Run",
        "albumId": 230,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2618619,
        "bytes": 213772057,
        "unitPrice": 1.99
    },
    {
        "name": "Three Minutes",
        "albumId": 231,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2763666,
        "bytes": 531556853,
        "unitPrice": 1.99
    },
    {
        "name": "Exodus (Part 1)",
        "albumId": 230,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2620747,
        "bytes": 213107744,
        "unitPrice": 1.99
    },
    {
        "name": "Live Together, Die Alone, Pt. 1",
        "albumId": 231,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2478041,
        "bytes": 457364940,
        "unitPrice": 1.99
    },
    {
        "name": "Exodus (Part 2) [Season Finale]",
        "albumId": 230,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2605557,
        "bytes": 208667059,
        "unitPrice": 1.99
    },
    {
        "name": "Live Together, Die Alone, Pt. 2",
        "albumId": 231,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2656531,
        "bytes": 503619265,
        "unitPrice": 1.99
    },
    {
        "name": "Exodus (Part 3) [Season Finale]",
        "albumId": 230,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2619869,
        "bytes": 197937785,
        "unitPrice": 1.99
    },
    {
        "name": "Zoo Station",
        "albumId": 232,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2",
        "milliseconds": 276349,
        "bytes": 9056902,
        "unitPrice": 0.99
    },
    {
        "name": "Even Better Than The Real Thing",
        "albumId": 232,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2",
        "milliseconds": 221361,
        "bytes": 7279392,
        "unitPrice": 0.99
    },
    {
        "name": "One",
        "albumId": 232,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2",
        "milliseconds": 276192,
        "bytes": 9158892,
        "unitPrice": 0.99
    },
    {
        "name": "Until The End Of The World",
        "albumId": 232,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2",
        "milliseconds": 278700,
        "bytes": 9132485,
        "unitPrice": 0.99
    },
    {
        "name": "Who's Gonna Ride Your Wild Horses",
        "albumId": 232,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2",
        "milliseconds": 316551,
        "bytes": 10304369,
        "unitPrice": 0.99
    },
    {
        "name": "So Cruel",
        "albumId": 232,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2",
        "milliseconds": 349492,
        "bytes": 11527614,
        "unitPrice": 0.99
    },
    {
        "name": "The Fly",
        "albumId": 232,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2",
        "milliseconds": 268982,
        "bytes": 8825399,
        "unitPrice": 0.99
    },
    {
        "name": "Mysterious Ways",
        "albumId": 232,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2",
        "milliseconds": 243826,
        "bytes": 8062057,
        "unitPrice": 0.99
    },
    {
        "name": "Tryin' To Throw Your Arms Around The World",
        "albumId": 232,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2",
        "milliseconds": 232463,
        "bytes": 7612124,
        "unitPrice": 0.99
    },
    {
        "name": "Ultraviolet (Light My Way)",
        "albumId": 232,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2",
        "milliseconds": 330788,
        "bytes": 10754631,
        "unitPrice": 0.99
    },
    {
        "name": "Acrobat",
        "albumId": 232,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2",
        "milliseconds": 270288,
        "bytes": 8824723,
        "unitPrice": 0.99
    },
    {
        "name": "Love Is Blindness",
        "albumId": 232,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2",
        "milliseconds": 263497,
        "bytes": 8531766,
        "unitPrice": 0.99
    },
    {
        "name": "Beautiful Day",
        "albumId": 233,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Adam Clayton, Bono, Larry Mullen, The Edge",
        "milliseconds": 248163,
        "bytes": 8056723,
        "unitPrice": 0.99
    },
    {
        "name": "Stuck In A Moment You Can't Get Out Of",
        "albumId": 233,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Adam Clayton, Bono, Larry Mullen, The Edge",
        "milliseconds": 272378,
        "bytes": 8997366,
        "unitPrice": 0.99
    },
    {
        "name": "Elevation",
        "albumId": 233,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Adam Clayton, Bono, Larry Mullen, The Edge",
        "milliseconds": 227552,
        "bytes": 7479414,
        "unitPrice": 0.99
    },
    {
        "name": "Walk On",
        "albumId": 233,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Adam Clayton, Bono, Larry Mullen, The Edge",
        "milliseconds": 296280,
        "bytes": 9800861,
        "unitPrice": 0.99
    },
    {
        "name": "Kite",
        "albumId": 233,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Adam Clayton, Bono, Larry Mullen, The Edge",
        "milliseconds": 266893,
        "bytes": 8765761,
        "unitPrice": 0.99
    },
    {
        "name": "In A Little While",
        "albumId": 233,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Adam Clayton, Bono, Larry Mullen, The Edge",
        "milliseconds": 219271,
        "bytes": 7189647,
        "unitPrice": 0.99
    },
    {
        "name": "Wild Honey",
        "albumId": 233,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Adam Clayton, Bono, Larry Mullen, The Edge",
        "milliseconds": 226768,
        "bytes": 7466069,
        "unitPrice": 0.99
    },
    {
        "name": "Peace On Earth",
        "albumId": 233,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Adam Clayton, Bono, Larry Mullen, The Edge",
        "milliseconds": 288496,
        "bytes": 9476171,
        "unitPrice": 0.99
    },
    {
        "name": "When I Look At The World",
        "albumId": 233,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Adam Clayton, Bono, Larry Mullen, The Edge",
        "milliseconds": 257776,
        "bytes": 8500491,
        "unitPrice": 0.99
    },
    {
        "name": "New York",
        "albumId": 233,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Adam Clayton, Bono, Larry Mullen, The Edge",
        "milliseconds": 330370,
        "bytes": 10862323,
        "unitPrice": 0.99
    },
    {
        "name": "Grace",
        "albumId": 233,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Adam Clayton, Bono, Larry Mullen, The Edge",
        "milliseconds": 330657,
        "bytes": 10877148,
        "unitPrice": 0.99
    },
    {
        "name": "The Three Sunrises",
        "albumId": 234,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2",
        "milliseconds": 234788,
        "bytes": 7717990,
        "unitPrice": 0.99
    },
    {
        "name": "Spanish Eyes",
        "albumId": 234,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2",
        "milliseconds": 196702,
        "bytes": 6392710,
        "unitPrice": 0.99
    },
    {
        "name": "Sweetest Thing",
        "albumId": 234,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2",
        "milliseconds": 185103,
        "bytes": 6154896,
        "unitPrice": 0.99
    },
    {
        "name": "Love Comes Tumbling",
        "albumId": 234,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2",
        "milliseconds": 282671,
        "bytes": 9328802,
        "unitPrice": 0.99
    },
    {
        "name": "Bass Trap",
        "albumId": 234,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2",
        "milliseconds": 213289,
        "bytes": 6834107,
        "unitPrice": 0.99
    },
    {
        "name": "Dancing Barefoot",
        "albumId": 234,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Ivan Kral/Patti Smith",
        "milliseconds": 287895,
        "bytes": 9488294,
        "unitPrice": 0.99
    },
    {
        "name": "Everlasting Love",
        "albumId": 234,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Buzz Cason/Mac Gayden",
        "milliseconds": 202631,
        "bytes": 6708932,
        "unitPrice": 0.99
    },
    {
        "name": "Unchained Melody",
        "albumId": 234,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Alex North/Hy Zaret",
        "milliseconds": 294164,
        "bytes": 9597568,
        "unitPrice": 0.99
    },
    {
        "name": "Walk To The Water",
        "albumId": 234,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2",
        "milliseconds": 289253,
        "bytes": 9523336,
        "unitPrice": 0.99
    },
    {
        "name": "Luminous Times (Hold On To Love)",
        "albumId": 234,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Brian Eno/U2",
        "milliseconds": 277760,
        "bytes": 9015513,
        "unitPrice": 0.99
    },
    {
        "name": "Hallelujah Here She Comes",
        "albumId": 234,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2",
        "milliseconds": 242364,
        "bytes": 8027028,
        "unitPrice": 0.99
    },
    {
        "name": "Silver And Gold",
        "albumId": 234,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bono",
        "milliseconds": 279875,
        "bytes": 9199746,
        "unitPrice": 0.99
    },
    {
        "name": "Endless Deep",
        "albumId": 234,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2",
        "milliseconds": 179879,
        "bytes": 5899070,
        "unitPrice": 0.99
    },
    {
        "name": "A Room At The Heartbreak Hotel",
        "albumId": 234,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2",
        "milliseconds": 274546,
        "bytes": 9015416,
        "unitPrice": 0.99
    },
    {
        "name": "Trash, Trampoline And The Party Girl",
        "albumId": 234,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2",
        "milliseconds": 153965,
        "bytes": 5083523,
        "unitPrice": 0.99
    },
    {
        "name": "Vertigo",
        "albumId": 235,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Adam Clayton, Bono, Larry Mullen & The Edge",
        "milliseconds": 194612,
        "bytes": 6329502,
        "unitPrice": 0.99
    },
    {
        "name": "Miracle Drug",
        "albumId": 235,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Adam Clayton, Bono, Larry Mullen & The Edge",
        "milliseconds": 239124,
        "bytes": 7760916,
        "unitPrice": 0.99
    },
    {
        "name": "Sometimes You Can't Make It On Your Own",
        "albumId": 235,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Adam Clayton, Bono, Larry Mullen & The Edge",
        "milliseconds": 308976,
        "bytes": 10112863,
        "unitPrice": 0.99
    },
    {
        "name": "Love And Peace Or Else",
        "albumId": 235,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Adam Clayton, Bono, Larry Mullen & The Edge",
        "milliseconds": 290690,
        "bytes": 9476723,
        "unitPrice": 0.99
    },
    {
        "name": "City Of Blinding Lights",
        "albumId": 235,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Adam Clayton, Bono, Larry Mullen & The Edge",
        "milliseconds": 347951,
        "bytes": 11432026,
        "unitPrice": 0.99
    },
    {
        "name": "All Because Of You",
        "albumId": 235,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Adam Clayton, Bono, Larry Mullen & The Edge",
        "milliseconds": 219141,
        "bytes": 7198014,
        "unitPrice": 0.99
    },
    {
        "name": "A Man And A Woman",
        "albumId": 235,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Adam Clayton, Bono, Larry Mullen & The Edge",
        "milliseconds": 270132,
        "bytes": 8938285,
        "unitPrice": 0.99
    },
    {
        "name": "Crumbs From Your Table",
        "albumId": 235,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Adam Clayton, Bono, Larry Mullen & The Edge",
        "milliseconds": 303568,
        "bytes": 9892349,
        "unitPrice": 0.99
    },
    {
        "name": "One Step Closer",
        "albumId": 235,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Adam Clayton, Bono, Larry Mullen & The Edge",
        "milliseconds": 231680,
        "bytes": 7512912,
        "unitPrice": 0.99
    },
    {
        "name": "Original Of The Species",
        "albumId": 235,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Adam Clayton, Bono, Larry Mullen & The Edge",
        "milliseconds": 281443,
        "bytes": 9230041,
        "unitPrice": 0.99
    },
    {
        "name": "Yahweh",
        "albumId": 235,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Adam Clayton, Bono, Larry Mullen & The Edge",
        "milliseconds": 262034,
        "bytes": 8636998,
        "unitPrice": 0.99
    },
    {
        "name": "Discotheque",
        "albumId": 236,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bono, The Edge, Adam Clayton, and Larry Mullen",
        "milliseconds": 319582,
        "bytes": 10442206,
        "unitPrice": 0.99
    },
    {
        "name": "Do You Feel Loved",
        "albumId": 236,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bono, The Edge, Adam Clayton, and Larry Mullen",
        "milliseconds": 307539,
        "bytes": 10122694,
        "unitPrice": 0.99
    },
    {
        "name": "Mofo",
        "albumId": 236,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bono, The Edge, Adam Clayton, and Larry Mullen",
        "milliseconds": 349178,
        "bytes": 11583042,
        "unitPrice": 0.99
    },
    {
        "name": "If God Will Send His Angels",
        "albumId": 236,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bono, The Edge, Adam Clayton, and Larry Mullen",
        "milliseconds": 322533,
        "bytes": 10563329,
        "unitPrice": 0.99
    },
    {
        "name": "Staring At The Sun",
        "albumId": 236,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bono, The Edge, Adam Clayton, and Larry Mullen",
        "milliseconds": 276924,
        "bytes": 9082838,
        "unitPrice": 0.99
    },
    {
        "name": "Last Night On Earth",
        "albumId": 236,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bono, The Edge, Adam Clayton, and Larry Mullen",
        "milliseconds": 285753,
        "bytes": 9401017,
        "unitPrice": 0.99
    },
    {
        "name": "Gone",
        "albumId": 236,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bono, The Edge, Adam Clayton, and Larry Mullen",
        "milliseconds": 266866,
        "bytes": 8746301,
        "unitPrice": 0.99
    },
    {
        "name": "Miami",
        "albumId": 236,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bono, The Edge, Adam Clayton, and Larry Mullen",
        "milliseconds": 293041,
        "bytes": 9741603,
        "unitPrice": 0.99
    },
    {
        "name": "The Playboy Mansion",
        "albumId": 236,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bono, The Edge, Adam Clayton, and Larry Mullen",
        "milliseconds": 280555,
        "bytes": 9274144,
        "unitPrice": 0.99
    },
    {
        "name": "If You Wear That Velvet Dress",
        "albumId": 236,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bono, The Edge, Adam Clayton, and Larry Mullen",
        "milliseconds": 315167,
        "bytes": 10227333,
        "unitPrice": 0.99
    },
    {
        "name": "Please",
        "albumId": 236,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bono, The Edge, Adam Clayton, and Larry Mullen",
        "milliseconds": 302602,
        "bytes": 9909484,
        "unitPrice": 0.99
    },
    {
        "name": "Wake Up Dead Man",
        "albumId": 236,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bono, The Edge, Adam Clayton, and Larry Mullen",
        "milliseconds": 292832,
        "bytes": 9515903,
        "unitPrice": 0.99
    },
    {
        "name": "Helter Skelter",
        "albumId": 237,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Lennon, John/McCartney, Paul",
        "milliseconds": 187350,
        "bytes": 6097636,
        "unitPrice": 0.99
    },
    {
        "name": "Van Diemen's Land",
        "albumId": 237,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bono/Clayton, Adam/Mullen Jr., Larry/The Edge",
        "milliseconds": 186044,
        "bytes": 5990280,
        "unitPrice": 0.99
    },
    {
        "name": "Desire",
        "albumId": 237,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bono/Clayton, Adam/Mullen Jr., Larry/The Edge",
        "milliseconds": 179226,
        "bytes": 5874535,
        "unitPrice": 0.99
    },
    {
        "name": "Hawkmoon 269",
        "albumId": 237,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bono/Clayton, Adam/Mullen Jr., Larry/The Edge",
        "milliseconds": 382458,
        "bytes": 12494987,
        "unitPrice": 0.99
    },
    {
        "name": "All Along The Watchtower",
        "albumId": 237,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dylan, Bob",
        "milliseconds": 264568,
        "bytes": 8623572,
        "unitPrice": 0.99
    },
    {
        "name": "I Still Haven't Found What I'm Looking for",
        "albumId": 237,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bono/Clayton, Adam/Mullen Jr., Larry/The Edge",
        "milliseconds": 353567,
        "bytes": 11542247,
        "unitPrice": 0.99
    },
    {
        "name": "Freedom For My People",
        "albumId": 237,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Mabins, Macie/Magee, Sterling/Robinson, Bobby",
        "milliseconds": 38164,
        "bytes": 1249764,
        "unitPrice": 0.99
    },
    {
        "name": "Silver And Gold",
        "albumId": 237,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bono/Clayton, Adam/Mullen Jr., Larry/The Edge",
        "milliseconds": 349831,
        "bytes": 11450194,
        "unitPrice": 0.99
    },
    {
        "name": "Pride (In The name Of Love)",
        "albumId": 237,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bono/Clayton, Adam/Mullen Jr., Larry/The Edge",
        "milliseconds": 267807,
        "bytes": 8806361,
        "unitPrice": 0.99
    },
    {
        "name": "Angel Of Harlem",
        "albumId": 237,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bono/Clayton, Adam/Mullen Jr., Larry/The Edge",
        "milliseconds": 229276,
        "bytes": 7498022,
        "unitPrice": 0.99
    },
    {
        "name": "Love Rescue Me",
        "albumId": 237,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bono/Clayton, Adam/Dylan, Bob/Mullen Jr., Larry/The Edge",
        "milliseconds": 384522,
        "bytes": 12508716,
        "unitPrice": 0.99
    },
    {
        "name": "When Love Comes To Town",
        "albumId": 237,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bono/Clayton, Adam/Mullen Jr., Larry/The Edge",
        "milliseconds": 255869,
        "bytes": 8340954,
        "unitPrice": 0.99
    },
    {
        "name": "Heartland",
        "albumId": 237,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bono/Clayton, Adam/Mullen Jr., Larry/The Edge",
        "milliseconds": 303360,
        "bytes": 9867748,
        "unitPrice": 0.99
    },
    {
        "name": "God Part II",
        "albumId": 237,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bono/Clayton, Adam/Mullen Jr., Larry/The Edge",
        "milliseconds": 195604,
        "bytes": 6497570,
        "unitPrice": 0.99
    },
    {
        "name": "The Star Spangled Banner",
        "albumId": 237,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Hendrix, Jimi",
        "milliseconds": 43232,
        "bytes": 1385810,
        "unitPrice": 0.99
    },
    {
        "name": "Bullet The Blue Sky",
        "albumId": 237,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bono/Clayton, Adam/Mullen Jr., Larry/The Edge",
        "milliseconds": 337005,
        "bytes": 10993607,
        "unitPrice": 0.99
    },
    {
        "name": "All I Want Is You",
        "albumId": 237,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bono/Clayton, Adam/Mullen Jr., Larry/The Edge",
        "milliseconds": 390243,
        "bytes": 12729820,
        "unitPrice": 0.99
    },
    {
        "name": "Pride (In The name Of Love)",
        "albumId": 238,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2",
        "milliseconds": 230243,
        "bytes": 7549085,
        "unitPrice": 0.99
    },
    {
        "name": "New Year's Day",
        "albumId": 238,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2",
        "milliseconds": 258925,
        "bytes": 8491818,
        "unitPrice": 0.99
    },
    {
        "name": "With Or Without You",
        "albumId": 238,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2",
        "milliseconds": 299023,
        "bytes": 9765188,
        "unitPrice": 0.99
    },
    {
        "name": "I Still Haven't Found What I'm Looking For",
        "albumId": 238,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2",
        "milliseconds": 280764,
        "bytes": 9306737,
        "unitPrice": 0.99
    },
    {
        "name": "Sunday Bloody Sunday",
        "albumId": 238,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2",
        "milliseconds": 282174,
        "bytes": 9269668,
        "unitPrice": 0.99
    },
    {
        "name": "Bad",
        "albumId": 238,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2",
        "milliseconds": 351817,
        "bytes": 11628058,
        "unitPrice": 0.99
    },
    {
        "name": "Where The Streets Have No name",
        "albumId": 238,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2",
        "milliseconds": 276218,
        "bytes": 9042305,
        "unitPrice": 0.99
    },
    {
        "name": "I Will Follow",
        "albumId": 238,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2",
        "milliseconds": 218253,
        "bytes": 7184825,
        "unitPrice": 0.99
    },
    {
        "name": "The Unforgettable Fire",
        "albumId": 238,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2",
        "milliseconds": 295183,
        "bytes": 9684664,
        "unitPrice": 0.99
    },
    {
        "name": "Sweetest Thing",
        "albumId": 238,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2 & Daragh O'Toole",
        "milliseconds": 183066,
        "bytes": 6071385,
        "unitPrice": 0.99
    },
    {
        "name": "Desire",
        "albumId": 238,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2",
        "milliseconds": 179853,
        "bytes": 5893206,
        "unitPrice": 0.99
    },
    {
        "name": "When Love Comes To Town",
        "albumId": 238,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2",
        "milliseconds": 258194,
        "bytes": 8479525,
        "unitPrice": 0.99
    },
    {
        "name": "Angel Of Harlem",
        "albumId": 238,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2",
        "milliseconds": 230217,
        "bytes": 7527339,
        "unitPrice": 0.99
    },
    {
        "name": "All I Want Is You",
        "albumId": 238,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2 & Van Dyke Parks",
        "milliseconds": 591986,
        "bytes": 19202252,
        "unitPrice": 0.99
    },
    {
        "name": "Sunday Bloody Sunday",
        "albumId": 239,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2",
        "milliseconds": 278204,
        "bytes": 9140849,
        "unitPrice": 0.99
    },
    {
        "name": "Seconds",
        "albumId": 239,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2",
        "milliseconds": 191582,
        "bytes": 6352121,
        "unitPrice": 0.99
    },
    {
        "name": "New Year's Day",
        "albumId": 239,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2",
        "milliseconds": 336274,
        "bytes": 11054732,
        "unitPrice": 0.99
    },
    {
        "name": "Like A Song...",
        "albumId": 239,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2",
        "milliseconds": 287294,
        "bytes": 9365379,
        "unitPrice": 0.99
    },
    {
        "name": "Drowning Man",
        "albumId": 239,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2",
        "milliseconds": 254458,
        "bytes": 8457066,
        "unitPrice": 0.99
    },
    {
        "name": "The Refugee",
        "albumId": 239,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2",
        "milliseconds": 221283,
        "bytes": 7374043,
        "unitPrice": 0.99
    },
    {
        "name": "Two Hearts Beat As One",
        "albumId": 239,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2",
        "milliseconds": 243487,
        "bytes": 7998323,
        "unitPrice": 0.99
    },
    {
        "name": "Red Light",
        "albumId": 239,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2",
        "milliseconds": 225854,
        "bytes": 7453704,
        "unitPrice": 0.99
    },
    {
        "name": "Surrender",
        "albumId": 239,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2",
        "milliseconds": 333505,
        "bytes": 11221406,
        "unitPrice": 0.99
    },
    {
        "name": ""40"",
        "albumId": 239,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2",
        "milliseconds": 157962,
        "bytes": 5251767,
        "unitPrice": 0.99
    },
    {
        "name": "Zooropa",
        "albumId": 240,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2; Bono",
        "milliseconds": 392359,
        "bytes": 12807979,
        "unitPrice": 0.99
    },
    {
        "name": "Babyface",
        "albumId": 240,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2; Bono",
        "milliseconds": 241998,
        "bytes": 7942573,
        "unitPrice": 0.99
    },
    {
        "name": "Numb",
        "albumId": 240,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2; Edge, The",
        "milliseconds": 260284,
        "bytes": 8577861,
        "unitPrice": 0.99
    },
    {
        "name": "Lemon",
        "albumId": 240,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2; Bono",
        "milliseconds": 418324,
        "bytes": 13988878,
        "unitPrice": 0.99
    },
    {
        "name": "Stay (Faraway, So Close!)",
        "albumId": 240,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2; Bono",
        "milliseconds": 298475,
        "bytes": 9785480,
        "unitPrice": 0.99
    },
    {
        "name": "Daddy's Gonna Pay For Your Crashed Car",
        "albumId": 240,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2; Bono",
        "milliseconds": 320287,
        "bytes": 10609581,
        "unitPrice": 0.99
    },
    {
        "name": "Some Days Are Better Than Others",
        "albumId": 240,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2; Bono",
        "milliseconds": 257436,
        "bytes": 8417690,
        "unitPrice": 0.99
    },
    {
        "name": "The First Time",
        "albumId": 240,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2; Bono",
        "milliseconds": 225697,
        "bytes": 7247651,
        "unitPrice": 0.99
    },
    {
        "name": "Dirty Day",
        "albumId": 240,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2; Bono & Edge, The",
        "milliseconds": 324440,
        "bytes": 10652877,
        "unitPrice": 0.99
    },
    {
        "name": "The Wanderer",
        "albumId": 240,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "U2; Bono",
        "milliseconds": 283951,
        "bytes": 9258717,
        "unitPrice": 0.99
    },
    {
        "name": "Breakfast In Bed",
        "albumId": 241,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": null,
        "milliseconds": 196179,
        "bytes": 6513325,
        "unitPrice": 0.99
    },
    {
        "name": "Where Did I Go Wrong",
        "albumId": 241,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": null,
        "milliseconds": 226742,
        "bytes": 7485054,
        "unitPrice": 0.99
    },
    {
        "name": "I Would Do For You",
        "albumId": 241,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": null,
        "milliseconds": 334524,
        "bytes": 11193602,
        "unitPrice": 0.99
    },
    {
        "name": "Homely Girl",
        "albumId": 241,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": null,
        "milliseconds": 203833,
        "bytes": 6790788,
        "unitPrice": 0.99
    },
    {
        "name": "Here I Am (Come And Take Me)",
        "albumId": 241,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": null,
        "milliseconds": 242102,
        "bytes": 8106249,
        "unitPrice": 0.99
    },
    {
        "name": "Kingston Town",
        "albumId": 241,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": null,
        "milliseconds": 226951,
        "bytes": 7638236,
        "unitPrice": 0.99
    },
    {
        "name": "Wear You To The Ball",
        "albumId": 241,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": null,
        "milliseconds": 213342,
        "bytes": 7159527,
        "unitPrice": 0.99
    },
    {
        "name": "(I Can't Help) Falling In Love With You",
        "albumId": 241,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": null,
        "milliseconds": 207568,
        "bytes": 6905623,
        "unitPrice": 0.99
    },
    {
        "name": "Higher Ground",
        "albumId": 241,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": null,
        "milliseconds": 260179,
        "bytes": 8665244,
        "unitPrice": 0.99
    },
    {
        "name": "Bring Me Your Cup",
        "albumId": 241,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": null,
        "milliseconds": 341498,
        "bytes": 11346114,
        "unitPrice": 0.99
    },
    {
        "name": "C'est La Vie",
        "albumId": 241,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": null,
        "milliseconds": 270053,
        "bytes": 9031661,
        "unitPrice": 0.99
    },
    {
        "name": "Reggae Music",
        "albumId": 241,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": null,
        "milliseconds": 245106,
        "bytes": 8203931,
        "unitPrice": 0.99
    },
    {
        "name": "Superstition",
        "albumId": 241,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": null,
        "milliseconds": 319582,
        "bytes": 10728099,
        "unitPrice": 0.99
    },
    {
        "name": "Until My Dying Day",
        "albumId": 241,
        "mediaTypeId": 1,
        "genreId": 8,
        "composer": null,
        "milliseconds": 235807,
        "bytes": 7886195,
        "unitPrice": 0.99
    },
    {
        "name": "Where Have All The Good Times Gone?",
        "albumId": 242,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Ray Davies",
        "milliseconds": 186723,
        "bytes": 6063937,
        "unitPrice": 0.99
    },
    {
        "name": "Hang 'Em High",
        "albumId": 242,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Alex Van Halen/David Lee Roth/Edward Van Halen/Michael Anthony",
        "milliseconds": 210259,
        "bytes": 6872314,
        "unitPrice": 0.99
    },
    {
        "name": "Cathedral",
        "albumId": 242,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Alex Van Halen/David Lee Roth/Edward Van Halen/Michael Anthony",
        "milliseconds": 82860,
        "bytes": 2650998,
        "unitPrice": 0.99
    },
    {
        "name": "Secrets",
        "albumId": 242,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Alex Van Halen/David Lee Roth/Edward Van Halen/Michael Anthony",
        "milliseconds": 206968,
        "bytes": 6803255,
        "unitPrice": 0.99
    },
    {
        "name": "Intruder",
        "albumId": 242,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Alex Van Halen/David Lee Roth/Edward Van Halen/Michael Anthony",
        "milliseconds": 100153,
        "bytes": 3282142,
        "unitPrice": 0.99
    },
    {
        "name": "(Oh) Pretty Woman",
        "albumId": 242,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Bill Dees/Roy Orbison",
        "milliseconds": 174680,
        "bytes": 5665828,
        "unitPrice": 0.99
    },
    {
        "name": "Dancing In The Street",
        "albumId": 242,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Ivy Jo Hunter/Marvin Gaye/William Stevenson",
        "milliseconds": 225985,
        "bytes": 7461499,
        "unitPrice": 0.99
    },
    {
        "name": "Little Guitars (Intro)",
        "albumId": 242,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Alex Van Halen/David Lee Roth/Edward Van Halen/Michael Anthony",
        "milliseconds": 42240,
        "bytes": 1439530,
        "unitPrice": 0.99
    },
    {
        "name": "Little Guitars",
        "albumId": 242,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Alex Van Halen/David Lee Roth/Edward Van Halen/Michael Anthony",
        "milliseconds": 228806,
        "bytes": 7453043,
        "unitPrice": 0.99
    },
    {
        "name": "Big Bad Bill (Is Sweet William Now)",
        "albumId": 242,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Jack Yellen/Milton Ager",
        "milliseconds": 165146,
        "bytes": 5489609,
        "unitPrice": 0.99
    },
    {
        "name": "The Full Bug",
        "albumId": 242,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Alex Van Halen/David Lee Roth/Edward Van Halen/Michael Anthony",
        "milliseconds": 201116,
        "bytes": 6551013,
        "unitPrice": 0.99
    },
    {
        "name": "Happy Trails",
        "albumId": 242,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dale Evans",
        "milliseconds": 65488,
        "bytes": 2111141,
        "unitPrice": 0.99
    },
    {
        "name": "Eruption",
        "albumId": 243,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Edward Van Halen, Alex Van Halen, David Lee Roth, Michael Anthony",
        "milliseconds": 102164,
        "bytes": 3272891,
        "unitPrice": 0.99
    },
    {
        "name": "Ain't Talkin' 'bout Love",
        "albumId": 243,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Edward Van Halen, Alex Van Halen, David Lee Roth, Michael Anthony",
        "milliseconds": 228336,
        "bytes": 7569506,
        "unitPrice": 0.99
    },
    {
        "name": "Runnin' With The Devil",
        "albumId": 243,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Edward Van Halen, Alex Van Halen, David Lee Roth, Michael Anthony",
        "milliseconds": 215902,
        "bytes": 7061901,
        "unitPrice": 0.99
    },
    {
        "name": "Dance the Night Away",
        "albumId": 243,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Edward Van Halen, Alex Van Halen, David Lee Roth, Michael Anthony",
        "milliseconds": 185965,
        "bytes": 6087433,
        "unitPrice": 0.99
    },
    {
        "name": "And the Cradle Will Rock...",
        "albumId": 243,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Edward Van Halen, Alex Van Halen, David Lee Roth, Michael Anthony",
        "milliseconds": 213968,
        "bytes": 7011402,
        "unitPrice": 0.99
    },
    {
        "name": "Unchained",
        "albumId": 243,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Edward Van Halen, Alex Van Halen, David Lee Roth, Michael Anthony",
        "milliseconds": 208953,
        "bytes": 6777078,
        "unitPrice": 0.99
    },
    {
        "name": "Jump",
        "albumId": 243,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Edward Van Halen, Alex Van Halen, David Lee Roth",
        "milliseconds": 241711,
        "bytes": 7911090,
        "unitPrice": 0.99
    },
    {
        "name": "Panama",
        "albumId": 243,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Edward Van Halen, Alex Van Halen, David Lee Roth",
        "milliseconds": 211853,
        "bytes": 6921784,
        "unitPrice": 0.99
    },
    {
        "name": "Why Can't This Be Love",
        "albumId": 243,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Van Halen",
        "milliseconds": 227761,
        "bytes": 7457655,
        "unitPrice": 0.99
    },
    {
        "name": "Dreams",
        "albumId": 243,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Edward Van Halen, Alex Van Halen, Michael Anthony,/Edward Van Halen, Alex Van Halen, Michael Anthony, Sammy Hagar",
        "milliseconds": 291813,
        "bytes": 9504119,
        "unitPrice": 0.99
    },
    {
        "name": "When It's Love",
        "albumId": 243,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Edward Van Halen, Alex Van Halen, Michael Anthony,/Edward Van Halen, Alex Van Halen, Michael Anthony, Sammy Hagar",
        "milliseconds": 338991,
        "bytes": 11049966,
        "unitPrice": 0.99
    },
    {
        "name": "Poundcake",
        "albumId": 243,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Edward Van Halen, Alex Van Halen, Michael Anthony,/Edward Van Halen, Alex Van Halen, Michael Anthony, Sammy Hagar",
        "milliseconds": 321854,
        "bytes": 10366978,
        "unitPrice": 0.99
    },
    {
        "name": "Right Now",
        "albumId": 243,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Van Halen",
        "milliseconds": 321828,
        "bytes": 10503352,
        "unitPrice": 0.99
    },
    {
        "name": "Can't Stop Loving You",
        "albumId": 243,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Van Halen",
        "milliseconds": 248502,
        "bytes": 8107896,
        "unitPrice": 0.99
    },
    {
        "name": "Humans Being",
        "albumId": 243,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Edward Van Halen, Alex Van Halen, Michael Anthony,/Edward Van Halen, Alex Van Halen, Michael Anthony, Sammy Hagar",
        "milliseconds": 308950,
        "bytes": 10014683,
        "unitPrice": 0.99
    },
    {
        "name": "Can't Get This Stuff No More",
        "albumId": 243,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Edward Van Halen, Alex Van Halen, Michael Anthony,/Edward Van Halen, Alex Van Halen, Michael Anthony, David Lee Roth",
        "milliseconds": 315376,
        "bytes": 10355753,
        "unitPrice": 0.99
    },
    {
        "name": "Me Wise Magic",
        "albumId": 243,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Edward Van Halen, Alex Van Halen, Michael Anthony,/Edward Van Halen, Alex Van Halen, Michael Anthony, David Lee Roth",
        "milliseconds": 366053,
        "bytes": 12013467,
        "unitPrice": 0.99
    },
    {
        "name": "Runnin' With The Devil",
        "albumId": 244,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Edward Van Halen, Alex Van Halen, Michael Anthony and David Lee Roth",
        "milliseconds": 216032,
        "bytes": 7056863,
        "unitPrice": 0.99
    },
    {
        "name": "Eruption",
        "albumId": 244,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Edward Van Halen, Alex Van Halen, Michael Anthony and David Lee Roth",
        "milliseconds": 102556,
        "bytes": 3286026,
        "unitPrice": 0.99
    },
    {
        "name": "You Really Got Me",
        "albumId": 244,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Ray Davies",
        "milliseconds": 158589,
        "bytes": 5194092,
        "unitPrice": 0.99
    },
    {
        "name": "Ain't Talkin' 'Bout Love",
        "albumId": 244,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Edward Van Halen, Alex Van Halen, Michael Anthony and David Lee Roth",
        "milliseconds": 230060,
        "bytes": 7617284,
        "unitPrice": 0.99
    },
    {
        "name": "I'm The One",
        "albumId": 244,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Edward Van Halen, Alex Van Halen, Michael Anthony and David Lee Roth",
        "milliseconds": 226507,
        "bytes": 7373922,
        "unitPrice": 0.99
    },
    {
        "name": "Jamie's Cryin'",
        "albumId": 244,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Edward Van Halen, Alex Van Halen, Michael Anthony and David Lee Roth",
        "milliseconds": 210546,
        "bytes": 6946086,
        "unitPrice": 0.99
    },
    {
        "name": "Atomic Punk",
        "albumId": 244,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Edward Van Halen, Alex Van Halen, Michael Anthony and David Lee Roth",
        "milliseconds": 182073,
        "bytes": 5908861,
        "unitPrice": 0.99
    },
    {
        "name": "Feel Your Love Tonight",
        "albumId": 244,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Edward Van Halen, Alex Van Halen, Michael Anthony and David Lee Roth",
        "milliseconds": 222850,
        "bytes": 7293608,
        "unitPrice": 0.99
    },
    {
        "name": "Little Dreamer",
        "albumId": 244,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Edward Van Halen, Alex Van Halen, Michael Anthony and David Lee Roth",
        "milliseconds": 203258,
        "bytes": 6648122,
        "unitPrice": 0.99
    },
    {
        "name": "Ice Cream Man",
        "albumId": 244,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "John Brim",
        "milliseconds": 200306,
        "bytes": 6573145,
        "unitPrice": 0.99
    },
    {
        "name": "On Fire",
        "albumId": 244,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Edward Van Halen, Alex Van Halen, Michael Anthony and David Lee Roth",
        "milliseconds": 180636,
        "bytes": 5879235,
        "unitPrice": 0.99
    },
    {
        "name": "Neworld",
        "albumId": 245,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Van Halen",
        "milliseconds": 105639,
        "bytes": 3495897,
        "unitPrice": 0.99
    },
    {
        "name": "Without You",
        "albumId": 245,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Van Halen",
        "milliseconds": 390295,
        "bytes": 12619558,
        "unitPrice": 0.99
    },
    {
        "name": "One I Want",
        "albumId": 245,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Van Halen",
        "milliseconds": 330788,
        "bytes": 10743970,
        "unitPrice": 0.99
    },
    {
        "name": "From Afar",
        "albumId": 245,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Van Halen",
        "milliseconds": 324414,
        "bytes": 10524554,
        "unitPrice": 0.99
    },
    {
        "name": "Dirty Water Dog",
        "albumId": 245,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Van Halen",
        "milliseconds": 327392,
        "bytes": 10709202,
        "unitPrice": 0.99
    },
    {
        "name": "Once",
        "albumId": 245,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Van Halen",
        "milliseconds": 462837,
        "bytes": 15378082,
        "unitPrice": 0.99
    },
    {
        "name": "Fire in the Hole",
        "albumId": 245,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Van Halen",
        "milliseconds": 331728,
        "bytes": 10846768,
        "unitPrice": 0.99
    },
    {
        "name": "Josephina",
        "albumId": 245,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Van Halen",
        "milliseconds": 342491,
        "bytes": 11161521,
        "unitPrice": 0.99
    },
    {
        "name": "Year to the Day",
        "albumId": 245,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Van Halen",
        "milliseconds": 514612,
        "bytes": 16621333,
        "unitPrice": 0.99
    },
    {
        "name": "Primary",
        "albumId": 245,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Van Halen",
        "milliseconds": 86987,
        "bytes": 2812555,
        "unitPrice": 0.99
    },
    {
        "name": "Ballot or the Bullet",
        "albumId": 245,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Van Halen",
        "milliseconds": 342282,
        "bytes": 11212955,
        "unitPrice": 0.99
    },
    {
        "name": "How Many Say I",
        "albumId": 245,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Van Halen",
        "milliseconds": 363937,
        "bytes": 11716855,
        "unitPrice": 0.99
    },
    {
        "name": "Sucker Train Blues",
        "albumId": 246,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave Kushner, Duff, Matt Sorum, Scott Weiland & Slash",
        "milliseconds": 267859,
        "bytes": 8738780,
        "unitPrice": 0.99
    },
    {
        "name": "Do It For The Kids",
        "albumId": 246,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave Kushner, Duff, Matt Sorum, Scott Weiland & Slash",
        "milliseconds": 235911,
        "bytes": 7693331,
        "unitPrice": 0.99
    },
    {
        "name": "Big Machine",
        "albumId": 246,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave Kushner, Duff, Matt Sorum, Scott Weiland & Slash",
        "milliseconds": 265613,
        "bytes": 8673442,
        "unitPrice": 0.99
    },
    {
        "name": "Illegal I Song",
        "albumId": 246,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave Kushner, Duff, Matt Sorum, Scott Weiland & Slash",
        "milliseconds": 257750,
        "bytes": 8483347,
        "unitPrice": 0.99
    },
    {
        "name": "Spectacle",
        "albumId": 246,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave Kushner, Duff, Matt Sorum, Scott Weiland & Slash",
        "milliseconds": 221701,
        "bytes": 7252876,
        "unitPrice": 0.99
    },
    {
        "name": "Fall To Pieces",
        "albumId": 246,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave Kushner, Duff, Matt Sorum, Scott Weiland & Slash",
        "milliseconds": 270889,
        "bytes": 8823096,
        "unitPrice": 0.99
    },
    {
        "name": "Headspace",
        "albumId": 246,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave Kushner, Duff, Matt Sorum, Scott Weiland & Slash",
        "milliseconds": 223033,
        "bytes": 7237986,
        "unitPrice": 0.99
    },
    {
        "name": "Superhuman",
        "albumId": 246,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave Kushner, Duff, Matt Sorum, Scott Weiland & Slash",
        "milliseconds": 255921,
        "bytes": 8365328,
        "unitPrice": 0.99
    },
    {
        "name": "Set Me Free",
        "albumId": 246,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave Kushner, Duff, Matt Sorum, Scott Weiland & Slash",
        "milliseconds": 247954,
        "bytes": 8053388,
        "unitPrice": 0.99
    },
    {
        "name": "You Got No Right",
        "albumId": 246,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave Kushner, Duff, Matt Sorum, Scott Weiland & Slash",
        "milliseconds": 335412,
        "bytes": 10991094,
        "unitPrice": 0.99
    },
    {
        "name": "Slither",
        "albumId": 246,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave Kushner, Duff, Matt Sorum, Scott Weiland & Slash",
        "milliseconds": 248398,
        "bytes": 8118785,
        "unitPrice": 0.99
    },
    {
        "name": "Dirty Little Thing",
        "albumId": 246,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave Kushner, Duff, Keith Nelson, Matt Sorum, Scott Weiland & Slash",
        "milliseconds": 237844,
        "bytes": 7732982,
        "unitPrice": 0.99
    },
    {
        "name": "Loving The Alien",
        "albumId": 246,
        "mediaTypeId": 1,
        "genreId": 1,
        "composer": "Dave Kushner, Duff, Matt Sorum, Scott Weiland & Slash",
        "milliseconds": 348786,
        "bytes": 11412762,
        "unitPrice": 0.99
    },
    {
        "name": "Pela Luz Dos Olhos Teus",
        "albumId": 247,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 119196,
        "bytes": 3905715,
        "unitPrice": 0.99
    },
    {
        "name": "A Bencao E Outros",
        "albumId": 247,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 421093,
        "bytes": 14234427,
        "unitPrice": 0.99
    },
    {
        "name": "Tudo Na Mais Santa Paz",
        "albumId": 247,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 222406,
        "bytes": 7426757,
        "unitPrice": 0.99
    },
    {
        "name": "O Velho E Aflor",
        "albumId": 247,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 275121,
        "bytes": 9126828,
        "unitPrice": 0.99
    },
    {
        "name": "Cotidiano N 2",
        "albumId": 247,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 55902,
        "bytes": 1805797,
        "unitPrice": 0.99
    },
    {
        "name": "Adeus",
        "albumId": 247,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 221884,
        "bytes": 7259351,
        "unitPrice": 0.99
    },
    {
        "name": "Samba Pra Endrigo",
        "albumId": 247,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 259265,
        "bytes": 8823551,
        "unitPrice": 0.99
    },
    {
        "name": "So Por Amor",
        "albumId": 247,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 236591,
        "bytes": 7745764,
        "unitPrice": 0.99
    },
    {
        "name": "Meu Pranto Rolou",
        "albumId": 247,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 181760,
        "bytes": 6003345,
        "unitPrice": 0.99
    },
    {
        "name": "Mulher Carioca",
        "albumId": 247,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 191686,
        "bytes": 6395048,
        "unitPrice": 0.99
    },
    {
        "name": "Um Homem Chamado Alfredo",
        "albumId": 247,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 151640,
        "bytes": 4976227,
        "unitPrice": 0.99
    },
    {
        "name": "Samba Do Jato",
        "albumId": 247,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 220813,
        "bytes": 7357840,
        "unitPrice": 0.99
    },
    {
        "name": "Oi, La",
        "albumId": 247,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 167053,
        "bytes": 5562700,
        "unitPrice": 0.99
    },
    {
        "name": "Vinicius, Poeta Do Encontro",
        "albumId": 247,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 336431,
        "bytes": 10858776,
        "unitPrice": 0.99
    },
    {
        "name": "Soneto Da Separacao",
        "albumId": 247,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": null,
        "milliseconds": 193880,
        "bytes": 6277511,
        "unitPrice": 0.99
    },
    {
        "name": "Still Of The Night",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Sykes",
        "milliseconds": 398210,
        "bytes": 13043817,
        "unitPrice": 0.99
    },
    {
        "name": "Here I Go Again",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Marsden",
        "milliseconds": 233874,
        "bytes": 7652473,
        "unitPrice": 0.99
    },
    {
        "name": "Is This Love",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Sykes",
        "milliseconds": 283924,
        "bytes": 9262360,
        "unitPrice": 0.99
    },
    {
        "name": "Love Ain't No Stranger",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Galley",
        "milliseconds": 259395,
        "bytes": 8490428,
        "unitPrice": 0.99
    },
    {
        "name": "Looking For Love",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Sykes",
        "milliseconds": 391941,
        "bytes": 12769847,
        "unitPrice": 0.99
    },
    {
        "name": "Now You're Gone",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Vandenberg",
        "milliseconds": 251141,
        "bytes": 8162193,
        "unitPrice": 0.99
    },
    {
        "name": "Slide It In",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Coverdale",
        "milliseconds": 202475,
        "bytes": 6615152,
        "unitPrice": 0.99
    },
    {
        "name": "Slow An' Easy",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Moody",
        "milliseconds": 367255,
        "bytes": 11961332,
        "unitPrice": 0.99
    },
    {
        "name": "Judgement Day",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Vandenberg",
        "milliseconds": 317074,
        "bytes": 10326997,
        "unitPrice": 0.99
    },
    {
        "name": "You're Gonna Break My Hart Again",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Sykes",
        "milliseconds": 250853,
        "bytes": 8176847,
        "unitPrice": 0.99
    },
    {
        "name": "The Deeper The Love",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Vandenberg",
        "milliseconds": 262791,
        "bytes": 8606504,
        "unitPrice": 0.99
    },
    {
        "name": "Crying In The Rain",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Coverdale",
        "milliseconds": 337005,
        "bytes": 10931921,
        "unitPrice": 0.99
    },
    {
        "name": "Fool For Your Loving",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Marsden/Moody",
        "milliseconds": 250801,
        "bytes": 8129820,
        "unitPrice": 0.99
    },
    {
        "name": "Sweet Lady Luck",
        "albumId": 141,
        "mediaTypeId": 1,
        "genreId": 3,
        "composer": "Vandenberg",
        "milliseconds": 273737,
        "bytes": 8919163,
        "unitPrice": 0.99
    },
    {
        "name": "Faixa Amarela",
        "albumId": 248,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Beto Gogo/Jessé Pai/Luiz Carlos/Zeca Pagodinho",
        "milliseconds": 240692,
        "bytes": 8082036,
        "unitPrice": 0.99
    },
    {
        "name": "Posso Até Me Apaixonar",
        "albumId": 248,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Dudu Nobre",
        "milliseconds": 200698,
        "bytes": 6735526,
        "unitPrice": 0.99
    },
    {
        "name": "Não Sou Mais Disso",
        "albumId": 248,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Jorge Aragão/Zeca Pagodinho",
        "milliseconds": 225985,
        "bytes": 7613817,
        "unitPrice": 0.99
    },
    {
        "name": "Vivo Isolado Do Mundo",
        "albumId": 248,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Alcides Dias Lopes",
        "milliseconds": 180035,
        "bytes": 6073995,
        "unitPrice": 0.99
    },
    {
        "name": "Coração Em Desalinho",
        "albumId": 248,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Mauro Diniz/Ratino Sigem",
        "milliseconds": 185208,
        "bytes": 6225948,
        "unitPrice": 0.99
    },
    {
        "name": "Seu Balancê",
        "albumId": 248,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Paulinho Rezende/Toninho Geraes",
        "milliseconds": 219454,
        "bytes": 7311219,
        "unitPrice": 0.99
    },
    {
        "name": "Vai Adiar",
        "albumId": 248,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Alcino Corrêa/Monarco",
        "milliseconds": 270393,
        "bytes": 9134882,
        "unitPrice": 0.99
    },
    {
        "name": "Rugas",
        "albumId": 248,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Augusto Garcez/Nelson Cavaquinho",
        "milliseconds": 140930,
        "bytes": 4703182,
        "unitPrice": 0.99
    },
    {
        "name": "Feirinha da Pavuna/Luz do Repente/Bagaço da Laranja",
        "albumId": 248,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Arlindo Cruz/Franco/Marquinhos PQD/Negro, Jovelina Pérolo/Zeca Pagodinho",
        "milliseconds": 107206,
        "bytes": 3593684,
        "unitPrice": 0.99
    },
    {
        "name": "Sem Essa de Malandro Agulha",
        "albumId": 248,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Aldir Blanc/Jayme Vignoli",
        "milliseconds": 158484,
        "bytes": 5332668,
        "unitPrice": 0.99
    },
    {
        "name": "Chico Não Vai na Corimba",
        "albumId": 248,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Dudu Nobre/Zeca Pagodinho",
        "milliseconds": 269374,
        "bytes": 9122188,
        "unitPrice": 0.99
    },
    {
        "name": "Papel Principal",
        "albumId": 248,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Almir Guineto/Dedé Paraiso/Luverci Ernesto",
        "milliseconds": 217495,
        "bytes": 7325302,
        "unitPrice": 0.99
    },
    {
        "name": "Saudade Louca",
        "albumId": 248,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Acyr Marques/Arlindo Cruz/Franco",
        "milliseconds": 243591,
        "bytes": 8136475,
        "unitPrice": 0.99
    },
    {
        "name": "Camarão que Dorme e Onda Leva",
        "albumId": 248,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Acyi Marques/Arlindo Bruz/Braço, Beto Sem/Zeca Pagodinho",
        "milliseconds": 299102,
        "bytes": 10012231,
        "unitPrice": 0.99
    },
    {
        "name": "Sapopemba e Maxambomba",
        "albumId": 248,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Nei Lopes/Wilson Moreira",
        "milliseconds": 245394,
        "bytes": 8268712,
        "unitPrice": 0.99
    },
    {
        "name": "Minha Fé",
        "albumId": 248,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Murilão",
        "milliseconds": 206994,
        "bytes": 6981474,
        "unitPrice": 0.99
    },
    {
        "name": "Lua de Ogum",
        "albumId": 248,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Ratinho/Zeca Pagodinho",
        "milliseconds": 168463,
        "bytes": 5719129,
        "unitPrice": 0.99
    },
    {
        "name": "Samba pras moças",
        "albumId": 248,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Grazielle/Roque Ferreira",
        "milliseconds": 152816,
        "bytes": 5121366,
        "unitPrice": 0.99
    },
    {
        "name": "Verdade",
        "albumId": 248,
        "mediaTypeId": 1,
        "genreId": 7,
        "composer": "Carlinhos Santana/Nelson Rufino",
        "milliseconds": 332826,
        "bytes": 11120708,
        "unitPrice": 0.99
    },
    {
        "name": "The Brig",
        "albumId": 229,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2617325,
        "bytes": 488919543,
        "unitPrice": 1.99
    },
    {
        "name": ".07%",
        "albumId": 228,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2585794,
        "bytes": 541715199,
        "unitPrice": 1.99
    },
    {
        "name": "Five Years Gone",
        "albumId": 228,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2587712,
        "bytes": 530551890,
        "unitPrice": 1.99
    },
    {
        "name": "The Hard Part",
        "albumId": 228,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2601017,
        "bytes": 475996611,
        "unitPrice": 1.99
    },
    {
        "name": "The Man Behind the Curtain",
        "albumId": 229,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2615990,
        "bytes": 493951081,
        "unitPrice": 1.99
    },
    {
        "name": "Greatest Hits",
        "albumId": 229,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2617117,
        "bytes": 522102916,
        "unitPrice": 1.99
    },
    {
        "name": "Landslide",
        "albumId": 228,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2600725,
        "bytes": 518677861,
        "unitPrice": 1.99
    },
    {
        "name": "The Office: An American Workplace (Pilot)",
        "albumId": 249,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 1380833,
        "bytes": 290482361,
        "unitPrice": 1.99
    },
    {
        "name": "Diversity Day",
        "albumId": 249,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 1306416,
        "bytes": 257879716,
        "unitPrice": 1.99
    },
    {
        "name": "Health Care",
        "albumId": 249,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 1321791,
        "bytes": 260493577,
        "unitPrice": 1.99
    },
    {
        "name": "The Alliance",
        "albumId": 249,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 1317125,
        "bytes": 266203162,
        "unitPrice": 1.99
    },
    {
        "name": "Basketball",
        "albumId": 249,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 1323541,
        "bytes": 267464180,
        "unitPrice": 1.99
    },
    {
        "name": "Hot Girl",
        "albumId": 249,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 1325458,
        "bytes": 267836576,
        "unitPrice": 1.99
    },
    {
        "name": "The Dundies",
        "albumId": 250,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 1253541,
        "bytes": 246845576,
        "unitPrice": 1.99
    },
    {
        "name": "Sexual Harassment",
        "albumId": 250,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 1294541,
        "bytes": 273069146,
        "unitPrice": 1.99
    },
    {
        "name": "Office Olympics",
        "albumId": 250,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 1290458,
        "bytes": 256247623,
        "unitPrice": 1.99
    },
    {
        "name": "The Fire",
        "albumId": 250,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 1288166,
        "bytes": 266856017,
        "unitPrice": 1.99
    },
    {
        "name": "Halloween",
        "albumId": 250,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 1315333,
        "bytes": 249205209,
        "unitPrice": 1.99
    },
    {
        "name": "The Fight",
        "albumId": 250,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 1320028,
        "bytes": 277149457,
        "unitPrice": 1.99
    },
    {
        "name": "The Client",
        "albumId": 250,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 1299341,
        "bytes": 253836788,
        "unitPrice": 1.99
    },
    {
        "name": "Performance Review",
        "albumId": 250,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 1292458,
        "bytes": 256143822,
        "unitPrice": 1.99
    },
    {
        "name": "Email Surveillance",
        "albumId": 250,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 1328870,
        "bytes": 265101113,
        "unitPrice": 1.99
    },
    {
        "name": "Christmas Party",
        "albumId": 250,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 1282115,
        "bytes": 260891300,
        "unitPrice": 1.99
    },
    {
        "name": "Booze Cruise",
        "albumId": 250,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 1267958,
        "bytes": 252518021,
        "unitPrice": 1.99
    },
    {
        "name": "The Injury",
        "albumId": 250,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 1275275,
        "bytes": 253912762,
        "unitPrice": 1.99
    },
    {
        "name": "The Secret",
        "albumId": 250,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 1264875,
        "bytes": 253143200,
        "unitPrice": 1.99
    },
    {
        "name": "The Carpet",
        "albumId": 250,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 1264375,
        "bytes": 256477011,
        "unitPrice": 1.99
    },
    {
        "name": "Boys and Girls",
        "albumId": 250,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 1278333,
        "bytes": 255245729,
        "unitPrice": 1.99
    },
    {
        "name": "Valentine's Day",
        "albumId": 250,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 1270375,
        "bytes": 253552710,
        "unitPrice": 1.99
    },
    {
        "name": "Dwight's Speech",
        "albumId": 250,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 1278041,
        "bytes": 255001728,
        "unitPrice": 1.99
    },
    {
        "name": "Take Your Daughter to Work Day",
        "albumId": 250,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 1268333,
        "bytes": 253451012,
        "unitPrice": 1.99
    },
    {
        "name": "Michael's Birthday",
        "albumId": 250,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 1237791,
        "bytes": 247238398,
        "unitPrice": 1.99
    },
    {
        "name": "Drug Testing",
        "albumId": 250,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 1278625,
        "bytes": 244626927,
        "unitPrice": 1.99
    },
    {
        "name": "Conflict Resolution",
        "albumId": 250,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 1274583,
        "bytes": 253808658,
        "unitPrice": 1.99
    },
    {
        "name": "Casino Night - Season Finale",
        "albumId": 250,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 1712791,
        "bytes": 327642458,
        "unitPrice": 1.99
    },
    {
        "name": "Gay Witch Hunt",
        "albumId": 251,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 1326534,
        "bytes": 276942637,
        "unitPrice": 1.99
    },
    {
        "name": "The Convention",
        "albumId": 251,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 1297213,
        "bytes": 255117055,
        "unitPrice": 1.99
    },
    {
        "name": "The Coup",
        "albumId": 251,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 1276526,
        "bytes": 267205501,
        "unitPrice": 1.99
    },
    {
        "name": "Grief Counseling",
        "albumId": 251,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 1282615,
        "bytes": 256912833,
        "unitPrice": 1.99
    },
    {
        "name": "The Initiation",
        "albumId": 251,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 1280113,
        "bytes": 251728257,
        "unitPrice": 1.99
    },
    {
        "name": "Diwali",
        "albumId": 251,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 1279904,
        "bytes": 252726644,
        "unitPrice": 1.99
    },
    {
        "name": "Branch Closing",
        "albumId": 251,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 1822781,
        "bytes": 358761786,
        "unitPrice": 1.99
    },
    {
        "name": "The Merger",
        "albumId": 251,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 1801926,
        "bytes": 345960631,
        "unitPrice": 1.99
    },
    {
        "name": "The Convict",
        "albumId": 251,
        "mediaTypeId": 3,
        "genreId": 22,
        "composer": null,
        "milliseconds": 1273064,
        "bytes": 248863427,
        "unitPrice": 1.99
    },
    {
        "name": "A Benihana Christmas, Pts. 1 & 2",
        "albumId": 251,
        "mediaTypeId": 3,
        "genreId": 22,
        "composer": null,
        "milliseconds": 2519436,
        "bytes": 515301752,
        "unitPrice": 1.99
    },
    {
        "name": "Back from Vacation",
        "albumId": 251,
        "mediaTypeId": 3,
        "genreId": 22,
        "composer": null,
        "milliseconds": 1271688,
        "bytes": 245378749,
        "unitPrice": 1.99
    },
    {
        "name": "Traveling Salesmen",
        "albumId": 251,
        "mediaTypeId": 3,
        "genreId": 22,
        "composer": null,
        "milliseconds": 1289039,
        "bytes": 250822697,
        "unitPrice": 1.99
    },
    {
        "name": "Producer's Cut: The Return",
        "albumId": 251,
        "mediaTypeId": 3,
        "genreId": 22,
        "composer": null,
        "milliseconds": 1700241,
        "bytes": 337219980,
        "unitPrice": 1.99
    },
    {
        "name": "Ben Franklin",
        "albumId": 251,
        "mediaTypeId": 3,
        "genreId": 22,
        "composer": null,
        "milliseconds": 1271938,
        "bytes": 264168080,
        "unitPrice": 1.99
    },
    {
        "name": "Phyllis's Wedding",
        "albumId": 251,
        "mediaTypeId": 3,
        "genreId": 22,
        "composer": null,
        "milliseconds": 1271521,
        "bytes": 258561054,
        "unitPrice": 1.99
    },
    {
        "name": "Business School",
        "albumId": 251,
        "mediaTypeId": 3,
        "genreId": 22,
        "composer": null,
        "milliseconds": 1302093,
        "bytes": 254402605,
        "unitPrice": 1.99
    },
    {
        "name": "Cocktails",
        "albumId": 251,
        "mediaTypeId": 3,
        "genreId": 22,
        "composer": null,
        "milliseconds": 1272522,
        "bytes": 259011909,
        "unitPrice": 1.99
    },
    {
        "name": "The Negotiation",
        "albumId": 251,
        "mediaTypeId": 3,
        "genreId": 22,
        "composer": null,
        "milliseconds": 1767851,
        "bytes": 371663719,
        "unitPrice": 1.99
    },
    {
        "name": "Safety Training",
        "albumId": 251,
        "mediaTypeId": 3,
        "genreId": 22,
        "composer": null,
        "milliseconds": 1271229,
        "bytes": 253054534,
        "unitPrice": 1.99
    },
    {
        "name": "Product Recall",
        "albumId": 251,
        "mediaTypeId": 3,
        "genreId": 22,
        "composer": null,
        "milliseconds": 1268268,
        "bytes": 251208610,
        "unitPrice": 1.99
    },
    {
        "name": "Women's Appreciation",
        "albumId": 251,
        "mediaTypeId": 3,
        "genreId": 22,
        "composer": null,
        "milliseconds": 1732649,
        "bytes": 338778844,
        "unitPrice": 1.99
    },
    {
        "name": "Beach Games",
        "albumId": 251,
        "mediaTypeId": 3,
        "genreId": 22,
        "composer": null,
        "milliseconds": 1676134,
        "bytes": 333671149,
        "unitPrice": 1.99
    },
    {
        "name": "The Job",
        "albumId": 251,
        "mediaTypeId": 3,
        "genreId": 22,
        "composer": null,
        "milliseconds": 2541875,
        "bytes": 501060138,
        "unitPrice": 1.99
    },
    {
        "name": "How to Stop an Exploding Man",
        "albumId": 228,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2687103,
        "bytes": 487881159,
        "unitPrice": 1.99
    },
    {
        "name": "Through a Looking Glass",
        "albumId": 229,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 5088838,
        "bytes": 1059546140,
        "unitPrice": 1.99
    },
    {
        "name": "Your Time Is Gonna Come",
        "albumId": 252,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": "Page, Jones",
        "milliseconds": 310774,
        "bytes": 5126563,
        "unitPrice": 0.99
    },
    {
        "name": "Battlestar Galactica, Pt. 1",
        "albumId": 253,
        "mediaTypeId": 3,
        "genreId": 20,
        "composer": null,
        "milliseconds": 2952702,
        "bytes": 541359437,
        "unitPrice": 1.99
    },
    {
        "name": "Battlestar Galactica, Pt. 2",
        "albumId": 253,
        "mediaTypeId": 3,
        "genreId": 20,
        "composer": null,
        "milliseconds": 2956081,
        "bytes": 521387924,
        "unitPrice": 1.99
    },
    {
        "name": "Battlestar Galactica, Pt. 3",
        "albumId": 253,
        "mediaTypeId": 3,
        "genreId": 20,
        "composer": null,
        "milliseconds": 2927802,
        "bytes": 554509033,
        "unitPrice": 1.99
    },
    {
        "name": "Lost Planet of the Gods, Pt. 1",
        "albumId": 253,
        "mediaTypeId": 3,
        "genreId": 20,
        "composer": null,
        "milliseconds": 2922547,
        "bytes": 537812711,
        "unitPrice": 1.99
    },
    {
        "name": "Lost Planet of the Gods, Pt. 2",
        "albumId": 253,
        "mediaTypeId": 3,
        "genreId": 20,
        "composer": null,
        "milliseconds": 2914664,
        "bytes": 534343985,
        "unitPrice": 1.99
    },
    {
        "name": "The Lost Warrior",
        "albumId": 253,
        "mediaTypeId": 3,
        "genreId": 20,
        "composer": null,
        "milliseconds": 2920045,
        "bytes": 558872190,
        "unitPrice": 1.99
    },
    {
        "name": "The Long Patrol",
        "albumId": 253,
        "mediaTypeId": 3,
        "genreId": 20,
        "composer": null,
        "milliseconds": 2925008,
        "bytes": 513122217,
        "unitPrice": 1.99
    },
    {
        "name": "The Gun On Ice Planet Zero, Pt. 1",
        "albumId": 253,
        "mediaTypeId": 3,
        "genreId": 20,
        "composer": null,
        "milliseconds": 2907615,
        "bytes": 540980196,
        "unitPrice": 1.99
    },
    {
        "name": "The Gun On Ice Planet Zero, Pt. 2",
        "albumId": 253,
        "mediaTypeId": 3,
        "genreId": 20,
        "composer": null,
        "milliseconds": 2924341,
        "bytes": 546542281,
        "unitPrice": 1.99
    },
    {
        "name": "The Magnificent Warriors",
        "albumId": 253,
        "mediaTypeId": 3,
        "genreId": 20,
        "composer": null,
        "milliseconds": 2924716,
        "bytes": 570152232,
        "unitPrice": 1.99
    },
    {
        "name": "The Young Lords",
        "albumId": 253,
        "mediaTypeId": 3,
        "genreId": 20,
        "composer": null,
        "milliseconds": 2863571,
        "bytes": 587051735,
        "unitPrice": 1.99
    },
    {
        "name": "The Living Legend, Pt. 1",
        "albumId": 253,
        "mediaTypeId": 3,
        "genreId": 20,
        "composer": null,
        "milliseconds": 2924507,
        "bytes": 503641007,
        "unitPrice": 1.99
    },
    {
        "name": "The Living Legend, Pt. 2",
        "albumId": 253,
        "mediaTypeId": 3,
        "genreId": 20,
        "composer": null,
        "milliseconds": 2923298,
        "bytes": 515632754,
        "unitPrice": 1.99
    },
    {
        "name": "Fire In Space",
        "albumId": 253,
        "mediaTypeId": 3,
        "genreId": 20,
        "composer": null,
        "milliseconds": 2926593,
        "bytes": 536784757,
        "unitPrice": 1.99
    },
    {
        "name": "War of the Gods, Pt. 1",
        "albumId": 253,
        "mediaTypeId": 3,
        "genreId": 20,
        "composer": null,
        "milliseconds": 2922630,
        "bytes": 505761343,
        "unitPrice": 1.99
    },
    {
        "name": "War of the Gods, Pt. 2",
        "albumId": 253,
        "mediaTypeId": 3,
        "genreId": 20,
        "composer": null,
        "milliseconds": 2923381,
        "bytes": 487899692,
        "unitPrice": 1.99
    },
    {
        "name": "The Man With Nine Lives",
        "albumId": 253,
        "mediaTypeId": 3,
        "genreId": 20,
        "composer": null,
        "milliseconds": 2956998,
        "bytes": 577829804,
        "unitPrice": 1.99
    },
    {
        "name": "Murder On the Rising Star",
        "albumId": 253,
        "mediaTypeId": 3,
        "genreId": 20,
        "composer": null,
        "milliseconds": 2935894,
        "bytes": 551759986,
        "unitPrice": 1.99
    },
    {
        "name": "Greetings from Earth, Pt. 1",
        "albumId": 253,
        "mediaTypeId": 3,
        "genreId": 20,
        "composer": null,
        "milliseconds": 2960293,
        "bytes": 536824558,
        "unitPrice": 1.99
    },
    {
        "name": "Greetings from Earth, Pt. 2",
        "albumId": 253,
        "mediaTypeId": 3,
        "genreId": 20,
        "composer": null,
        "milliseconds": 2903778,
        "bytes": 527842860,
        "unitPrice": 1.99
    },
    {
        "name": "Baltar's Escape",
        "albumId": 253,
        "mediaTypeId": 3,
        "genreId": 20,
        "composer": null,
        "milliseconds": 2922088,
        "bytes": 525564224,
        "unitPrice": 1.99
    },
    {
        "name": "Experiment In Terra",
        "albumId": 253,
        "mediaTypeId": 3,
        "genreId": 20,
        "composer": null,
        "milliseconds": 2923548,
        "bytes": 547982556,
        "unitPrice": 1.99
    },
    {
        "name": "Take the Celestra",
        "albumId": 253,
        "mediaTypeId": 3,
        "genreId": 20,
        "composer": null,
        "milliseconds": 2927677,
        "bytes": 512381289,
        "unitPrice": 1.99
    },
    {
        "name": "The Hand of God",
        "albumId": 253,
        "mediaTypeId": 3,
        "genreId": 20,
        "composer": null,
        "milliseconds": 2924007,
        "bytes": 536583079,
        "unitPrice": 1.99
    },
    {
        "name": "Pilot",
        "albumId": 254,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2484567,
        "bytes": 492670102,
        "unitPrice": 1.99
    },
    {
        "name": "Through the Looking Glass, Pt. 2",
        "albumId": 229,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2617117,
        "bytes": 550943353,
        "unitPrice": 1.99
    },
    {
        "name": "Through the Looking Glass, Pt. 1",
        "albumId": 229,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2610860,
        "bytes": 493211809,
        "unitPrice": 1.99
    },
    {
        "name": "Instant Karma",
        "albumId": 255,
        "mediaTypeId": 2,
        "genreId": 9,
        "composer": null,
        "milliseconds": 193188,
        "bytes": 3150090,
        "unitPrice": 0.99
    },
    {
        "name": "#9 Dream",
        "albumId": 255,
        "mediaTypeId": 2,
        "genreId": 9,
        "composer": null,
        "milliseconds": 278312,
        "bytes": 4506425,
        "unitPrice": 0.99
    },
    {
        "name": "Mother",
        "albumId": 255,
        "mediaTypeId": 2,
        "genreId": 9,
        "composer": null,
        "milliseconds": 287740,
        "bytes": 4656660,
        "unitPrice": 0.99
    },
    {
        "name": "Give Peace a Chance",
        "albumId": 255,
        "mediaTypeId": 2,
        "genreId": 9,
        "composer": null,
        "milliseconds": 274644,
        "bytes": 4448025,
        "unitPrice": 0.99
    },
    {
        "name": "Cold Turkey",
        "albumId": 255,
        "mediaTypeId": 2,
        "genreId": 9,
        "composer": null,
        "milliseconds": 281424,
        "bytes": 4556003,
        "unitPrice": 0.99
    },
    {
        "name": "Whatever Gets You Thru the Night",
        "albumId": 255,
        "mediaTypeId": 2,
        "genreId": 9,
        "composer": null,
        "milliseconds": 215084,
        "bytes": 3499018,
        "unitPrice": 0.99
    },
    {
        "name": "I'm Losing You",
        "albumId": 255,
        "mediaTypeId": 2,
        "genreId": 9,
        "composer": null,
        "milliseconds": 240719,
        "bytes": 3907467,
        "unitPrice": 0.99
    },
    {
        "name": "Gimme Some Truth",
        "albumId": 255,
        "mediaTypeId": 2,
        "genreId": 9,
        "composer": null,
        "milliseconds": 232778,
        "bytes": 3780807,
        "unitPrice": 0.99
    },
    {
        "name": "Oh, My Love",
        "albumId": 255,
        "mediaTypeId": 2,
        "genreId": 9,
        "composer": null,
        "milliseconds": 159473,
        "bytes": 2612788,
        "unitPrice": 0.99
    },
    {
        "name": "Imagine",
        "albumId": 255,
        "mediaTypeId": 2,
        "genreId": 9,
        "composer": null,
        "milliseconds": 192329,
        "bytes": 3136271,
        "unitPrice": 0.99
    },
    {
        "name": "Nobody Told Me",
        "albumId": 255,
        "mediaTypeId": 2,
        "genreId": 9,
        "composer": null,
        "milliseconds": 210348,
        "bytes": 3423395,
        "unitPrice": 0.99
    },
    {
        "name": "Jealous Guy",
        "albumId": 255,
        "mediaTypeId": 2,
        "genreId": 9,
        "composer": null,
        "milliseconds": 239094,
        "bytes": 3881620,
        "unitPrice": 0.99
    },
    {
        "name": "Working Class Hero",
        "albumId": 255,
        "mediaTypeId": 2,
        "genreId": 9,
        "composer": null,
        "milliseconds": 265449,
        "bytes": 4301430,
        "unitPrice": 0.99
    },
    {
        "name": "Power to the People",
        "albumId": 255,
        "mediaTypeId": 2,
        "genreId": 9,
        "composer": null,
        "milliseconds": 213018,
        "bytes": 3466029,
        "unitPrice": 0.99
    },
    {
        "name": "Imagine",
        "albumId": 255,
        "mediaTypeId": 2,
        "genreId": 9,
        "composer": null,
        "milliseconds": 219078,
        "bytes": 3562542,
        "unitPrice": 0.99
    },
    {
        "name": "Beautiful Boy",
        "albumId": 255,
        "mediaTypeId": 2,
        "genreId": 9,
        "composer": null,
        "milliseconds": 227995,
        "bytes": 3704642,
        "unitPrice": 0.99
    },
    {
        "name": "Isolation",
        "albumId": 255,
        "mediaTypeId": 2,
        "genreId": 9,
        "composer": null,
        "milliseconds": 156059,
        "bytes": 2558399,
        "unitPrice": 0.99
    },
    {
        "name": "Watching the Wheels",
        "albumId": 255,
        "mediaTypeId": 2,
        "genreId": 9,
        "composer": null,
        "milliseconds": 198645,
        "bytes": 3237063,
        "unitPrice": 0.99
    },
    {
        "name": "Grow Old With Me",
        "albumId": 255,
        "mediaTypeId": 2,
        "genreId": 9,
        "composer": null,
        "milliseconds": 149093,
        "bytes": 2447453,
        "unitPrice": 0.99
    },
    {
        "name": "Gimme Some Truth",
        "albumId": 255,
        "mediaTypeId": 2,
        "genreId": 9,
        "composer": null,
        "milliseconds": 187546,
        "bytes": 3060083,
        "unitPrice": 0.99
    },
    {
        "name": "[Just Like] Starting Over",
        "albumId": 255,
        "mediaTypeId": 2,
        "genreId": 9,
        "composer": null,
        "milliseconds": 215549,
        "bytes": 3506308,
        "unitPrice": 0.99
    },
    {
        "name": "God",
        "albumId": 255,
        "mediaTypeId": 2,
        "genreId": 9,
        "composer": null,
        "milliseconds": 260410,
        "bytes": 4221135,
        "unitPrice": 0.99
    },
    {
        "name": "Real Love",
        "albumId": 255,
        "mediaTypeId": 2,
        "genreId": 9,
        "composer": null,
        "milliseconds": 236911,
        "bytes": 3846658,
        "unitPrice": 0.99
    },
    {
        "name": "Sympton of the Universe",
        "albumId": 256,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 340890,
        "bytes": 5489313,
        "unitPrice": 0.99
    },
    {
        "name": "Snowblind",
        "albumId": 256,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 295960,
        "bytes": 4773171,
        "unitPrice": 0.99
    },
    {
        "name": "Black Sabbath",
        "albumId": 256,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 364180,
        "bytes": 5860455,
        "unitPrice": 0.99
    },
    {
        "name": "Fairies Wear Boots",
        "albumId": 256,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 392764,
        "bytes": 6315916,
        "unitPrice": 0.99
    },
    {
        "name": "War Pigs",
        "albumId": 256,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 515435,
        "bytes": 8270194,
        "unitPrice": 0.99
    },
    {
        "name": "The Wizard",
        "albumId": 256,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 282678,
        "bytes": 4561796,
        "unitPrice": 0.99
    },
    {
        "name": "N.I.B.",
        "albumId": 256,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 335248,
        "bytes": 5399456,
        "unitPrice": 0.99
    },
    {
        "name": "Sweet Leaf",
        "albumId": 256,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 354706,
        "bytes": 5709700,
        "unitPrice": 0.99
    },
    {
        "name": "Never Say Die",
        "albumId": 256,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 258343,
        "bytes": 4173799,
        "unitPrice": 0.99
    },
    {
        "name": "Sabbath, Bloody Sabbath",
        "albumId": 256,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 333622,
        "bytes": 5373633,
        "unitPrice": 0.99
    },
    {
        "name": "Iron Man/Children of the Grave",
        "albumId": 256,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 552308,
        "bytes": 8858616,
        "unitPrice": 0.99
    },
    {
        "name": "Paranoid",
        "albumId": 256,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 189171,
        "bytes": 3071042,
        "unitPrice": 0.99
    },
    {
        "name": "Rock You Like a Hurricane",
        "albumId": 257,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 255766,
        "bytes": 4300973,
        "unitPrice": 0.99
    },
    {
        "name": "No One Like You",
        "albumId": 257,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 240325,
        "bytes": 4050259,
        "unitPrice": 0.99
    },
    {
        "name": "The Zoo",
        "albumId": 257,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 332740,
        "bytes": 5550779,
        "unitPrice": 0.99
    },
    {
        "name": "Loving You Sunday Morning",
        "albumId": 257,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 339125,
        "bytes": 5654493,
        "unitPrice": 0.99
    },
    {
        "name": "Still Loving You",
        "albumId": 257,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 390674,
        "bytes": 6491444,
        "unitPrice": 0.99
    },
    {
        "name": "Big City Nights",
        "albumId": 257,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 251865,
        "bytes": 4237651,
        "unitPrice": 0.99
    },
    {
        "name": "Believe in Love",
        "albumId": 257,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 325774,
        "bytes": 5437651,
        "unitPrice": 0.99
    },
    {
        "name": "Rhythm of Love",
        "albumId": 257,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 231246,
        "bytes": 3902834,
        "unitPrice": 0.99
    },
    {
        "name": "I Can't Explain",
        "albumId": 257,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 205332,
        "bytes": 3482099,
        "unitPrice": 0.99
    },
    {
        "name": "Tease Me Please Me",
        "albumId": 257,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 287229,
        "bytes": 4811894,
        "unitPrice": 0.99
    },
    {
        "name": "Wind of Change",
        "albumId": 257,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 315325,
        "bytes": 5268002,
        "unitPrice": 0.99
    },
    {
        "name": "Send Me an Angel",
        "albumId": 257,
        "mediaTypeId": 2,
        "genreId": 1,
        "composer": null,
        "milliseconds": 273041,
        "bytes": 4581492,
        "unitPrice": 0.99
    },
    {
        "name": "Jump Around",
        "albumId": 258,
        "mediaTypeId": 1,
        "genreId": 17,
        "composer": "E. Schrody/L. Muggerud",
        "milliseconds": 217835,
        "bytes": 8715653,
        "unitPrice": 0.99
    },
    {
        "name": "Salutations",
        "albumId": 258,
        "mediaTypeId": 1,
        "genreId": 17,
        "composer": "E. Schrody/L. Dimant",
        "milliseconds": 69120,
        "bytes": 2767047,
        "unitPrice": 0.99
    },
    {
        "name": "Put Your Head Out",
        "albumId": 258,
        "mediaTypeId": 1,
        "genreId": 17,
        "composer": "E. Schrody/L. Freese/L. Muggerud",
        "milliseconds": 182230,
        "bytes": 7291473,
        "unitPrice": 0.99
    },
    {
        "name": "Top O' The Morning To Ya",
        "albumId": 258,
        "mediaTypeId": 1,
        "genreId": 17,
        "composer": "E. Schrody/L. Dimant",
        "milliseconds": 216633,
        "bytes": 8667599,
        "unitPrice": 0.99
    },
    {
        "name": "Commercial 1",
        "albumId": 258,
        "mediaTypeId": 1,
        "genreId": 17,
        "composer": "L. Muggerud",
        "milliseconds": 7941,
        "bytes": 319888,
        "unitPrice": 0.99
    },
    {
        "name": "House And The Rising Sun",
        "albumId": 258,
        "mediaTypeId": 1,
        "genreId": 17,
        "composer": "E. Schrody/J. Vasquez/L. Dimant",
        "milliseconds": 219402,
        "bytes": 8778369,
        "unitPrice": 0.99
    },
    {
        "name": "Shamrocks And Shenanigans",
        "albumId": 258,
        "mediaTypeId": 1,
        "genreId": 17,
        "composer": "E. Schrody/L. Dimant",
        "milliseconds": 218331,
        "bytes": 8735518,
        "unitPrice": 0.99
    },
    {
        "name": "House Of Pain Anthem",
        "albumId": 258,
        "mediaTypeId": 1,
        "genreId": 17,
        "composer": "E. Schrody/L. Dimant",
        "milliseconds": 155611,
        "bytes": 6226713,
        "unitPrice": 0.99
    },
    {
        "name": "Danny Boy, Danny Boy",
        "albumId": 258,
        "mediaTypeId": 1,
        "genreId": 17,
        "composer": "E. Schrody/L. Muggerud",
        "milliseconds": 114520,
        "bytes": 4583091,
        "unitPrice": 0.99
    },
    {
        "name": "Guess Who's Back",
        "albumId": 258,
        "mediaTypeId": 1,
        "genreId": 17,
        "composer": "E. Schrody/L. Muggerud",
        "milliseconds": 238393,
        "bytes": 9537994,
        "unitPrice": 0.99
    },
    {
        "name": "Commercial 2",
        "albumId": 258,
        "mediaTypeId": 1,
        "genreId": 17,
        "composer": "L. Muggerud",
        "milliseconds": 21211,
        "bytes": 850698,
        "unitPrice": 0.99
    },
    {
        "name": "Put On Your Shit Kickers",
        "albumId": 258,
        "mediaTypeId": 1,
        "genreId": 17,
        "composer": "E. Schrody/L. Muggerud",
        "milliseconds": 190432,
        "bytes": 7619569,
        "unitPrice": 0.99
    },
    {
        "name": "Come And Get Some Of This",
        "albumId": 258,
        "mediaTypeId": 1,
        "genreId": 17,
        "composer": "E. Schrody/L. Muggerud/R. Medrano",
        "milliseconds": 170475,
        "bytes": 6821279,
        "unitPrice": 0.99
    },
    {
        "name": "Life Goes On",
        "albumId": 258,
        "mediaTypeId": 1,
        "genreId": 17,
        "composer": "E. Schrody/R. Medrano",
        "milliseconds": 163030,
        "bytes": 6523458,
        "unitPrice": 0.99
    },
    {
        "name": "One For The Road",
        "albumId": 258,
        "mediaTypeId": 1,
        "genreId": 17,
        "composer": "E. Schrody/L. Dimant/L. Muggerud",
        "milliseconds": 170213,
        "bytes": 6810820,
        "unitPrice": 0.99
    },
    {
        "name": "Feel It",
        "albumId": 258,
        "mediaTypeId": 1,
        "genreId": 17,
        "composer": "E. Schrody/R. Medrano",
        "milliseconds": 239908,
        "bytes": 9598588,
        "unitPrice": 0.99
    },
    {
        "name": "All My Love",
        "albumId": 258,
        "mediaTypeId": 1,
        "genreId": 17,
        "composer": "E. Schrody/L. Dimant",
        "milliseconds": 200620,
        "bytes": 8027065,
        "unitPrice": 0.99
    },
    {
        "name": "Jump Around (Pete Rock Remix)",
        "albumId": 258,
        "mediaTypeId": 1,
        "genreId": 17,
        "composer": "E. Schrody/L. Muggerud",
        "milliseconds": 236120,
        "bytes": 9447101,
        "unitPrice": 0.99
    },
    {
        "name": "Shamrocks And Shenanigans (Boom Shalock Lock Boom/Butch Vig Mix)",
        "albumId": 258,
        "mediaTypeId": 1,
        "genreId": 17,
        "composer": "E. Schrody/L. Dimant",
        "milliseconds": 237035,
        "bytes": 9483705,
        "unitPrice": 0.99
    },
    {
        "name": "Instinto Colectivo",
        "albumId": 259,
        "mediaTypeId": 1,
        "genreId": 15,
        "composer": null,
        "milliseconds": 300564,
        "bytes": 12024875,
        "unitPrice": 0.99
    },
    {
        "name": "Chapa o Coco",
        "albumId": 259,
        "mediaTypeId": 1,
        "genreId": 15,
        "composer": null,
        "milliseconds": 143830,
        "bytes": 5755478,
        "unitPrice": 0.99
    },
    {
        "name": "Prostituta",
        "albumId": 259,
        "mediaTypeId": 1,
        "genreId": 15,
        "composer": null,
        "milliseconds": 359000,
        "bytes": 14362307,
        "unitPrice": 0.99
    },
    {
        "name": "Eu So Queria Sumir",
        "albumId": 259,
        "mediaTypeId": 1,
        "genreId": 15,
        "composer": null,
        "milliseconds": 269740,
        "bytes": 10791921,
        "unitPrice": 0.99
    },
    {
        "name": "Tres Reis",
        "albumId": 259,
        "mediaTypeId": 1,
        "genreId": 15,
        "composer": null,
        "milliseconds": 304143,
        "bytes": 12168015,
        "unitPrice": 0.99
    },
    {
        "name": "Um Lugar ao Sol",
        "albumId": 259,
        "mediaTypeId": 1,
        "genreId": 15,
        "composer": null,
        "milliseconds": 212323,
        "bytes": 8495217,
        "unitPrice": 0.99
    },
    {
        "name": "Batalha Naval",
        "albumId": 259,
        "mediaTypeId": 1,
        "genreId": 15,
        "composer": null,
        "milliseconds": 285727,
        "bytes": 11431382,
        "unitPrice": 0.99
    },
    {
        "name": "Todo o Carnaval tem seu Fim",
        "albumId": 259,
        "mediaTypeId": 1,
        "genreId": 15,
        "composer": null,
        "milliseconds": 237426,
        "bytes": 9499371,
        "unitPrice": 0.99
    },
    {
        "name": "O Misterio do Samba",
        "albumId": 259,
        "mediaTypeId": 1,
        "genreId": 15,
        "composer": null,
        "milliseconds": 226142,
        "bytes": 9047970,
        "unitPrice": 0.99
    },
    {
        "name": "Armadura",
        "albumId": 259,
        "mediaTypeId": 1,
        "genreId": 15,
        "composer": null,
        "milliseconds": 232881,
        "bytes": 9317533,
        "unitPrice": 0.99
    },
    {
        "name": "Na Ladeira",
        "albumId": 259,
        "mediaTypeId": 1,
        "genreId": 15,
        "composer": null,
        "milliseconds": 221570,
        "bytes": 8865099,
        "unitPrice": 0.99
    },
    {
        "name": "Carimbo",
        "albumId": 259,
        "mediaTypeId": 1,
        "genreId": 15,
        "composer": null,
        "milliseconds": 328751,
        "bytes": 13152314,
        "unitPrice": 0.99
    },
    {
        "name": "Catimbo",
        "albumId": 259,
        "mediaTypeId": 1,
        "genreId": 15,
        "composer": null,
        "milliseconds": 254484,
        "bytes": 10181692,
        "unitPrice": 0.99
    },
    {
        "name": "Funk de Bamba",
        "albumId": 259,
        "mediaTypeId": 1,
        "genreId": 15,
        "composer": null,
        "milliseconds": 237322,
        "bytes": 9495184,
        "unitPrice": 0.99
    },
    {
        "name": "Chega no Suingue",
        "albumId": 259,
        "mediaTypeId": 1,
        "genreId": 15,
        "composer": null,
        "milliseconds": 221805,
        "bytes": 8874509,
        "unitPrice": 0.99
    },
    {
        "name": "Mun-Ra",
        "albumId": 259,
        "mediaTypeId": 1,
        "genreId": 15,
        "composer": null,
        "milliseconds": 274651,
        "bytes": 10988338,
        "unitPrice": 0.99
    },
    {
        "name": "Freestyle Love",
        "albumId": 259,
        "mediaTypeId": 1,
        "genreId": 15,
        "composer": null,
        "milliseconds": 318484,
        "bytes": 12741680,
        "unitPrice": 0.99
    },
    {
        "name": "War Pigs",
        "albumId": 260,
        "mediaTypeId": 4,
        "genreId": 23,
        "composer": null,
        "milliseconds": 234013,
        "bytes": 8052374,
        "unitPrice": 0.99
    },
    {
        "name": "Past, Present, and Future",
        "albumId": 261,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2492867,
        "bytes": 490796184,
        "unitPrice": 1.99
    },
    {
        "name": "The Beginning of the End",
        "albumId": 261,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2611903,
        "bytes": 526865050,
        "unitPrice": 1.99
    },
    {
        "name": "LOST Season 4 Trailer",
        "albumId": 261,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 112712,
        "bytes": 20831818,
        "unitPrice": 1.99
    },
    {
        "name": "LOST In 8:15",
        "albumId": 261,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 497163,
        "bytes": 98460675,
        "unitPrice": 1.99
    },
    {
        "name": "Confirmed Dead",
        "albumId": 261,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2611986,
        "bytes": 512168460,
        "unitPrice": 1.99
    },
    {
        "name": "The Economist",
        "albumId": 261,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2609025,
        "bytes": 516934914,
        "unitPrice": 1.99
    },
    {
        "name": "Eggtown",
        "albumId": 261,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2608817,
        "bytes": 501061240,
        "unitPrice": 1.99
    },
    {
        "name": "The Constant",
        "albumId": 261,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2611569,
        "bytes": 520209363,
        "unitPrice": 1.99
    },
    {
        "name": "The Other Woman",
        "albumId": 261,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2605021,
        "bytes": 513246663,
        "unitPrice": 1.99
    },
    {
        "name": "Ji Yeon",
        "albumId": 261,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2588797,
        "bytes": 506458858,
        "unitPrice": 1.99
    },
    {
        "name": "Meet Kevin Johnson",
        "albumId": 261,
        "mediaTypeId": 3,
        "genreId": 19,
        "composer": null,
        "milliseconds": 2612028,
        "bytes": 504132981,
        "unitPrice": 1.99
    },
    {
        "name": "The Shape of Things to Come",
        "albumId": 261,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2591299,
        "bytes": 502284266,
        "unitPrice": 1.99
    },
    {
        "name": "Amanda",
        "albumId": 262,
        "mediaTypeId": 5,
        "genreId": 2,
        "composer": "Luca Gusella",
        "milliseconds": 246503,
        "bytes": 4011615,
        "unitPrice": 0.99
    },
    {
        "name": "Despertar",
        "albumId": 262,
        "mediaTypeId": 5,
        "genreId": 2,
        "composer": "Andrea Dulbecco",
        "milliseconds": 307385,
        "bytes": 4821485,
        "unitPrice": 0.99
    },
    {
        "name": "Din Din Wo (Little Child)",
        "albumId": 263,
        "mediaTypeId": 5,
        "genreId": 16,
        "composer": "Habib Koité",
        "milliseconds": 285837,
        "bytes": 4615841,
        "unitPrice": 0.99
    },
    {
        "name": "Distance",
        "albumId": 264,
        "mediaTypeId": 5,
        "genreId": 15,
        "composer": "Karsh Kale/Vishal Vaid",
        "milliseconds": 327122,
        "bytes": 5327463,
        "unitPrice": 0.99
    },
    {
        "name": "I Guess You're Right",
        "albumId": 265,
        "mediaTypeId": 5,
        "genreId": 1,
        "composer": "Darius "Take One" Minwalla/Jon Auer/Ken Stringfellow/Matt Harris",
        "milliseconds": 212044,
        "bytes": 3453849,
        "unitPrice": 0.99
    },
    {
        "name": "I Ka Barra (Your Work)",
        "albumId": 263,
        "mediaTypeId": 5,
        "genreId": 16,
        "composer": "Habib Koité",
        "milliseconds": 300605,
        "bytes": 4855457,
        "unitPrice": 0.99
    },
    {
        "name": "Love Comes",
        "albumId": 265,
        "mediaTypeId": 5,
        "genreId": 1,
        "composer": "Darius "Take One" Minwalla/Jon Auer/Ken Stringfellow/Matt Harris",
        "milliseconds": 199923,
        "bytes": 3240609,
        "unitPrice": 0.99
    },
    {
        "name": "Muita Bobeira",
        "albumId": 266,
        "mediaTypeId": 5,
        "genreId": 7,
        "composer": "Luciana Souza",
        "milliseconds": 172710,
        "bytes": 2775071,
        "unitPrice": 0.99
    },
    {
        "name": "OAM's Blues",
        "albumId": 267,
        "mediaTypeId": 5,
        "genreId": 2,
        "composer": "Aaron Goldberg",
        "milliseconds": 266936,
        "bytes": 4292028,
        "unitPrice": 0.99
    },
    {
        "name": "One Step Beyond",
        "albumId": 264,
        "mediaTypeId": 5,
        "genreId": 15,
        "composer": "Karsh Kale",
        "milliseconds": 366085,
        "bytes": 6034098,
        "unitPrice": 0.99
    },
    {
        "name": "Symphony No. 3 in E-flat major, Op. 55, "Eroica" - Scherzo: Allegro Vivace",
        "albumId": 268,
        "mediaTypeId": 5,
        "genreId": 24,
        "composer": "Ludwig van Beethoven",
        "milliseconds": 356426,
        "bytes": 5817216,
        "unitPrice": 0.99
    },
    {
        "name": "Something Nice Back Home",
        "albumId": 261,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2612779,
        "bytes": 484711353,
        "unitPrice": 1.99
    },
    {
        "name": "Cabin Fever",
        "albumId": 261,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2612028,
        "bytes": 477733942,
        "unitPrice": 1.99
    },
    {
        "name": "There's No Place Like Home, Pt. 1",
        "albumId": 261,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2609526,
        "bytes": 522919189,
        "unitPrice": 1.99
    },
    {
        "name": "There's No Place Like Home, Pt. 2",
        "albumId": 261,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2497956,
        "bytes": 523748920,
        "unitPrice": 1.99
    },
    {
        "name": "There's No Place Like Home, Pt. 3",
        "albumId": 261,
        "mediaTypeId": 3,
        "genreId": 21,
        "composer": null,
        "milliseconds": 2582957,
        "bytes": 486161766,
        "unitPrice": 1.99
    },
    {
        "name": "Say Hello 2 Heaven",
        "albumId": 269,
        "mediaTypeId": 2,
        "genreId": 23,
        "composer": null,
        "milliseconds": 384497,
        "bytes": 6477217,
        "unitPrice": 0.99
    },
    {
        "name": "Reach Down",
        "albumId": 269,
        "mediaTypeId": 2,
        "genreId": 23,
        "composer": null,
        "milliseconds": 672773,
        "bytes": 11157785,
        "unitPrice": 0.99
    },
    {
        "name": "Hunger Strike",
        "albumId": 269,
        "mediaTypeId": 2,
        "genreId": 23,
        "composer": null,
        "milliseconds": 246292,
        "bytes": 4233212,
        "unitPrice": 0.99
    },
    {
        "name": "Pushin Forward Back",
        "albumId": 269,
        "mediaTypeId": 2,
        "genreId": 23,
        "composer": null,
        "milliseconds": 225278,
        "bytes": 3892066,
        "unitPrice": 0.99
    },
    {
        "name": "Call Me a Dog",
        "albumId": 269,
        "mediaTypeId": 2,
        "genreId": 23,
        "composer": null,
        "milliseconds": 304458,
        "bytes": 5177612,
        "unitPrice": 0.99
    },
    {
        "name": "Times of Trouble",
        "albumId": 269,
        "mediaTypeId": 2,
        "genreId": 23,
        "composer": null,
        "milliseconds": 342539,
        "bytes": 5795951,
        "unitPrice": 0.99
    },
    {
        "name": "Wooden Jesus",
        "albumId": 269,
        "mediaTypeId": 2,
        "genreId": 23,
        "composer": null,
        "milliseconds": 250565,
        "bytes": 4302603,
        "unitPrice": 0.99
    },
    {
        "name": "Your Savior",
        "albumId": 269,
        "mediaTypeId": 2,
        "genreId": 23,
        "composer": null,
        "milliseconds": 244226,
        "bytes": 4199626,
        "unitPrice": 0.99
    },
    {
        "name": "Four Walled World",
        "albumId": 269,
        "mediaTypeId": 2,
        "genreId": 23,
        "composer": null,
        "milliseconds": 414474,
        "bytes": 6964048,
        "unitPrice": 0.99
    },
    {
        "name": "All Night Thing",
        "albumId": 269,
        "mediaTypeId": 2,
        "genreId": 23,
        "composer": null,
        "milliseconds": 231803,
        "bytes": 3997982,
        "unitPrice": 0.99
    },
    {
        "name": "No Such Thing",
        "albumId": 270,
        "mediaTypeId": 2,
        "genreId": 23,
        "composer": "Chris Cornell",
        "milliseconds": 224837,
        "bytes": 3691272,
        "unitPrice": 0.99
    },
    {
        "name": "Poison Eye",
        "albumId": 270,
        "mediaTypeId": 2,
        "genreId": 23,
        "composer": "Chris Cornell",
        "milliseconds": 237120,
        "bytes": 3890037,
        "unitPrice": 0.99
    },
    {
        "name": "Arms Around Your Love",
        "albumId": 270,
        "mediaTypeId": 2,
        "genreId": 23,
        "composer": "Chris Cornell",
        "milliseconds": 214016,
        "bytes": 3516224,
        "unitPrice": 0.99
    },
    {
        "name": "Safe and Sound",
        "albumId": 270,
        "mediaTypeId": 2,
        "genreId": 23,
        "composer": "Chris Cornell",
        "milliseconds": 256764,
        "bytes": 4207769,
        "unitPrice": 0.99
    },
    {
        "name": "She'll Never Be Your Man",
        "albumId": 270,
        "mediaTypeId": 2,
        "genreId": 23,
        "composer": "Chris Cornell",
        "milliseconds": 204078,
        "bytes": 3355715,
        "unitPrice": 0.99
    },
    {
        "name": "Ghosts",
        "albumId": 270,
        "mediaTypeId": 2,
        "genreId": 23,
        "composer": "Chris Cornell",
        "milliseconds": 231547,
        "bytes": 3799745,
        "unitPrice": 0.99
    },
    {
        "name": "Killing Birds",
        "albumId": 270,
        "mediaTypeId": 2,
        "genreId": 23,
        "composer": "Chris Cornell",
        "milliseconds": 218498,
        "bytes": 3588776,
        "unitPrice": 0.99
    },
    {
        "name": "Billie Jean",
        "albumId": 270,
        "mediaTypeId": 2,
        "genreId": 23,
        "composer": "Michael Jackson",
        "milliseconds": 281401,
        "bytes": 4606408,
        "unitPrice": 0.99
    },
    {
        "name": "Scar On the Sky",
        "albumId": 270,
        "mediaTypeId": 2,
        "genreId": 23,
        "composer": "Chris Cornell",
        "milliseconds": 220193,
        "bytes": 3616618,
        "unitPrice": 0.99
    },
    {
        "name": "Your Soul Today",
        "albumId": 270,
        "mediaTypeId": 2,
        "genreId": 23,
        "composer": "Chris Cornell",
        "milliseconds": 205959,
        "bytes": 3385722,
        "unitPrice": 0.99
    },
    {
        "name": "Finally Forever",
        "albumId": 270,
        "mediaTypeId": 2,
        "genreId": 23,
        "composer": "Chris Cornell",
        "milliseconds": 217035,
        "bytes": 3565098,
        "unitPrice": 0.99
    },
    {
        "name": "Silence the Voices",
        "albumId": 270,
        "mediaTypeId": 2,
        "genreId": 23,
        "composer": "Chris Cornell",
        "milliseconds": 267376,
        "bytes": 4379597,
        "unitPrice": 0.99
    },
    {
        "name": "Disappearing Act",
        "albumId": 270,
        "mediaTypeId": 2,
        "genreId": 23,
        "composer": "Chris Cornell",
        "milliseconds": 273320,
        "bytes": 4476203,
        "unitPrice": 0.99
    },
    {
        "name": "You Know My name",
        "albumId": 270,
        "mediaTypeId": 2,
        "genreId": 23,
        "composer": "Chris Cornell",
        "milliseconds": 240255,
        "bytes": 3940651,
        "unitPrice": 0.99
    },
    {
        "name": "Revelations",
        "albumId": 271,
        "mediaTypeId": 2,
        "genreId": 23,
        "composer": null,
        "milliseconds": 252376,
        "bytes": 4111051,
        "unitPrice": 0.99
    },
    {
        "name": "One and the Same",
        "albumId": 271,
        "mediaTypeId": 2,
        "genreId": 23,
        "composer": null,
        "milliseconds": 217732,
        "bytes": 3559040,
        "unitPrice": 0.99
    },
    {
        "name": "Sound of a Gun",
        "albumId": 271,
        "mediaTypeId": 2,
        "genreId": 23,
        "composer": null,
        "milliseconds": 260154,
        "bytes": 4234990,
        "unitPrice": 0.99
    },
    {
        "name": "Until We Fall",
        "albumId": 271,
        "mediaTypeId": 2,
        "genreId": 23,
        "composer": null,
        "milliseconds": 230758,
        "bytes": 3766605,
        "unitPrice": 0.99
    },
    {
        "name": "Original Fire",
        "albumId": 271,
        "mediaTypeId": 2,
        "genreId": 23,
        "composer": null,
        "milliseconds": 218916,
        "bytes": 3577821,
        "unitPrice": 0.99
    },
    {
        "name": "Broken City",
        "albumId": 271,
        "mediaTypeId": 2,
        "genreId": 23,
        "composer": null,
        "milliseconds": 228366,
        "bytes": 3728955,
        "unitPrice": 0.99
    },
    {
        "name": "Somedays",
        "albumId": 271,
        "mediaTypeId": 2,
        "genreId": 23,
        "composer": null,
        "milliseconds": 213831,
        "bytes": 3497176,
        "unitPrice": 0.99
    },
    {
        "name": "Shape of Things to Come",
        "albumId": 271,
        "mediaTypeId": 2,
        "genreId": 23,
        "composer": null,
        "milliseconds": 274597,
        "bytes": 4465399,
        "unitPrice": 0.99
    },
    {
        "name": "Jewel of the Summertime",
        "albumId": 271,
        "mediaTypeId": 2,
        "genreId": 23,
        "composer": null,
        "milliseconds": 233242,
        "bytes": 3806103,
        "unitPrice": 0.99
    },
    {
        "name": "Wide Awake",
        "albumId": 271,
        "mediaTypeId": 2,
        "genreId": 23,
        "composer": null,
        "milliseconds": 266308,
        "bytes": 4333050,
        "unitPrice": 0.99
    },
    {
        "name": "Nothing Left to Say But Goodbye",
        "albumId": 271,
        "mediaTypeId": 2,
        "genreId": 23,
        "composer": null,
        "milliseconds": 213041,
        "bytes": 3484335,
        "unitPrice": 0.99
    },
    {
        "name": "Moth",
        "albumId": 271,
        "mediaTypeId": 2,
        "genreId": 23,
        "composer": null,
        "milliseconds": 298049,
        "bytes": 4838884,
        "unitPrice": 0.99
    },
    {
        "name": "Show Me How to Live (Live at the Quart Festival)",
        "albumId": 271,
        "mediaTypeId": 2,
        "genreId": 23,
        "composer": null,
        "milliseconds": 301974,
        "bytes": 4901540,
        "unitPrice": 0.99
    },
    {
        "name": "Band Members Discuss Tracks from "Revelations"",
        "albumId": 271,
        "mediaTypeId": 3,
        "genreId": 23,
        "composer": null,
        "milliseconds": 294294,
        "bytes": 61118891,
        "unitPrice": 0.99
    },
    {
        "name": "Intoitus: Adorate Deum",
        "albumId": 272,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Anonymous",
        "milliseconds": 245317,
        "bytes": 4123531,
        "unitPrice": 0.99
    },
    {
        "name": "Miserere mei, Deus",
        "albumId": 273,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Gregorio Allegri",
        "milliseconds": 501503,
        "bytes": 8285941,
        "unitPrice": 0.99
    },
    {
        "name": "Canon and Gigue in D Major: I. Canon",
        "albumId": 274,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Johann Pachelbel",
        "milliseconds": 271788,
        "bytes": 4438393,
        "unitPrice": 0.99
    },
    {
        "name": "Concerto No. 1 in E Major, RV 269 "Spring": I. Allegro",
        "albumId": 275,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Antonio Vivaldi",
        "milliseconds": 199086,
        "bytes": 3347810,
        "unitPrice": 0.99
    },
    {
        "name": "Concerto for 2 Violins in D Minor, BWV 1043: I. Vivace",
        "albumId": 276,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Johann Sebastian Bach",
        "milliseconds": 193722,
        "bytes": 3192890,
        "unitPrice": 0.99
    },
    {
        "name": "Aria Mit 30 Veränderungen, BWV 988 "Goldberg Variations": Aria",
        "albumId": 277,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Johann Sebastian Bach",
        "milliseconds": 120463,
        "bytes": 2081895,
        "unitPrice": 0.99
    },
    {
        "name": "Suite for Solo Cello No. 1 in G Major, BWV 1007: I. Prélude",
        "albumId": 278,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Johann Sebastian Bach",
        "milliseconds": 143288,
        "bytes": 2315495,
        "unitPrice": 0.99
    },
    {
        "name": "The Messiah: Behold, I Tell You a Mystery... The Trumpet Shall Sound",
        "albumId": 279,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "George Frideric Handel",
        "milliseconds": 582029,
        "bytes": 9553140,
        "unitPrice": 0.99
    },
    {
        "name": "Solomon HWV 67: The Arrival of the Queen of Sheba",
        "albumId": 280,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "George Frideric Handel",
        "milliseconds": 197135,
        "bytes": 3247914,
        "unitPrice": 0.99
    },
    {
        "name": ""Eine Kleine Nachtmusik" Serenade In G, K. 525: I. Allegro",
        "albumId": 281,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Wolfgang Amadeus Mozart",
        "milliseconds": 348971,
        "bytes": 5760129,
        "unitPrice": 0.99
    },
    {
        "name": "Concerto for Clarinet in A Major, K. 622: II. Adagio",
        "albumId": 282,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Wolfgang Amadeus Mozart",
        "milliseconds": 394482,
        "bytes": 6474980,
        "unitPrice": 0.99
    },
    {
        "name": "Symphony No. 104 in D Major "London": IV. Finale: Spiritoso",
        "albumId": 283,
        "mediaTypeId": 4,
        "genreId": 24,
        "composer": "Franz Joseph Haydn",
        "milliseconds": 306687,
        "bytes": 10085867,
        "unitPrice": 0.99
    },
    {
        "name": "Symphony No.5 in C Minor: I. Allegro con brio",
        "albumId": 284,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Ludwig van Beethoven",
        "milliseconds": 392462,
        "bytes": 6419730,
        "unitPrice": 0.99
    },
    {
        "name": "Ave Maria",
        "albumId": 285,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Franz Schubert",
        "milliseconds": 338243,
        "bytes": 5605648,
        "unitPrice": 0.99
    },
    {
        "name": "Nabucco: Chorus, "Va, Pensiero, Sull'ali Dorate"",
        "albumId": 286,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Giuseppe Verdi",
        "milliseconds": 274504,
        "bytes": 4498583,
        "unitPrice": 0.99
    },
    {
        "name": "Die Walküre: The Ride of the Valkyries",
        "albumId": 287,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Richard Wagner",
        "milliseconds": 189008,
        "bytes": 3114209,
        "unitPrice": 0.99
    },
    {
        "name": "Requiem, Op.48: 4. Pie Jesu",
        "albumId": 288,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Gabriel Fauré",
        "milliseconds": 258924,
        "bytes": 4314850,
        "unitPrice": 0.99
    },
    {
        "name": "The Nutcracker, Op. 71a, Act II: Scene 14: Pas de deux: Dance of the Prince & the Sugar-Plum Fairy",
        "albumId": 289,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Peter Ilyich Tchaikovsky",
        "milliseconds": 304226,
        "bytes": 5184289,
        "unitPrice": 0.99
    },
    {
        "name": "Nimrod (Adagio) from Variations On an Original Theme, Op. 36 "Enigma"",
        "albumId": 290,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Edward Elgar",
        "milliseconds": 250031,
        "bytes": 4124707,
        "unitPrice": 0.99
    },
    {
        "name": "Madama Butterfly: Un Bel Dì Vedremo",
        "albumId": 291,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Giacomo Puccini",
        "milliseconds": 277639,
        "bytes": 4588197,
        "unitPrice": 0.99
    },
    {
        "name": "Jupiter, the Bringer of Jollity",
        "albumId": 292,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Gustav Holst",
        "milliseconds": 522099,
        "bytes": 8547876,
        "unitPrice": 0.99
    },
    {
        "name": "Turandot, Act III, Nessun dorma!",
        "albumId": 293,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Giacomo Puccini",
        "milliseconds": 176911,
        "bytes": 2920890,
        "unitPrice": 0.99
    },
    {
        "name": "Adagio for Strings from the String Quartet, Op. 11",
        "albumId": 294,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Samuel Barber",
        "milliseconds": 596519,
        "bytes": 9585597,
        "unitPrice": 0.99
    },
    {
        "name": "Carmina Burana: O Fortuna",
        "albumId": 295,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Carl Orff",
        "milliseconds": 156710,
        "bytes": 2630293,
        "unitPrice": 0.99
    },
    {
        "name": "Fanfare for the Common Man",
        "albumId": 296,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Aaron Copland",
        "milliseconds": 198064,
        "bytes": 3211245,
        "unitPrice": 0.99
    },
    {
        "name": "Branch Closing",
        "albumId": 251,
        "mediaTypeId": 3,
        "genreId": 22,
        "composer": null,
        "milliseconds": 1814855,
        "bytes": 360331351,
        "unitPrice": 1.99
    },
    {
        "name": "The Return",
        "albumId": 251,
        "mediaTypeId": 3,
        "genreId": 22,
        "composer": null,
        "milliseconds": 1705080,
        "bytes": 343877320,
        "unitPrice": 1.99
    },
    {
        "name": "Toccata and Fugue in D Minor, BWV 565: I. Toccata",
        "albumId": 297,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Johann Sebastian Bach",
        "milliseconds": 153901,
        "bytes": 2649938,
        "unitPrice": 0.99
    },
    {
        "name": "Symphony No.1 in D Major, Op.25 "Classical", Allegro Con Brio",
        "albumId": 298,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Sergei Prokofiev",
        "milliseconds": 254001,
        "bytes": 4195542,
        "unitPrice": 0.99
    },
    {
        "name": "Scheherazade, Op. 35: I. The Sea and Sindbad's Ship",
        "albumId": 299,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Nikolai Rimsky-Korsakov",
        "milliseconds": 545203,
        "bytes": 8916313,
        "unitPrice": 0.99
    },
    {
        "name": "Concerto No.2 in F Major, BWV1047, I. Allegro",
        "albumId": 300,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Johann Sebastian Bach",
        "milliseconds": 307244,
        "bytes": 5064553,
        "unitPrice": 0.99
    },
    {
        "name": "Concerto for Piano No. 2 in F Minor, Op. 21: II. Larghetto",
        "albumId": 301,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Frédéric Chopin",
        "milliseconds": 560342,
        "bytes": 9160082,
        "unitPrice": 0.99
    },
    {
        "name": "Cavalleria Rusticana \\ Act \\ Intermezzo Sinfonico",
        "albumId": 302,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Pietro Mascagni",
        "milliseconds": 243436,
        "bytes": 4001276,
        "unitPrice": 0.99
    },
    {
        "name": "Karelia Suite, Op.11: 2. Ballade (Tempo Di Menuetto)",
        "albumId": 303,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Jean Sibelius",
        "milliseconds": 406000,
        "bytes": 5908455,
        "unitPrice": 0.99
    },
    {
        "name": "Piano Sonata No. 14 in C Sharp Minor, Op. 27, No. 2, "Moonlight": I. Adagio sostenuto",
        "albumId": 304,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Ludwig van Beethoven",
        "milliseconds": 391000,
        "bytes": 6318740,
        "unitPrice": 0.99
    },
    {
        "name": "Fantasia On Greensleeves",
        "albumId": 280,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Ralph Vaughan Williams",
        "milliseconds": 268066,
        "bytes": 4513190,
        "unitPrice": 0.99
    },
    {
        "name": "Das Lied Von Der Erde, Von Der Jugend",
        "albumId": 305,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Gustav Mahler",
        "milliseconds": 223583,
        "bytes": 3700206,
        "unitPrice": 0.99
    },
    {
        "name": "Concerto for Cello and Orchestra in E minor, Op. 85: I. Adagio - Moderato",
        "albumId": 306,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Edward Elgar",
        "milliseconds": 483133,
        "bytes": 7865479,
        "unitPrice": 0.99
    },
    {
        "name": "Two Fanfares for Orchestra: II. Short Ride in a Fast Machine",
        "albumId": 307,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "John Adams",
        "milliseconds": 254930,
        "bytes": 4310896,
        "unitPrice": 0.99
    },
    {
        "name": "Wellington's Victory or the Battle Symphony, Op.91: 2. Symphony of Triumph",
        "albumId": 308,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Ludwig van Beethoven",
        "milliseconds": 412000,
        "bytes": 6965201,
        "unitPrice": 0.99
    },
    {
        "name": "Missa Papae Marcelli: Kyrie",
        "albumId": 309,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Giovanni Pierluigi da Palestrina",
        "milliseconds": 240666,
        "bytes": 4244149,
        "unitPrice": 0.99
    },
    {
        "name": "Romeo et Juliette: No. 11 - Danse des Chevaliers",
        "albumId": 310,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": null,
        "milliseconds": 275015,
        "bytes": 4519239,
        "unitPrice": 0.99
    },
    {
        "name": "On the Beautiful Blue Danube",
        "albumId": 311,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Johann Strauss II",
        "milliseconds": 526696,
        "bytes": 8610225,
        "unitPrice": 0.99
    },
    {
        "name": "Symphonie Fantastique, Op. 14: V. Songe d'une nuit du sabbat",
        "albumId": 312,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Hector Berlioz",
        "milliseconds": 561967,
        "bytes": 9173344,
        "unitPrice": 0.99
    },
    {
        "name": "Carmen: Overture",
        "albumId": 313,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Georges Bizet",
        "milliseconds": 132932,
        "bytes": 2189002,
        "unitPrice": 0.99
    },
    {
        "name": "Lamentations of Jeremiah, First Set \\ Incipit Lamentatio",
        "albumId": 314,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Thomas Tallis",
        "milliseconds": 69194,
        "bytes": 1208080,
        "unitPrice": 0.99
    },
    {
        "name": "Music for the Royal Fireworks, HWV351 (1749): La Réjouissance",
        "albumId": 315,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "George Frideric Handel",
        "milliseconds": 120000,
        "bytes": 2193734,
        "unitPrice": 0.99
    },
    {
        "name": "Peer Gynt Suite No.1, Op.46: 1. Morning Mood",
        "albumId": 316,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Edvard Grieg",
        "milliseconds": 253422,
        "bytes": 4298769,
        "unitPrice": 0.99
    },
    {
        "name": "Die Zauberflöte, K.620: "Der Hölle Rache Kocht in Meinem Herze"",
        "albumId": 317,
        "mediaTypeId": 2,
        "genreId": 25,
        "composer": "Wolfgang Amadeus Mozart",
        "milliseconds": 174813,
        "bytes": 2861468,
        "unitPrice": 0.99
    },
    {
        "name": "SCRIABIN: Prelude in B Major, Op. 11, No. 11",
        "albumId": 318,
        "mediaTypeId": 4,
        "genreId": 24,
        "composer": null,
        "milliseconds": 101293,
        "bytes": 3819535,
        "unitPrice": 0.99
    },
    {
        "name": "Pavan, Lachrimae Antiquae",
        "albumId": 319,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "John Dowland",
        "milliseconds": 253281,
        "bytes": 4211495,
        "unitPrice": 0.99
    },
    {
        "name": "Symphony No. 41 in C Major, K. 551, "Jupiter": IV. Molto allegro",
        "albumId": 320,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Wolfgang Amadeus Mozart",
        "milliseconds": 362933,
        "bytes": 6173269,
        "unitPrice": 0.99
    },
    {
        "name": "Rehab",
        "albumId": 321,
        "mediaTypeId": 2,
        "genreId": 14,
        "composer": null,
        "milliseconds": 213240,
        "bytes": 3416878,
        "unitPrice": 0.99
    },
    {
        "name": "You Know I'm No Good",
        "albumId": 321,
        "mediaTypeId": 2,
        "genreId": 14,
        "composer": null,
        "milliseconds": 256946,
        "bytes": 4133694,
        "unitPrice": 0.99
    },
    {
        "name": "Me & Mr. Jones",
        "albumId": 321,
        "mediaTypeId": 2,
        "genreId": 14,
        "composer": null,
        "milliseconds": 151706,
        "bytes": 2449438,
        "unitPrice": 0.99
    },
    {
        "name": "Just Friends",
        "albumId": 321,
        "mediaTypeId": 2,
        "genreId": 14,
        "composer": null,
        "milliseconds": 191933,
        "bytes": 3098906,
        "unitPrice": 0.99
    },
    {
        "name": "Back to Black",
        "albumId": 321,
        "mediaTypeId": 2,
        "genreId": 14,
        "composer": "Mark Ronson",
        "milliseconds": 240320,
        "bytes": 3852953,
        "unitPrice": 0.99
    },
    {
        "name": "Love Is a Losing Game",
        "albumId": 321,
        "mediaTypeId": 2,
        "genreId": 14,
        "composer": null,
        "milliseconds": 154386,
        "bytes": 2509409,
        "unitPrice": 0.99
    },
    {
        "name": "Tears Dry On Their Own",
        "albumId": 321,
        "mediaTypeId": 2,
        "genreId": 14,
        "composer": "Nickolas Ashford & Valerie Simpson",
        "milliseconds": 185293,
        "bytes": 2996598,
        "unitPrice": 0.99
    },
    {
        "name": "Wake Up Alone",
        "albumId": 321,
        "mediaTypeId": 2,
        "genreId": 14,
        "composer": "Paul O'duffy",
        "milliseconds": 221413,
        "bytes": 3576773,
        "unitPrice": 0.99
    },
    {
        "name": "Some Unholy War",
        "albumId": 321,
        "mediaTypeId": 2,
        "genreId": 14,
        "composer": null,
        "milliseconds": 141520,
        "bytes": 2304465,
        "unitPrice": 0.99
    },
    {
        "name": "He Can Only Hold Her",
        "albumId": 321,
        "mediaTypeId": 2,
        "genreId": 14,
        "composer": "Richard Poindexter & Robert Poindexter",
        "milliseconds": 166680,
        "bytes": 2666531,
        "unitPrice": 0.99
    },
    {
        "name": "You Know I'm No Good (feat. Ghostface Killah)",
        "albumId": 321,
        "mediaTypeId": 2,
        "genreId": 14,
        "composer": null,
        "milliseconds": 202320,
        "bytes": 3260658,
        "unitPrice": 0.99
    },
    {
        "name": "Rehab (Hot Chip Remix)",
        "albumId": 321,
        "mediaTypeId": 2,
        "genreId": 14,
        "composer": null,
        "milliseconds": 418293,
        "bytes": 6670600,
        "unitPrice": 0.99
    },
    {
        "name": "Intro / Stronger Than Me",
        "albumId": 322,
        "mediaTypeId": 2,
        "genreId": 9,
        "composer": null,
        "milliseconds": 234200,
        "bytes": 3832165,
        "unitPrice": 0.99
    },
    {
        "name": "You Sent Me Flying / Cherry",
        "albumId": 322,
        "mediaTypeId": 2,
        "genreId": 9,
        "composer": null,
        "milliseconds": 409906,
        "bytes": 6657517,
        "unitPrice": 0.99
    },
    {
        "name": "F**k Me Pumps",
        "albumId": 322,
        "mediaTypeId": 2,
        "genreId": 9,
        "composer": "Salaam Remi",
        "milliseconds": 200253,
        "bytes": 3324343,
        "unitPrice": 0.99
    },
    {
        "name": "I Heard Love Is Blind",
        "albumId": 322,
        "mediaTypeId": 2,
        "genreId": 9,
        "composer": null,
        "milliseconds": 129666,
        "bytes": 2190831,
        "unitPrice": 0.99
    },
    {
        "name": "(There Is) No Greater Love (Teo Licks)",
        "albumId": 322,
        "mediaTypeId": 2,
        "genreId": 9,
        "composer": "Isham Jones & Marty Symes",
        "milliseconds": 167933,
        "bytes": 2773507,
        "unitPrice": 0.99
    },
    {
        "name": "In My Bed",
        "albumId": 322,
        "mediaTypeId": 2,
        "genreId": 9,
        "composer": "Salaam Remi",
        "milliseconds": 315960,
        "bytes": 5211774,
        "unitPrice": 0.99
    },
    {
        "name": "Take the Box",
        "albumId": 322,
        "mediaTypeId": 2,
        "genreId": 9,
        "composer": "Luke Smith",
        "milliseconds": 199160,
        "bytes": 3281526,
        "unitPrice": 0.99
    },
    {
        "name": "October Song",
        "albumId": 322,
        "mediaTypeId": 2,
        "genreId": 9,
        "composer": "Matt Rowe & Stefan Skarbek",
        "milliseconds": 204846,
        "bytes": 3358125,
        "unitPrice": 0.99
    },
    {
        "name": "What Is It About Men",
        "albumId": 322,
        "mediaTypeId": 2,
        "genreId": 9,
        "composer": "Delroy "Chris" Cooper, Donovan Jackson, Earl Chinna Smith, Felix Howard, Gordon Williams, Luke Smith, Paul Watson & Wilburn Squiddley Cole",
        "milliseconds": 209573,
        "bytes": 3426106,
        "unitPrice": 0.99
    },
    {
        "name": "Help Yourself",
        "albumId": 322,
        "mediaTypeId": 2,
        "genreId": 9,
        "composer": "Freddy James, Jimmy hogarth & Larry Stock",
        "milliseconds": 300884,
        "bytes": 5029266,
        "unitPrice": 0.99
    },
    {
        "name": "Amy Amy Amy (Outro)",
        "albumId": 322,
        "mediaTypeId": 2,
        "genreId": 9,
        "composer": "Astor Campbell, Delroy "Chris" Cooper, Donovan Jackson, Dorothy Fields, Earl Chinna Smith, Felix Howard, Gordon Williams, James Moody, Jimmy McHugh, Matt Rowe, Salaam Remi & Stefan Skarbek",
        "milliseconds": 663426,
        "bytes": 10564704,
        "unitPrice": 0.99
    },
    {
        "name": "Slowness",
        "albumId": 323,
        "mediaTypeId": 2,
        "genreId": 23,
        "composer": null,
        "milliseconds": 215386,
        "bytes": 3644793,
        "unitPrice": 0.99
    },
    {
        "name": "Prometheus Overture, Op. 43",
        "albumId": 324,
        "mediaTypeId": 4,
        "genreId": 24,
        "composer": "Ludwig van Beethoven",
        "milliseconds": 339567,
        "bytes": 10887931,
        "unitPrice": 0.99
    },
    {
        "name": "Sonata for Solo Violin: IV: Presto",
        "albumId": 325,
        "mediaTypeId": 4,
        "genreId": 24,
        "composer": "Béla Bartók",
        "milliseconds": 299350,
        "bytes": 9785346,
        "unitPrice": 0.99
    },
    {
        "name": "A Midsummer Night's Dream, Op.61 Incidental Music: No.7 Notturno",
        "albumId": 326,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": null,
        "milliseconds": 387826,
        "bytes": 6497867,
        "unitPrice": 0.99
    },
    {
        "name": "Suite No. 3 in D, BWV 1068: III. Gavotte I & II",
        "albumId": 327,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Johann Sebastian Bach",
        "milliseconds": 225933,
        "bytes": 3847164,
        "unitPrice": 0.99
    },
    {
        "name": "Concert pour 4 Parties de V**les, H. 545: I. Prelude",
        "albumId": 328,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Marc-Antoine Charpentier",
        "milliseconds": 110266,
        "bytes": 1973559,
        "unitPrice": 0.99
    },
    {
        "name": "Adios nonino",
        "albumId": 329,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Astor Piazzolla",
        "milliseconds": 289388,
        "bytes": 4781384,
        "unitPrice": 0.99
    },
    {
        "name": "Symphony No. 3 Op. 36 for Orchestra and Soprano "Symfonia Piesni Zalosnych" \\ Lento E Largo - Tranquillissimo",
        "albumId": 330,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Henryk Górecki",
        "milliseconds": 567494,
        "bytes": 9273123,
        "unitPrice": 0.99
    },
    {
        "name": "Act IV, Symphony",
        "albumId": 331,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Henry Purcell",
        "milliseconds": 364296,
        "bytes": 5987695,
        "unitPrice": 0.99
    },
    {
        "name": "3 Gymnopédies: No.1 - Lent Et Grave, No.3 - Lent Et Douloureux",
        "albumId": 332,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Erik Satie",
        "milliseconds": 385506,
        "bytes": 6458501,
        "unitPrice": 0.99
    },
    {
        "name": "Music for the Funeral of Queen Mary: VI. "Thou Knowest, Lord, the Secrets of Our Hearts"",
        "albumId": 333,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Henry Purcell",
        "milliseconds": 142081,
        "bytes": 2365930,
        "unitPrice": 0.99
    },
    {
        "name": "Symphony No. 2: III. Allegro vivace",
        "albumId": 334,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Kurt Weill",
        "milliseconds": 376510,
        "bytes": 6129146,
        "unitPrice": 0.99
    },
    {
        "name": "Partita in E Major, BWV 1006A: I. Prelude",
        "albumId": 335,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Johann Sebastian Bach",
        "milliseconds": 285673,
        "bytes": 4744929,
        "unitPrice": 0.99
    },
    {
        "name": "Le Sacre Du Printemps: I.iv. Spring Rounds",
        "albumId": 336,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Igor Stravinsky",
        "milliseconds": 234746,
        "bytes": 4072205,
        "unitPrice": 0.99
    },
    {
        "name": "Sing Joyfully",
        "albumId": 314,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "William Byrd",
        "milliseconds": 133768,
        "bytes": 2256484,
        "unitPrice": 0.99
    },
    {
        "name": "Metopes, Op. 29: Calypso",
        "albumId": 337,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Karol Szymanowski",
        "milliseconds": 333669,
        "bytes": 5548755,
        "unitPrice": 0.99
    },
    {
        "name": "Symphony No. 2, Op. 16 -  "The Four Temperaments": II. Allegro Comodo e Flemmatico",
        "albumId": 338,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Carl Nielsen",
        "milliseconds": 286998,
        "bytes": 4834785,
        "unitPrice": 0.99
    },
    {
        "name": "24 Caprices, Op. 1, No. 24, for Solo Violin, in A Minor",
        "albumId": 339,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Niccolò Paganini",
        "milliseconds": 265541,
        "bytes": 4371533,
        "unitPrice": 0.99
    },
    {
        "name": "Étude 1, In C Major - Preludio (Presto) - Liszt",
        "albumId": 340,
        "mediaTypeId": 4,
        "genreId": 24,
        "composer": null,
        "milliseconds": 51780,
        "bytes": 2229617,
        "unitPrice": 0.99
    },
    {
        "name": "Erlkonig, D.328",
        "albumId": 341,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": null,
        "milliseconds": 261849,
        "bytes": 4307907,
        "unitPrice": 0.99
    },
    {
        "name": "Concerto for Violin, Strings and Continuo in G Major, Op. 3, No. 9: I. Allegro",
        "albumId": 342,
        "mediaTypeId": 4,
        "genreId": 24,
        "composer": "Pietro Antonio Locatelli",
        "milliseconds": 493573,
        "bytes": 16454937,
        "unitPrice": 0.99
    },
    {
        "name": "Pini Di Roma (Pinien Von Rom) \\ I Pini Della Via Appia",
        "albumId": 343,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": null,
        "milliseconds": 286741,
        "bytes": 4718950,
        "unitPrice": 0.99
    },
    {
        "name": "String Quartet No. 12 in C Minor, D. 703 "Quartettsatz": II. Andante - Allegro assai",
        "albumId": 344,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Franz Schubert",
        "milliseconds": 139200,
        "bytes": 2283131,
        "unitPrice": 0.99
    },
    {
        "name": "L'orfeo, Act 3, Sinfonia (Orchestra)",
        "albumId": 345,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Claudio Monteverdi",
        "milliseconds": 66639,
        "bytes": 1189062,
        "unitPrice": 0.99
    },
    {
        "name": "Quintet for Horn, Violin, 2 Violas, and Cello in E Flat Major, K. 407/386c: III. Allegro",
        "albumId": 346,
        "mediaTypeId": 2,
        "genreId": 24,
        "composer": "Wolfgang Amadeus Mozart",
        "milliseconds": 221331,
        "bytes": 3665114,
        "unitPrice": 0.99
    },
    {
        "name": "Koyaanisqatsi",
        "albumId": 347,
        "mediaTypeId": 2,
        "genreId": 10,
        "composer": "Philip Glass",
        "milliseconds": 206005,
        "bytes": 3305164,
        "unitPrice": 0.99
    }
]
''';
final tracks = (jsonDecode(_jsonTracks) as List).map(
  (e) => Track.fromJsonDB(e),
);