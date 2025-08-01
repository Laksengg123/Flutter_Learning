//primary file
import 'package:learn/support.dart';

//Operations in dart

void main()
{
  /*
    print('I am Running');
    test();

   */

  //1.String
/*
  String userCity = 'Namakkkal';

  String sentence = "This is lakchaya";

  String userAddress = 'Reddipatti,Namakkal';

  String myAddress = '''
  koolipati
  namakkal ''';

  print(myAddress);

//String Operations
String firstName,lastName,fullName;

firstName = 'Lakchaya';
lastName = 'Velmurugan';
fullName = firstName + ' '+ lastName;

//Interpolated String
  String result;
result = 'My name is = $fullName';

print(result);

 */

//String Operations
/*
  String name1 = 'Apple';
  String name2 = 'apple';
  //String is Case Sensitive
  print(name2.toLowerCase() == name1.toLowerCase());
*/

//2.Integer

/*
int userAge = 27;

//Integer Operations
  int tamil,english,maths,science,social,total;
  double per;
  tamil = 90;
  english = 80;
  maths = 70;
  science =60;
  social = 50;
  total = tamil+english+maths;
  per = total /500 * 100;
  print(total);


 */
//3.Double


double userWeight = 89.5;

//Double Operations
  double myValue = (9 + (8-4)*2 /10);
  print(myValue);
//4.Boolean

bool married =true;

//Comparison Operator

    int num1=10,num2 = 14;
    print('number 1 is equal to number2:'
        '${ num1 == num2}'); //false

    print('number 1 is not equal to number1:''${num1 != num2}');

    print('greater than:' '${num1 < num2}');
    print('less than:' '${num1 > num2}');



}