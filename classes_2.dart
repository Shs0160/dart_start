//추상화 클래스 - 특정 메소드를 구현하도록 강제
abstract class Human {
  void walk();
}

enum Team { red, blue }

class Player extends Human {
  final String name; // _name 은 private 변수
  int xp;
  String team;

  Player.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson['name'],
        xp = playerJson['xp'],
        team = playerJson['team'];

  void hello() {
    print('$name : $xp : $team\n');
  }

  void walk() {
    print('im walking');
  }
}

class Player2 {
  String name; // _name 은 private 변수
  int xp;
  Team team;

  Player2({required this.name, required this.xp, required this.team});

  void hello() {
    print('$name : $xp : $team\n');
  }
}

void main() {
  var apiData = [
    {'name': 'Heesu', 'xp': 1500, 'team': 'red'},
    {'name': 'Jisu', 'xp': 3000, 'team': 'blue'},
    {'name': 'dave', 'xp': 2500, 'team': 'red'},
  ];

  apiData.forEach((playerJson) {
    var player = Player.fromJson(playerJson);
    player.hello();
  });

  var Heesu = Player2(name: 'Heesu', xp: 2000, team: Team.red);
  var potat = Heesu
    ..name = 'Song'
    ..xp = 3000
    ..team = Team.blue;

  Heesu.hello();
  potat.hello();
}
