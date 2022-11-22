import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_buddy_finder/domain/entity/repository.dart';
import 'package:workout_buddy_finder/ui/home/query_input.dart';

import 'home_cubit.dart';
import 'repo_list_item.dart';

class HomePageContent extends StatefulWidget {
  HomePageContent({Key? key}) : super(key: key);

  @override
  State<HomePageContent> createState() => _HomePageContentState();
}

class _HomePageContentState extends State<HomePageContent> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        QueryInput(textEditingController: controller),
        Expanded(
          child: buildContent(context),
        )
      ],
    );
  }

  Widget buildContent(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is HomeLoadingState) {
          return Center(child: CircularProgressIndicator());
        } else if (state is HomeErrorState) {
          final error = state.error;
          return Center(child: Text(error.message));
        } else if (state is HomeSuccessState) {
          final repositories = state.repositories;
          return buildList(repositories);
        }
        return Center(child: Text("Enter keyword to search on github"));
      },
    );
  }

  Widget buildList(List<Repository> repository) {
    return ListView.builder(
      itemCount: repository.length,
      itemBuilder: (context, index) {
        final repo = repository[index];
        return RepoListItem(repository: repo);
      },
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
