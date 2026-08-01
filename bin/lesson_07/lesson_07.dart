import 'animals.dart';
import 'transports.dart';
import 'interfaces.dart';
import 'mixins.dart';

void main() {
  Animal cat = Cat('Tom', 2);
  List<Drawable> drawables = [
    cat,
    Car(),
    Parrot('Polly', 1),
    Plane(),
    Snake('Kaa', 7),
  ];
  for (Drawable d in drawables) {
    drawAllVariants(d);
    if (d is Fly) {
      Fly f = d as Fly;
      f.fly(d.runtimeType.toString());
    }
    if(d is Playable){
      (d as Playable).play();
    }
  }
}

void drawAllVariants(Drawable d) {
  d.draw();
  print(d.draw3D('plastic'));
}
