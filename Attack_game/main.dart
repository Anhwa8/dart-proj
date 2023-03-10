import 'User.dart';

void main(){
  List<User> users = [];
  users.add(new User('kim', 100, 10, 1000, 1));
  users.add(new User('lee', 100, 5, 105, 1));

  int player = 0;
  int target = 1;

  while(true){
    int dmg = users[player].attack();
    users[target].getDmg(dmg);
    print('${users[player].name}가 ${users[target]}에게 ${dmg}의 데미지를 입혔습니다. 남은 체력 : ${users[target].hp}');
    if(users[target].isDead()){
      print('${users[player].name}가 이겼습니다.');
      break;
    }
    player = 1 - player;
    target = 1 - target;
  }
}