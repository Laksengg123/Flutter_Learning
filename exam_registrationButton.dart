
void main()
{
  register_sslc("laks", 21, "namakkal");
  register_sslc("velu", 21);
  register_sslc("ramu", 19);

  register_hsc('laks', age: 20,);//required need this
}
//to make this value as an default value use this

void register_sslc(String name,int age,[String city='chennai'])
{
  print("Student $name of age $age\n"
  'from city $city has been registered');
}
//
// void register_hsc(String name,{int age =18,String city = 'Cuddalore'}){
//   print('Student $name of age of $age \n'
//   'from city $city has been registered');
// }

// required
void register_hsc(String name,{required int age ,String city = 'Cuddalore'}){
  print('Student $name of age of $age \n'
      'from city $city has been registered');
}