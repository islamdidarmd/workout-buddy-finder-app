import 'package:flutter/foundation.dart';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/core.dart';
import '../../domain/domain.dart';
import '../../domain/use_case/get_interest_list_use_case.dart';

part 'profile_bloc.freezed.dart';

part 'profile_event.dart';

part 'profile_state.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final GetInterestListUseCase getInterestListUseCase;

  ProfileBloc({
    required this.getInterestListUseCase,
  }) : super(ProfileState.initial()) {
    on<ProfileEvent>((event, emit) async {
      final result = await event.when(
        loadInterests: () async {
          emit(ProfileState.loading());
          final data = await getInterestListUseCase();
          data.fold(
            (interestList) =>
                emit(ProfileState.interestsLoadedState(interestList)),
            (error) => emit(ProfileState.error(error)),
          );
        },
      );
    });
  }
}
