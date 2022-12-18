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

  factory InterestViewModel.fromInterest(InterestModel interest) =>
      InterestViewModel(
        docId: interest.docId,
        icon: interest.icon,
        name: interest.name,
      );

  InterestModel toInterest() => InterestModel(
        docId: docId,
        icon: icon,
        name: name,
      );
}
