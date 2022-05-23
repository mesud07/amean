import 'package:ameanacademy/core/extensions/context_extension.dart';
import 'package:ameanacademy/core/widgets/customCardWidget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class HomePageView extends StatelessWidget {
  HomePageView({Key? key}) : super(key: key);
  List<String> basliklar = ['Ders', "Konu", "Toplam", "Dakika"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomCardWidget(
            iconpath: "study_calender.png",
            title: "Çalışma Takvimi",
          ),
          SizedBox(
            height: context.height / 10,
          ),
          TodayStudyCalender(basliklar: basliklar,title: "Bugünkü Çalışma Takvimi",),

          //TodayDateCard()

SizedBox(height: context.height/10,),
          Padding(
      padding: EdgeInsets.symmetric(
        horizontal: context.width / 15,
      ),
      child: Container(
        width: context.width,
        padding: EdgeInsets.only(bottom: context.height / 50),
        decoration: BoxDecoration(
          borderRadius: context.lowBorderRadius,
          color: Colors.white,
          boxShadow: [boxShadow()],
        ),
        child: DateTimeCard(),
      ),
    )

        ],
      ),
    ));
  }
}

class DateTimeCard extends StatelessWidget {
  const DateTimeCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 5, right: 5),
      child: Column(children: [
        Text("Tarih(AA/DD/YYYY)",style: context.textTheme.bodyLarge,),
        Container(
          width: context.width,
          alignment: Alignment.center,
          padding: EdgeInsets.all(5),
          margin: EdgeInsets.only(top: 5),
          decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.grey)),
          child: Text("23/05/2022"))
      ]),
      
    );
  }
}

class TodayStudyCalender extends StatelessWidget {
  const TodayStudyCalender({
    Key? key,
    required this.basliklar,
    required this.title
  }) : super(key: key);

  final List<String> basliklar;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: context.width / 15,
      ),
      child: Container(
        width: context.width,
        padding: EdgeInsets.only(bottom: context.height / 50),
        decoration: BoxDecoration(
          borderRadius: context.lowBorderRadius,
          color: Colors.white,
          boxShadow: [boxShadow()],
        ),
        child: Container(
          margin: EdgeInsets.only(top: 10, left: 5, right: 5),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: AutoSizeText(
                  title,
                  style:
                      context.textTheme.bodyLarge?.copyWith(fontSize: 20),
                  minFontSize: 17,
                ),
              ),
              Table(
                textDirection: TextDirection.ltr,
                border: TableBorder(
                  horizontalInside: BorderSide(
                      width: 1,
                      color: Colors.blue,
                      style: BorderStyle.solid),
                ),
                defaultVerticalAlignment:
                    TableCellVerticalAlignment.bottom,
                children: [
                  TableRow(
                    children: [
                      for (var i = 0; i < 4; i++)
                        Container(
                          child: Center(
                              child: Text(
                            basliklar[i],
                          )),
                        ),
                    ],
                  ),

                  //toplam alandan cıkarılmış alanları yerleştir.

                  //Dış duvardan çıkacak olan elemanlar
                  for (var i = 0; i < 1; i++)
                    TableRow(children: [
                      for (var j = 0; j < 4; j++)
                        Container(
                          padding:
                              EdgeInsets.only(top: context.height / 100),
                          child: Center(
                              child: Text(j == 0
                                  ? "Matematik"
                                  : j == 1
                                      ? "Cebirsel İfadeler"
                                          .substring(0, 5)
                                      : j == 2
                                          ? "20 soru"
                                          : "50")),
                        ),
                    ]),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
