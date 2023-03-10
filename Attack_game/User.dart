import 'dart:math';

int getNum(int min, int max){
  Random r = new Random();
  return min + r.nextInt(max-min);
}

class Unit{
 int xp = 0;

 void getXp(int _xp){
   xp += _xp;
 }
}

class Nomal{
  void hello(){
    print('hello World!');
  }
}

//플레이어 클래스
class User extends Nomal{
  //이름, 체력, 민뎀,맥뎀, 방어력

  String name;
  int hp;
  int minDmg;
  int maxDmg;
  int def;
  late int xp;
  User(this.name, this.hp, this.minDmg, this.maxDmg, this.def);

  //플레이어가 죽었는지 확인하는 함수
  bool isDead() => hp<=0? true:false;

  //공격
  int attack(){
    return getNum(minDmg, maxDmg);
  }

  //맞기
  int getDmg(int dmg){
    //데미지에서 방어력만큼 차감
    dmg -= def;
    if(dmg > 0) dmg = 0;
    hp -= dmg;

    return hp;
  }
}