import 'game_character.dart';
import 'dart:math';
import 'heroes.dart';

class Boss extends GameCharacter {
  static Random random = Random();

  SuperAbility? defence;

  Boss(super.name, super.health, super.damage);

  void chooseDefence() {
    var variants =
        SuperAbility.values; // [criticalDamage, boost, heal, blockRevert]
    int randomIndex = random.nextInt(variants.length); // 0,1,2,3
    defence = variants[randomIndex];
  }

  void attack(List<Hero> heroes) {
    for (var hero in heroes) {
      if (hero.isAlive()) {
        if (hero is Berserk && defence != SuperAbility.blockRevert) {
          hero.blockedDamage = (random.nextInt(2) + 1) * 5; // 5,10
          hero.health -= damage - hero.blockedDamage;
        } else {
          hero.health -= damage;
        }
      }
    }
  }

  @override
  String toString() {
    return '${super.toString()} defence: ${defence == null ? 'No defence' : defence!.name}';
  }
}
