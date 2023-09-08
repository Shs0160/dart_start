void main() {
  String name = "Song";
  bool alive = true;
  int age = 23;
  double height = 167.4;
  print(name);

  //숫자의 모든 유형 nun은 int와 double의 부모클래스
  num x = 12;

  print("my name is $name, my age is $age, and my height is $height");
  print(x);
  print(alive);

  //리스트에서 list<int> == var
  var giveMefive = true;
  var numbers = [
    1,
    2,
    3,
    4,
    //collection if
    if (giveMefive) 5,
    //if (giveMefive == true) { numbers.add(5);}, 와 같음
  ];
  print(numbers);

  var name_1 = "Song";
  var age_1 = 21;
  //string interpolation $뒤에 변수 입력
  var greeting =
      "Hello, my name is $name_1 and I'm ${age_1 + 2}, nice to meet you!";
  print(greeting);

  var oldFriendes = ['nico', 'lynn'];
  var newFrinedes = [
    'lewis',
    'james',
    'darren',
    //collection for
    for (var friend in oldFriendes) '😍 $friend',
  ];
  print(newFrinedes);

  //map = python에서 dictionary
  var player = {
    'name': 'Song',
    'age': 23,
    'alive': true,
  };

  print(player);
  //datatype을 지정 할  수 있음
  Map<List<int>, bool> people = {
    [1, 2, 3]: true,
    [4, 5, 6]: false,
  };
  print(people);

  //set 요소가 항상 하나씩만 있어야 할때 사용
  Set<int> number = {1, 2, 3, 4};
  number.add(1);
  number.add(1);
  number.add(1);
  print(number);
}
