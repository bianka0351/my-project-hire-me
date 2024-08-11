
abstract class ApplierEvent {
  const ApplierEvent();

  @override
  List<Object> get props => [];
}

class FetchAppliers extends ApplierEvent {}

class AcceptApplier extends ApplierEvent {
  final int userId;
  final int jobAnnouncementId;

  const AcceptApplier(this.userId, this.jobAnnouncementId);
}

class RejectApplier extends ApplierEvent {
  final int userId;
  final int jobAnnouncementId;

  const RejectApplier(this.userId, this.jobAnnouncementId);
}

class InterviewApplier extends ApplierEvent {
  final int userId;
  final int jobAnnouncementId;
  final String date;
  final String time;
  final String place;

  const InterviewApplier(this.userId, this.jobAnnouncementId, this.date, this.time, this.place);
}