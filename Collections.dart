//to store the multiple variables use the
void main()
{
  //1.List
 // listOperations();
 // setOperations();
 mapOperations();
}

void mapOperations()
{
  //to store the specific item
  //it contain key value pair

  //1.Create a Map
  Map<String,dynamic> person={
    'Name':'Sulaks',
    'Age' : 39,
    'Phone' : '8597844554',
    'Weight' :50.4};

  //Accessing the values
  print(person['Name']);
  print(person);//{Name: Sulaks, Age: 39, Phone: 8597844554, Weight: 50.4}

  //Adding a Value
  person['Height'] =179;
  print(person);//{Name: Sulaks, Age: 39, Phone: 8597844554, Weight: 50.4, Height: 179}

  person['Age']=20;
  print(person['Age']);//20
  
  // Find a key value
  print(person.containsKey('Age'));//true
  print(person.containsValue(20));//true


}

void setOperations()
{
  //doesn't allow duplicate elements
  //it doesn't contain indexing
   //1.Create a set
  Set<int> groupOne = {1,5,6,7,5,1};
  print(groupOne);

  Set<int> groupTwo = {5,8,0,7,4};
  print(groupTwo);

  //print(groupOne.intersection(groupTwo));//{5, 7}

  Set<int> commonNumbers = groupOne.intersection(groupTwo);
  print(commonNumbers);//{5, 7}

  Set<int> allNumbers = groupOne.union(groupTwo);
  print(allNumbers);//{1, 5, 6, 7, 8, 0, 4}

  groupOne.add(16);
  print(groupOne);//{1, 5, 6, 7, 16}

  groupOne.remove(16);
  print(groupOne);//{1, 5, 6, 7}
}

void listOperations() {

  //Phone contacts created by using the list type
  //duplicates are allowed

  //1.Creating a list
  List<String> fruits = ['Apple', 'Banana'];
  print(fruits);//[Apple, Banana]

  List<String> contacts = [];
  contacts.add('Lakchaya');
  contacts.add('Velu');
  contacts.add('Sulaksana');

  print(contacts);//[Lakchaya, Velu, Sulaksana]

  //2.Index- Accessing Items
  String myName = contacts[2];
  print(myName);//Sulaksana

  //3.Updating a list item -Replacing
  contacts[2] = 'Ramya';
  print(contacts[2]);//Ramya

  //Remove a item
  contacts.remove('Lakchaya');
  print(contacts);//[Velu, Ramya]

  contacts.removeAt(1);
  print(contacts);//[Velu]

  //Find items
  List<String> fruits1 = ['Apple','Mango','Banana','Papaya','Pomegranate'];
  if(fruits1.contains('Apple') == true)
  {
    print('Orange is available');
  }
  else
    {
      print('Orange is not available');
    }
  print(fruits1);//[Apple, Mango, Banana, Papaya, Pomegranate]
}