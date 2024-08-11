// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'announcments_bloc.dart';

class AnnouncmentsState {
  final Result<List<AnnouncmentModel>> announcments;
  AnnouncmentsState({
    this.announcments = const Result.init(),
  });

  AnnouncmentsState copyWith({
    Result<List<AnnouncmentModel>>? announcments,
  }) {
    return AnnouncmentsState(
      announcments: announcments ?? this.announcments,
    );
  }
}
