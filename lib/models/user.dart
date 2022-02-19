class User {
  final String uid;
  final String email;
  final String name;
  final String referCode;
  final String referLink;
  final int reward;

  User({
    required this.uid,
    required this.email,
    required this.name,
    required this.referCode,
    required this.referLink,
    required this.reward,
  });

  factory User.fromJson(Map<String, dynamic> data) {
    return User(
      uid: data['uid'] ?? '',
      name: data['name'] ?? '',
      email: data['email'] ?? '',
      referCode: data['refer_code'] ?? '',
      referLink: data['refer_link'] ?? '',
      reward: data['reward'] ?? 0,
    );
  }

  factory User.empty() {
    return User(
      uid: '',
      name: '',
      email: '',
      referCode: '',
      referLink: '',
      reward: 0,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User &&
        other.uid == uid &&
        other.email == email &&
        other.name == name &&
        other.referCode == referCode &&
        other.referLink == referLink &&
        other.reward == reward;
  }

  @override
  int get hashCode {
    return uid.hashCode ^ email.hashCode ^ name.hashCode ^ referCode.hashCode ^ referLink.hashCode ^ reward.hashCode;
  }
}
