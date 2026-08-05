import 'dart:math';

import 'game_character.dart';
import 'boss.dart';
import 'rpg_game.dart';

abstract class Hero extends GameCharacter {
  SuperAbility ability;
  Hero(super.name, super.health, super.damage, this.ability);

  void attack(Boss boss) {
    boss.health -= damage;
  }

  void applySuperPower(Boss boss, List<Hero> heroes);
}

class Warrior extends Hero {
  Warrior(String name, int health, int damage)
    : super(name, health, damage, SuperAbility.criticalDamage);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    Random random = Random();
    int crit = damage * (random.nextInt(4) + 2); // 2,3,4,5
    RpgGame.mesaage += 'Warrior $name hit critically $crit\n';
    boss.health -= crit;
  }
}

class Magic extends Hero {
  Magic(String name, int health, int damage)
    : super(name, health, damage, SuperAbility.boost);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    // TODO: implement boosting
  }
}

class Berserk extends Hero {
  int blockedDamage = 0;
  Berserk(String name, int health, int damage)
    : super(name, health, damage, SuperAbility.blockRevert);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    RpgGame.mesaage += 'Berserk $name reverted $blockedDamage\n';
    boss.health -= blockedDamage;
  }
}

class Medic extends Hero {
  int healPoints;
  Medic(String name, int health, int damage, this.healPoints)
    : super(name, health, damage, SuperAbility.heal);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    for (var hero in heroes) {
      if (hero.isAlive() && hero != this) {
        hero.health += healPoints;
      }
    }
  }
}
