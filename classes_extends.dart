class Human {
  final String name;
  Human(this.name);
  void sayHello() {
    print("Hi my name is $name");
  }
}

enum Type { dog, cat }

class Animals {
  final Type type;
  int age;
  Animals(this.type, this.age);
  void typePrint() {
    print('type: $type, age: $age');
  }
}

enum Team { red, blue }

class Player extends Human {
  final Team team;
  Player({required this.team, required String name}) : super(name);

  //!!!! @override = 부모 클래스의 super메소드를 호출 하고 변형할 수 있음.
  @override
  void sayHello() {
    super.sayHello();
    print('and I play for ${team}\n');
  }
}

class Dog extends Animals {
  final String dogtype;
  Dog({required this.dogtype, required Type type, required int age})
      : super(type, age);

  @override
  void typePrint() {
    super.typePrint();
    print("dogtype: $dogtype\n");
  }
}

void main() {
  var player = Player(team: Team.red, name: 'Heesu');
  player.sayHello();

  var dog1 = Dog(type: Type.dog, dogtype: 'bulldog', age: 10);
  dog1.typePrint();
}
