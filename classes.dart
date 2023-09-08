class Player {
  final String name = 'Heesu';
  int xp = 1500;

  void sayHello() {
    print("Hi my name is $name");
  }
}

class Person {
  final String name; // _name 은 private 변수
  final int age;
  Person(this.name, this.age);
}

class NameList {
  final Person _person = Person('Heesu', 23);
  Person get person => _person; // getter를 통해 private변수에 접근 가능
}

class Hero {
  String heroname = 'iron man';
}

class Actor {
  String actorname = 'chris';
}

// extends는 부모 class 상속
class Marvel extends Hero {}

void main() {
  var player = Player();
  print(player.name);
  player.sayHello();

  Person person1 = Person('Heesu', 23);
  print('Hi my name is ${person1.name} and my age is ${person1.age}');

  final NameList person2 = NameList();
  print(
      'Hi my name is ${person2.person.name} and my age is ${person2.person.age}');

  Marvel marvel = Marvel();
  print('My Hero is ${marvel.heroname}');
}
