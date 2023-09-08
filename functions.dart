//parametes칸에 {}를 추가 하고 값을 추가하면 name argument 를 사용할 수 있음.
String sayHello(
    {
    //required -> sayHello함수를 호출 할때마다 무조건 거쳐야함, required가 없으면 컴파일 에러 null safety발생
    required String name,
    required int age,
    required String country}) {
  return "Hello $name, you are $age, and come from $country";
}

//optional positional parameters
String Hello(String name, int age, [String? country = 'Korea']) =>
    'Hello $name, you are $age, and come from $country';

//코드가 한줄일 때 '=>'사용, return a+b; 와 같음
num plus(num a, num b) => a + b;

//qq(??)는 좌향이 null이면 우향을 return
String capitalizeName(String? name) => name?.toLowerCase() ?? 'ANON';
// if (name != null){
//  return name.toUpperCase();
// }
// return 'ANOA';
// 다음 따르는 문장과 같음 = '=> name != null ? name.toUpperCase() :'ANON';'

//data타입을 만들 수 있음
typedef ListOfInts = List<int>;

List<int> reverseListOfNumbers(ListOfInts list) {
  var reversed = list.reversed;
  return reversed.toList();
}

typedef UserInfo = Map<String, String>;

String sayHi(UserInfo userInfo) {
  return "Hi ${userInfo['name']}";
}

void main() {
  print(sayHello(age: 23, country: 'Korea', name: 'HeeSu'));
  var result = Hello('HeeSu', 23);
  print(result);
  print(plus(1, 4));
  capitalizeName('heesu');
  //QQ assignment operator
  String? name;
  name ??= 'Heesu';
  print(reverseListOfNumbers([1, 2, 3]));
  print(sayHi({'name': 'HeeSu'}));
}
