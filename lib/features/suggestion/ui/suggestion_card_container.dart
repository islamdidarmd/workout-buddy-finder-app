import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/model/models.dart';
import '../../../core/ui/shared/app_loading_indicator.dart';
import '../../../di/service_locator.dart';
import 'complete_profile_message_card.dart';
import 'suggestion_card.dart';

import 'bloc/suggestions_bloc.dart';

class SuggestionCardContainer extends StatelessWidget {
  const SuggestionCardContainer({
    Key? key,
    required this.onOpenMessaging,
    required this.onOpenProfile,
  }) : super(key: key);

  final void Function() onOpenMessaging;
  final void Function(String userId) onOpenProfile;

  bool _suggestionBlocBuildWhen(SuggestionsState _, SuggestionsState current) {
    return current.maybeWhen(
      loading: () => true,
      suggestionsFetched: (suggestions) => true,
      orElse: () => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    final appUser = context.read<AppUser>();
    if (appUser.isOnBoardingNotComplete) {
      return const CompleteProfileMessageCard();
    }

    return BlocProvider<SuggestionsBloc>(
      create: (context) =>
          sl()..add(SuggestionsEvent.loadSuggestions(context.read())),
      child: BlocBuilder<SuggestionsBloc, SuggestionsState>(
        buildWhen: _suggestionBlocBuildWhen,
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const AppLoadingIndicator(),
            suggestionsFetched: (suggestions) {
              return SuggestionCard(
                suggestion: suggestions,
                onOpenMessaging: onOpenMessaging,
                onOpenProfile: onOpenProfile,
              );
            },
            orElse: () => const SizedBox(),
          );
        },
      ),
    );
  }
}
