import 'Question.dart';

class listQuestion{
  int _n = 0;
  List < Question > _T = [
    Question("1 + 1 =...", 1, 2, 3, 4, 2),
    Question("2 + 6 =...", 1, 12, 8, 24, 8),
    Question("2 * 3 =...", 1, 6, 13, 4, 6),
    Question("12 - 8 =...", 1, 6, 7, 4, 4),
    Question("12 / 6 =...", 3, 2, 5, 7, 2)
  ];
  void next(){
    if(_n < _T.length - 1){
      _n++;
    }
  }
  String getQuestion(){
    return _T[_n].s;
  }
  String getd1(){
    return _T[_n].d1.toString();
  }
  String getd2(){
    return _T[_n].d2.toString();
  }
  String getd3(){
    return _T[_n].d3.toString();
  }
  String getd4(){
    return _T[_n].d4.toString();
  }
}