part of 'view_model.dart';

@freezed
class InterestViewModel with _$InterestViewModel {
  const InterestViewModel._();

  const factory InterestViewModel({
    required String docId,
    required String icon,
    required String name,
    @Default(false) bool isSelected,
  }) = _InterestViewModel;

  factory InterestViewModel.fromInterest(Interest interest) =>
      InterestViewModel(
        docId: interest.id,
        icon: interest.icon,
        name: interest.name,
      );

  Interest toInterest() => Interest(
        id: docId,
        icon: icon,
        name: name,
      );
}
