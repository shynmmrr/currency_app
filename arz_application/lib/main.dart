import 'package:arz_application/Model/Currency.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:http/http.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      checkerboardOffscreenLayers: false,
      checkerboardRasterCacheImages: false,
      showSemanticsDebugger: false,
      showPerformanceOverlay: false,
      theme: ThemeData(
          fontFamily: 'dana',
          textTheme: const TextTheme(
              displayMedium: TextStyle(
                  fontFamily: 'dana',
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
              bodyMedium: TextStyle(
                  fontFamily: 'dana',
                  fontSize: 13,
                  fontWeight: FontWeight.w300),
              displaySmall: TextStyle(
                  fontFamily: 'dana',
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w300))),
      title: 'Localizations Sample App',
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('fa'), // farsi
      ],
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Home({
    super.key,
  });

  List<Currency> currency = [];

  @override
  Widget build(BuildContext context) {
    var getTime = _getTime;

    currency.add(Currency(
        id: "1",
        title: "دلار آمریکا",
        price: "۵۵,۵۰۰",
        changes: "-۵۰",
        status: "n"));
    currency.add(Currency(
        id: "2",
        title: "دلار استرالیا",
        price: "۳۳,۳۰۰",
        changes: "+۵۰",
        status: "p"));
    currency.add(Currency(
        id: "3", title: "یورو", price: "۵۵,۳۰۰", changes: "+۵۰", status: "p"));
    currency.add(Currency(
        id: "5",
        title: "لیر ترکیه",
        price: "۱,۷۵۰",
        changes: "+۵",
        status: "p"));
    currency.add(Currency(
        id: "6",
        title: "فرانک سوییس",
        price: "۵۷,۳۵۰",
        changes: "+۱۰۰",
        status: "p"));
    currency.add(Currency(
        id: "6",
        title: " یوآن چین",
        price: "۷,۰۷۰",
        changes: "+۱۰",
        status: "p"));

    return Scaffold(
      backgroundColor: const Color.fromRGBO(243, 243, 243, 100),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromRGBO(255, 255, 255, 100),
        actions: [
          const SizedBox(
            width: 15,
          ),
          Image.asset("assets/images/icon.png"),
          const SizedBox(
            width: 15,
          ),
          Align(
              alignment: Alignment.centerRight,
              child: Text(
                "قیمت بروز سکه و ارز",
                style: Theme.of(context).textTheme.displayMedium,
              )),
          Expanded(
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset('assets/images/menu.png'))),
          const SizedBox(
            width: 20,
          ),
        ],

        // appBar background color
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/images/soal.png"),
                const SizedBox(
                  width: 8,
                ),
                Text("نرخ ارز آزاد چیست؟",
                    style: Theme.of(context).textTheme.displayMedium),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              " نرخ ارزها در معاملات نقدی و رایج روزانه است معاملات نقدی معاملاتی هستند که خریدار و فروشنده به محض انجام معامله، ارز و ریال را با هم تبادل می نمایند.",
              style: Theme.of(context).textTheme.bodyMedium,
              textDirection: TextDirection.rtl,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 24, 0, 0),
              child: Container(
                height: 25,
                width: double.infinity,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(1000)),
                    color: Colors.blueGrey),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "نام آزاد ارز",
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text("قیمت",
                        style: Theme.of(context).textTheme.displaySmall),
                    const SizedBox(
                      width: 10,
                    ),
                    Text("تغییر",
                        style: Theme.of(context).textTheme.displaySmall),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            SizedBox(
              width: double.infinity,
              height: 400,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: currency.length,
                  itemBuilder: (BuildContext context, int postion) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  blurRadius: 1.0, color: Colors.grey.shade700)
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(1000)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              currency[0].title!,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            Text(
                              currency[0].price!,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            Text(
                              currency[0].changes!,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),

            // update bottom box
            Padding(
              //containere 2 khat payin tar ro mitunestim sized box ham bedim vali wrapesh kardim ba ye pading
              padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
              child: Container(
                // kole container beruz resani ke shamel do BAKHSHE(2CONTAINER T HAM)
                width: double.infinity, //arze binahayat baraye tamami safhe ha
                height: 50,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 232, 232, 232),
                    borderRadius: BorderRadius.circular(
                        1000)), //gerd kardane containere asli
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 50,
                      child: TextButton.icon(
                          //tu child haye containere 227 ye widgete text be alave icon ke mishe
                          //TextButton.icon
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                const Color.fromARGB(255, 202, 193, 255),
                              ),
                              shape: MaterialStateProperty
                                  .all< //beja in ke berim be khode text bottom radius bedim bayad be ye parametri be name SHAPE in ro bedim
                                          RoundedRectangleBorder>(
                                      const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(0),
                                topRight: Radius.circular(50),
                                bottomLeft: Radius.circular(0),
                                bottomRight: Radius.circular(50),
                              )))),
                          onPressed: () => _showSnackBar(
                              context, "بروزرسانی با موفقیت انجام شد"),
                          icon: const Icon(
                            CupertinoIcons.refresh_bold,
                            color: Colors.black,
                          ),
                          label: Padding(
                            padding: const EdgeInsets.fromLTRB(3, 0, 0, 0),
                            child: Text(
                              'به روز رسانی',
                              style: Theme.of(context).textTheme.displayMedium,
                            ),
                          )),
                    ),
                    Text("آخرین بروزرسانی${getTime()}"),
                    const SizedBox(
                      width: 1,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

String _getTime() {
  return "20:45";
}

void _showSnackBar(BuildContext context, String msg) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(msg),
    backgroundColor: Colors.green,
  ));
}
