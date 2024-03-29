import 'dart:math';

int getNum(int min, int max){
  Random random = new Random();
  return min + random.nextInt(max-min);
}

class Unit{
  int xp;
  Unit(this.xp);


  void getXp(int _xp){
    xp = xp + _xp;
  }
}


abstract class AttackType{
  //abstract의 특징은 기능을 정의하지 않음.
  void kick();
  void punch();
}

//플레이어 클래스
class User extends Unit{
  //이름, 체력, 민뎀,맥뎀, 방어력

  String name;
  int hp;
  int minDmg;
  int maxDmg;
  int def;
  late int xp;
  User({required this.name, required this.hp,required this.minDmg,required this.maxDmg,required this.def, required int xp})
      :super(xp);
  
  //죽었는가 확인하는 함수
  bool isDead() => hp<=0? true:false;

  //공격기능 = 공격데미지 얻기
  int attack(){
    //경험치 얻기
    //내가 물려받은 Unit의 경험치 얻기 기능
    super.getXp(10);  //super.xp에 증가되어있음.
    xp = super.xp;
    return getNum(minDmg, maxDmg);
  }

  //맞기기능
  void getDmg(int dmg){
    //데미지에서 방어력만큼 차감   10 - 2방 = 8뎀
    dmg = dmg - def;
    if (dmg < 0) dmg = 0;
    hp -= dmg;
  }

  void kick(){

  }

  void punch() {

  }
}