import 'boss.dart';
import 'heroes.dart';

class RpgGame {
  static int roundNumber = 0;
  static String mesaage = '';
  static void startGame() {
    Boss boss = Boss('Dragon', 1000, 50);

    Warrior warrior1 = Warrior('Ahiles', 280, 10);
    Warrior warrior2 = Warrior('Hercules', 270, 15);
    Magic magic = Magic('Mage', 290, 10);
    Berserk berserk = Berserk('Hernes', 260, 10);
    Medic doc = Medic('Wiser', 250, 5, 15);
    Medic assistant = Medic('Minion', 300, 5, 5);

    List<Hero> heroes = [warrior1, doc, warrior2, berserk, magic, assistant];

    print('GAME STARTED');
    _showStatistics(boss, heroes);

    while (!_isGameOver(boss, heroes)) {
      _playRound(boss, heroes);
    }
    print('GAME OVER');
  }

  static bool _isGameOver(Boss boss, List<Hero> heroes) {
    if (!boss.isAlive()) {
      print('Heroes won!!!');
      return true;
    }
    bool allHeroesDead = true;
    for (var hero in heroes) {
      if (hero.isAlive()) {
        allHeroesDead = false;
        break;
      }
    }
    if (allHeroesDead) {
      print('Boss won!!!');
      return true;
    }
    return false;
  }

  static void _playRound(Boss boss, List<Hero> heroes) {
    roundNumber++;
    boss.chooseDefence();
    boss.attack(heroes);
    for (var hero in heroes) {
      if (hero.isAlive() && boss.isAlive() && hero.ability != boss.defence) {
        hero.attack(boss);
        hero.applySuperPower(boss, heroes);
      }
    }
    _showStatistics(boss, heroes);
  }

  static void _showStatistics(Boss boss, List<Hero> heroes) {
    print('\nROUND: $roundNumber -----------------');
    print(boss);
    for (var hero in heroes) {
      print(hero);
    }
    print(mesaage);
    mesaage = '';
  }
}
