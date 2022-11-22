import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:workout_buddy_finder/domain/domain.dart';
import 'package:url_launcher/url_launcher.dart';

class RepoListItem extends StatelessWidget {
  final Repository repository;

  const RepoListItem({Key? key, required this.repository}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      key: ValueKey(repository.id),
      child: ListTile(
        onTap: () => onListItemTapped(repository),
        leading: CircleAvatar(
          foregroundImage: CachedNetworkImageProvider(
            repository.owner.picture ?? '',
            errorListener: () {},
          ),
        ),
        title: Text(repository.name),
        subtitle: Text(
          repository.description ?? "",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }

  void onListItemTapped(Repository repository) async {
    final uri = Uri.parse(repository.repoLink);
    if (await canLaunchUrl(uri)) {
      launchUrl(uri);
    }
  }
}
