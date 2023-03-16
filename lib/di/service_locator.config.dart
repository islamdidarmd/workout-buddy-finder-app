// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:firebase_storage/firebase_storage.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i10;
import 'package:injectable/injectable.dart' as _i2;
import 'package:workout_buddy_finder/feature_auth/domain/use_case/app_user_stream_use_case.dart'
    as _i23;
import 'package:workout_buddy_finder/feature_auth/domain/use_case/auth_state_stream_use_case.dart'
    as _i24;
import 'package:workout_buddy_finder/feature_auth/domain/use_case/create_new_user_use_case.dart'
    as _i28;
import 'package:workout_buddy_finder/feature_auth/domain/use_case/get_user_profile_from_id_use_case.dart'
    as _i9;
import 'package:workout_buddy_finder/feature_auth/domain/use_case/sign_in_with_google_use_case.dart'
    as _i37;
import 'package:workout_buddy_finder/feature_auth/domain/use_case/sign_out_use_case.dart'
    as _i14;
import 'package:workout_buddy_finder/feature_auth/domain/use_case/update_last_seen_use_case.dart'
    as _i15;
import 'package:workout_buddy_finder/feature_auth/feature_auth.dart' as _i31;
import 'package:workout_buddy_finder/feature_auth/ui/bloc/auth_cubit.dart'
    as _i38;
import 'package:workout_buddy_finder/feature_location/domain/usecase/get_address_from_lat_long_use_case.dart'
    as _i7;
import 'package:workout_buddy_finder/feature_location/ui/bloc/location_retriever_bloc.dart'
    as _i11;
import 'package:workout_buddy_finder/feature_messaging/domain/use_case/create_chat_room_use_case.dart'
    as _i27;
import 'package:workout_buddy_finder/feature_messaging/domain/use_case/get_chat_room_participants_use_case.dart'
    as _i30;
import 'package:workout_buddy_finder/feature_messaging/domain/use_case/send_message_use_case.dart'
    as _i36;
import 'package:workout_buddy_finder/feature_messaging/domain/use_case/update_last_sent_message_use_case.dart'
    as _i16;
import 'package:workout_buddy_finder/feature_messaging/feature_messaging.dart'
    as _i34;
import 'package:workout_buddy_finder/feature_profile/domain/use_case/add_user_interest_use_case.dart'
    as _i22;
import 'package:workout_buddy_finder/feature_profile/domain/use_case/get_interest_list_use_case.dart'
    as _i8;
import 'package:workout_buddy_finder/feature_profile/domain/use_case/remove_user_interest_use_case.dart'
    as _i12;
import 'package:workout_buddy_finder/feature_profile/domain/use_case/update_profile_hidden_status_use_case.dart'
    as _i17;
import 'package:workout_buddy_finder/feature_profile/domain/use_case/update_user_profile_picture_use_case.dart'
    as _i18;
import 'package:workout_buddy_finder/feature_profile/ui/bloc/activity_tracker_cubit.dart'
    as _i3;
import 'package:workout_buddy_finder/feature_profile/ui/bloc/profile_bloc.dart'
    as _i35;
import 'package:workout_buddy_finder/feature_suggestion/domain/use_case/check_if_disliked_by_use_case.dart'
    as _i25;
import 'package:workout_buddy_finder/feature_suggestion/domain/use_case/check_if_has_match_use_case.dart'
    as _i39;
import 'package:workout_buddy_finder/feature_suggestion/domain/use_case/check_if_liked_by_use_case.dart'
    as _i26;
import 'package:workout_buddy_finder/feature_suggestion/domain/use_case/dislike_user_use_case.dart'
    as _i29;
import 'package:workout_buddy_finder/feature_suggestion/domain/use_case/get_suggestions_use_case.dart'
    as _i32;
import 'package:workout_buddy_finder/feature_suggestion/domain/use_case/like_user_use_case.dart'
    as _i33;
import 'package:workout_buddy_finder/feature_suggestion/feature_suggestion.dart'
    as _i41;
import 'package:workout_buddy_finder/feature_suggestion/ui/bloc/suggestions_bloc.dart'
    as _i40;
import 'package:workout_buddy_finder/feature_upload/domain/use_case/replace_image_use_case.dart'
    as _i13;
import 'package:workout_buddy_finder/feature_upload/domain/use_case/upload_image_from_bytes_use_case.dart'
    as _i20;
import 'package:workout_buddy_finder/feature_upload/domain/use_case/upload_image_from_file_use_case.dart'
    as _i21;
import 'package:workout_buddy_finder/feature_upload/feature_upload.dart'
    as _i19;

import 'firebase_module.dart' as _i42;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  _i1.GetIt initGetIt({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final firebaseModule = _$FirebaseModule();
    gh.factory<_i3.ActivityTrackerCubit>(() => _i3.ActivityTrackerCubit());
    gh.factory<_i4.FirebaseAuth>(() => firebaseModule.firebaseAuth);
    gh.factory<_i5.FirebaseFirestore>(() => firebaseModule.firestore);
    gh.factory<_i6.FirebaseStorage>(() => firebaseModule.firebaseStorage);
    gh.factory<_i7.GetAddressFromLatLongUseCase>(
        () => _i7.GetAddressFromLatLongUseCase());
    gh.factory<_i8.GetInterestListUseCase>(
        () => _i8.GetInterestListUseCase(gh<_i5.FirebaseFirestore>()));
    gh.factory<_i9.GetUserProfileFromIdUseCase>(
        () => _i9.GetUserProfileFromIdUseCase(gh<_i5.FirebaseFirestore>()));
    gh.factory<_i10.GoogleSignIn>(() => firebaseModule.googleSignIn);
    gh.factory<_i11.LocationRetrieverBloc>(() => _i11.LocationRetrieverBloc());
    gh.factory<_i12.RemoveUserInterestUseCase>(
        () => _i12.RemoveUserInterestUseCase(gh<_i5.FirebaseFirestore>()));
    gh.factory<_i13.ReplaceImageUseCase>(
        () => _i13.ReplaceImageUseCase(gh<_i6.FirebaseStorage>()));
    gh.factory<_i14.SignOutUseCase>(
        () => _i14.SignOutUseCase(gh<_i4.FirebaseAuth>()));
    gh.factory<_i15.UpdateLastSeenUseCase>(
        () => _i15.UpdateLastSeenUseCase(gh<_i5.FirebaseFirestore>()));
    gh.factory<_i16.UpdateLastSentMessageUseCase>(
        () => _i16.UpdateLastSentMessageUseCase(gh<_i5.FirebaseFirestore>()));
    gh.factory<_i17.UpdateProfileHiddenStatusUseCase>(() =>
        _i17.UpdateProfileHiddenStatusUseCase(gh<_i5.FirebaseFirestore>()));
    gh.factory<_i18.UpdateUserProfilePictureUseCase>(
        () => _i18.UpdateUserProfilePictureUseCase(
              gh<_i5.FirebaseFirestore>(),
              gh<_i19.ReplaceImageUseCase>(),
            ));
    gh.factory<_i20.UploadImageFromBytesUseCase>(
        () => _i20.UploadImageFromBytesUseCase(gh<_i6.FirebaseStorage>()));
    gh.factory<_i21.UploadImageFromFileUseCase>(
        () => _i21.UploadImageFromFileUseCase(gh<_i6.FirebaseStorage>()));
    gh.factory<_i22.AddUserInterestUseCase>(
        () => _i22.AddUserInterestUseCase(gh<_i5.FirebaseFirestore>()));
    gh.factory<_i23.AppUserStreamUseCase>(() => _i23.AppUserStreamUseCase(
          gh<_i5.FirebaseFirestore>(),
          gh<_i4.FirebaseAuth>(),
        ));
    gh.factory<_i24.AuthStateStreamUseCase>(() => _i24.AuthStateStreamUseCase(
          updateLastSeenUseCase: gh<_i15.UpdateLastSeenUseCase>(),
          firebaseAuth: gh<_i4.FirebaseAuth>(),
        ));
    gh.factory<_i25.CheckIfDisLikedByUseCase>(
        () => _i25.CheckIfDisLikedByUseCase(gh<_i5.FirebaseFirestore>()));
    gh.factory<_i26.CheckIfLikedByUseCase>(
        () => _i26.CheckIfLikedByUseCase(gh<_i5.FirebaseFirestore>()));
    gh.factory<_i27.CreateChatRoomUseCase>(
        () => _i27.CreateChatRoomUseCase(gh<_i5.FirebaseFirestore>()));
    gh.factory<_i28.CreateNewUserUseCase>(() => _i28.CreateNewUserUseCase(
          uploadImageFromBytesUseCase: gh<_i19.UploadImageFromBytesUseCase>(),
          firestore: gh<_i5.FirebaseFirestore>(),
        ));
    gh.factory<_i29.DislikeUserUseCase>(
        () => _i29.DislikeUserUseCase(gh<_i5.FirebaseFirestore>()));
    gh.factory<_i30.GetChatRoomParticipantsUseCase>(() =>
        _i30.GetChatRoomParticipantsUseCase(
          getUserProfileFromIdUseCase: gh<_i31.GetUserProfileFromIdUseCase>(),
          firestore: gh<_i5.FirebaseFirestore>(),
        ));
    gh.factory<_i32.GetSuggestionsUseCase>(() => _i32.GetSuggestionsUseCase(
          checkIfLikedByUseCase: gh<_i26.CheckIfLikedByUseCase>(),
          checkIfDisLikedByUseCase: gh<_i25.CheckIfDisLikedByUseCase>(),
          firestore: gh<_i5.FirebaseFirestore>(),
        ));
    gh.factory<_i33.LikeUserUseCase>(() => _i33.LikeUserUseCase(
          checkIfLikedByUseCase: gh<_i26.CheckIfLikedByUseCase>(),
          createChatRoomUseCase: gh<_i34.CreateChatRoomUseCase>(),
          firestore: gh<_i5.FirebaseFirestore>(),
        ));
    gh.factory<_i35.ProfileBloc>(() => _i35.ProfileBloc(
          getInterestListUseCase: gh<_i8.GetInterestListUseCase>(),
          addUserInterestUseCase: gh<_i22.AddUserInterestUseCase>(),
          removeUserInterestUseCase: gh<_i12.RemoveUserInterestUseCase>(),
          updateUserProfilePictureUseCase:
              gh<_i18.UpdateUserProfilePictureUseCase>(),
          replaceImageUseCase: gh<_i13.ReplaceImageUseCase>(),
        ));
    gh.factory<_i36.SendMessageUseCase>(() => _i36.SendMessageUseCase(
          updateLastSentMessageUseCase: gh<_i16.UpdateLastSentMessageUseCase>(),
          firestore: gh<_i5.FirebaseFirestore>(),
        ));
    gh.factory<_i37.SignInWithGoogleUseCase>(() => _i37.SignInWithGoogleUseCase(
          createNewUserUseCase: gh<_i28.CreateNewUserUseCase>(),
          getUserProfileFromIdUseCase: gh<_i9.GetUserProfileFromIdUseCase>(),
          firebaseAuth: gh<_i4.FirebaseAuth>(),
          firestore: gh<_i5.FirebaseFirestore>(),
          googleSign: gh<_i10.GoogleSignIn>(),
        ));
    gh.factory<_i38.AuthCubit>(() => _i38.AuthCubit(
          signInWithGoogleUseCase: gh<_i31.SignInWithGoogleUseCase>(),
          signOutUseCase: gh<_i31.SignOutUseCase>(),
        ));
    gh.factory<_i39.CheckIfHasMatchUseCase>(() => _i39.CheckIfHasMatchUseCase(
        checkIfLikedByUseCase: gh<_i26.CheckIfLikedByUseCase>()));
    gh.factory<_i40.SuggestionsBloc>(() => _i40.SuggestionsBloc(
          getSuggestionsUseCase: gh<_i41.GetSuggestionsUseCase>(),
          likeUserUseCase: gh<_i41.LikeUserUseCase>(),
          dislikeUserUseCase: gh<_i41.DislikeUserUseCase>(),
          checkIfHasMatchUseCase: gh<_i41.CheckIfHasMatchUseCase>(),
        ));
    return this;
  }
}

class _$FirebaseModule extends _i42.FirebaseModule {}
