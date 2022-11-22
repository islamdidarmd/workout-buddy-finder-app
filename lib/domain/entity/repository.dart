import 'owner.dart';

class Repository {
  final int id;
  final String name;
  final Owner owner;
  final bool private;
  final String repoLink;
  final String? description;
  final List<String> topics;

  const Repository({
    required this.id,
    required this.name,
    required this.owner,
    required this.private,
    required this.repoLink,
    required this.description,
    required this.topics,
  });
}
