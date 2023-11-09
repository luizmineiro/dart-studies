import 'chocolate.dart';

void main() {
  final chocolate1 = Chocolate('Nestle', 200.5);

  print(chocolate1.getCalorias);
  print(chocolate1.getMarca);

  chocolate1.setCalorias = 110.7;

  print(chocolate1.getCalorias);
}
