import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../core.dart';

class UserInterestSection extends StatefulWidget {
  const UserInterestSection({
    Key? key,
    required this.appUser,
  }) : super(key: key);

  final AppUser appUser;

  @override
  State<UserInterestSection> createState() => _UserInterestSectionState();
}

class _UserInterestSectionState extends State<UserInterestSection> {
  final interestList = <String>[];

  @override
  void initState() {
    super.initState();
    _fillInterestListWithDelay();
  }

  Future<void> _fillInterestListWithDelay() async {
    final result = await Future.delayed(300.milliseconds);
    for (String interest in widget.appUser.interestList) {
      final result = await Future.delayed(200.milliseconds);
      if (mounted) {
        setState(() {
          interestList.add(interest);
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              mediumBoldTitle(context, 'Interests'),
              const SizedBox(height: 8),
              Wrap(
                spacing: 4,
                children: interestList
                    .map(
                      (id) => InterestChip(interestId: id)
                          .animate()
                          .fadeIn(duration: 400.milliseconds),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
