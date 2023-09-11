String helloworld(String a, String b, int c) =>
    "Hello, world!, My Name is $a, I'm from $b. And My age is $c";

class Human {
  final String name;
  int age;
  Human(this.name, this.age);
  void sayHello() {
    print("Hi I'm $name, and my age is $age");
  }
}

enum Team { red, blue }

class Player extends Human {
  final Team team;
  int xp;

  Player(
      {required this.team,
      required this.xp,
      required String name,
      required int age})
      : super(name, age);

  @override
  void sayHello() {
    super.sayHello();
    print("My team is $team, and my xp is $xp");
  }
}

void main() {
  print(helloworld('Song', 'Korea', 23));

  var player = Player(name: 'heeus', age: 23, xp: 10000, team: Team.red);
  player.sayHello();
}
