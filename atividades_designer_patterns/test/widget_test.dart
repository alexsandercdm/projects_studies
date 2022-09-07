import 'package:atividades_designer_patterns/model/model_cpf.dart';

void main() {
  String cpf = '111444777';

  var value = ValidateCpf(cpf: cpf);

  var result = value.checkDigitOne(cpf);
  print(result);
}
