// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'announcments_bloc.dart';

abstract class AnnouncmentsEvent {}

class GetAllAnnouncments extends AnnouncmentsEvent {}

class AddNewJobAnnounce extends AnnouncmentsEvent {
  final AddAnnouncmentParam param;
  AddNewJobAnnounce({
    required this.param,
  });
}
