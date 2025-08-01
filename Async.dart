void main()
{
  function1();
  function2();
  function3();
}
//synchronize program - without completing the one process other process doesn't work
void function1()
{
  print('Function1');
}

void function2() async
{
  await Future.delayed(Duration(seconds: 20));
  print('Function2');
}

void function3()
{
  print('Function3');
}
