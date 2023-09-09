class Player {
  final String name; // _name 은 private 변수
  int xp, age;
  String team;
  Player(
      {required this.name,
      required this.xp,
      required this.team,
      required this.age});

  Player.creatBluePlayer({required String name, required int age})
      : this.age = age,
        this.name = name,
        this.team = 'blue',
        this.xp = 0;

  Player.creatRedPlayer({required String name, required int age})
      : this.age = age,
        this.name = name,
        this.team = 'red',
        this.xp = 0;
}

class NameList {
  final Player _person = Player(name: 'Heesu', xp: 1500, team: 'Red', age: 23);
  Player get person => _person; // getter를 통해 private변수에 접근 가능
}

class Hero {
  String heroname = 'iron man';
}

// extends는 부모 class 상속
class Marvel extends Hero {}

void main() {
  Player person1 = Player(name: 'Heesu', xp: 1500, team: 'Red', age: 23);

  Player bluePerson = Player.creatBluePlayer(name: 'Heesu', age: 23);

  Player redPerson = Player.creatRedPlayer(name: 'Heesu', age: 23);
  print(
      'Hi my name is ${person1.name} and my age is ${person1.age}, xp: ${person1.xp}, team: ${person1.team}\n');
  print(
      'blue person \nname: ${bluePerson.name} \nage: ${bluePerson.age} \nteam: ${bluePerson.team} \nxp: ${bluePerson.xp}\n');
  print(
      'red person \nname: ${redPerson.name} \nage: ${redPerson.age} \nteam: ${redPerson.team} \nxp: ${redPerson.xp}\n');

  final NameList person2 = NameList();
  print(
      'Hi my name is ${person2.person.name} and my age is ${person2.person.age}');

  Marvel marvel = Marvel();
  print('My Hero is ${marvel.heroname}');
}
