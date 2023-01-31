class User {
  final int points;
  final String cpf;

  User({
    required this.points,
    required this.cpf,
  });
  Map<String, dynamic> toJson() => {
        'pontos': points,
        'cpf': cpf,
      };
}
