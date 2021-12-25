class Person {
  String name;
  String email;
  int id;
  Person({
    required this.name,
    required this.email,
    required this.id,
  });
}

List<Person> personList = persons
    .map((e) => Person(name: e['name'], email: e["email"], id: e['id']))
    .toList();

List<Map<String, dynamic>> persons = [
  {
    "id": 1,
    "name": "Patricia",
    "email": "pfranciskiewicz0@gmpg.org",
    "gender": "Male"
  },
  {
    "id": 2,
    "name": "Meg",
    "email": "mberrie1@prlog.org",
    "gender": "Polygender"
  },
  {
    "id": 3,
    "name": "Rebeka",
    "email": "rhammel2@livejournal.com",
    "gender": "Polygender"
  },
  {
    "id": 4,
    "name": "Tuesday",
    "email": "tbehrend3@jigsy.com",
    "gender": "Bigender"
  },
  {"id": 5, "name": "Stacy", "email": "shouchin4@cam.ac.uk", "gender": "Male"},
  {
    "id": 6,
    "name": "Audry",
    "email": "ashobbrook5@pen.io",
    "gender": "Bigender"
  },
  {
    "id": 7,
    "name": "Faber",
    "email": "fvinas6@friendfeed.com",
    "gender": "Female"
  },
  {
    "id": 8,
    "name": "Benni",
    "email": "bbukowski7@dailymail.co.uk",
    "gender": "Agender"
  },
  {
    "id": 9,
    "name": "Lennard",
    "email": "lhugett8@samsung.com",
    "gender": "Genderfluid"
  },
  {
    "id": 10,
    "name": "Xenos",
    "email": "xdecruz9@technorati.com",
    "gender": "Non-binary"
  },
  {
    "id": 11,
    "name": "Myrlene",
    "email": "mbeneixa@merriam-webster.com",
    "gender": "Polygender"
  },
  {
    "id": 12,
    "name": "Rolland",
    "email": "rmeasorb@a8.net",
    "gender": "Polygender"
  },
  {
    "id": 13,
    "name": "Kanya",
    "email": "kwillingamc@miibeian.gov.cn",
    "gender": "Male"
  },
  {
    "id": 14,
    "name": "Teodoro",
    "email": "tcolumd@home.pl",
    "gender": "Non-binary"
  },
  {
    "id": 15,
    "name": "Ariadne",
    "email": "atittershille@accuweather.com",
    "gender": "Female"
  },
  {
    "id": 16,
    "name": "Brunhilde",
    "email": "boxleyf@yahoo.co.jp",
    "gender": "Male"
  },
  {
    "id": 17,
    "name": "Price",
    "email": "psummerlyg@arizona.edu",
    "gender": "Bigender"
  },
  {
    "id": 18,
    "name": "Henrik",
    "email": "hjeffersonh@meetup.com",
    "gender": "Bigender"
  },
  {
    "id": 19,
    "name": "Marlyn",
    "email": "mgrinsdalei@simplemachines.org",
    "gender": "Bigender"
  },
  {
    "id": 20,
    "name": "Novelia",
    "email": "nmcinnesj@vkontakte.ru",
    "gender": "Genderqueer"
  },
  {"id": 21, "name": "Billie", "email": "bcreamenk@phoca.cz", "gender": "Male"},
  {
    "id": 22,
    "name": "Holt",
    "email": "hjowettl@etsy.com",
    "gender": "Bigender"
  },
  {
    "id": 23,
    "name": "Astrid",
    "email": "ascotchmurm@netvibes.com",
    "gender": "Female"
  },
  {
    "id": 24,
    "name": "Iolande",
    "email": "iillidgen@baidu.com",
    "gender": "Genderfluid"
  },
  {
    "id": 25,
    "name": "Jourdain",
    "email": "jennewo@example.com",
    "gender": "Genderqueer"
  },
  {
    "id": 26,
    "name": "Isac",
    "email": "iadamecp@columbia.edu",
    "gender": "Agender"
  },
  {
    "id": 27,
    "name": "Emera",
    "email": "eclineq@state.tx.us",
    "gender": "Polygender"
  },
  {
    "id": 28,
    "name": "Norby",
    "email": "ncourtoisr@wikimedia.org",
    "gender": "Genderfluid"
  },
  {
    "id": 29,
    "name": "Efren",
    "email": "efoystons@wisc.edu",
    "gender": "Genderqueer"
  },
  {
    "id": 30,
    "name": "Weylin",
    "email": "wvonoertzent@economist.com",
    "gender": "Female"
  },
  {"id": 31, "name": "Row", "email": "rchettoeu@pen.io", "gender": "Bigender"},
  {
    "id": 32,
    "name": "Broderick",
    "email": "bquinnettev@abc.net.au",
    "gender": "Bigender"
  },
  {
    "id": 33,
    "name": "Rosemaria",
    "email": "rmeierw@ftc.gov",
    "gender": "Genderfluid"
  },
  {
    "id": 34,
    "name": "Riordan",
    "email": "rcutcheex@toplist.cz",
    "gender": "Female"
  },
  {
    "id": 35,
    "name": "Darwin",
    "email": "dclemmetty@cbsnews.com",
    "gender": "Bigender"
  },
  {
    "id": 36,
    "name": "Leese",
    "email": "llangabeerz@yolasite.com",
    "gender": "Male"
  },
  {
    "id": 37,
    "name": "Clem",
    "email": "civashin10@cdbaby.com",
    "gender": "Male"
  },
  {
    "id": 38,
    "name": "Eleen",
    "email": "emaffiotti11@theglobeandmail.com",
    "gender": "Genderqueer"
  },
  {
    "id": 39,
    "name": "Wally",
    "email": "wlovick12@wired.com",
    "gender": "Female"
  },
  {
    "id": 40,
    "name": "Mady",
    "email": "mhundall13@cisco.com",
    "gender": "Genderqueer"
  },
  {
    "id": 41,
    "name": "Mercy",
    "email": "mbrittan14@newsvine.com",
    "gender": "Agender"
  },
  {
    "id": 42,
    "name": "Waneta",
    "email": "wneissen15@meetup.com",
    "gender": "Bigender"
  },
  {
    "id": 43,
    "name": "Rayner",
    "email": "rmurty16@pcworld.com",
    "gender": "Male"
  },
  {
    "id": 44,
    "name": "Berthe",
    "email": "bmaytom17@blogtalkradio.com",
    "gender": "Genderfluid"
  },
  {
    "id": 45,
    "name": "Brina",
    "email": "bpitkins18@nsw.gov.au",
    "gender": "Genderfluid"
  },
  {
    "id": 46,
    "name": "Bryana",
    "email": "blorrain19@bizjournals.com",
    "gender": "Non-binary"
  },
  {
    "id": 47,
    "name": "Luce",
    "email": "lcolvine1a@miibeian.gov.cn",
    "gender": "Genderfluid"
  },
  {"id": 48, "name": "Tye", "email": "tdorman1b@umich.edu", "gender": "Female"},
  {
    "id": 49,
    "name": "Caesar",
    "email": "cdelorenzo1c@slashdot.org",
    "gender": "Non-binary"
  },
  {
    "id": 50,
    "name": "Fax",
    "email": "fdwelley1d@squarespace.com",
    "gender": "Male"
  }
];
