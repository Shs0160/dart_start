class Player {
  final String name; // _name 은 private 변수
  int xp;
  String team;

  Player.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson['name'],
        xp = playerJson['xp'],
        team = playerJson['team'];

  void sayHello() {
    print("Hi my name is $name");
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
    player.sayHello();
  });
}
