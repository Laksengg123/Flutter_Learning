void main() {
   access();
  print("Automation");
  //1.While
  //initialize the count
  int count = 1;
  while (25 > count) {
    count++;
  }
 // print(count);


  //2.For loop
  int n = 5;
  for(int i=0;i<=n;i++)
  {
      print(i);
  }

}

void access()
{
  List<String> fruits = [
    'Apple','Banana','kiwi'
  ];

  print('Buy ${fruits[0]}');//Buy Apple

  for(int count = 0;count<fruits.length;count++)
    {
      print('Buy ${fruits[count]}');//Buy Apple
      // Buy Apple
      // Buy Banana
      // Buy kiwi
    }
}