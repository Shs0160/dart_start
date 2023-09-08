void main() {
  // var = 모든 데이터타입 가능 한번 타입이 정해지면 값을 새로 줄때 그 타입으로만 가능
  var num = 0;
  print(num);
  // ? = null safty
  String? nico = 'nico';
  nico = null;

  //dynamic = 변수의 타입을 결정할 수 없다. var과는 다르게 다른 타입의 값을 선언할 수 있다. if문 필수!
  dynamic la = 10;
  la = 'hi';
  if (la is String) {
    print(la);
  }

  // if (nico!= null) {
  //   nico.isNotEmpty;
  // }
  //위에 3문장과 동일한 코드
  nico?.isNotEmpty;

  //final = 한번만 선언 가능 ,running time에서 값이 지정된다. install되고 난 후(const와 차이)
  final name = 'nico';
  print(name);
  //late = 초기 데이터없이 변수 선언 가능
  late final str;
  str = 'hello'; // final 때문에 딱 한번만 할당 가능
  print(str);

  //const = comfile time constant 함수 같이 값을 알 수 없는것은 불가능(install되기 전)
  //함수로 값을 가져와야 하는것은 보통 var이나 final로 선언된다.
  const hello = 'hello world!';
  print(hello);
  //final and const 차이
}
