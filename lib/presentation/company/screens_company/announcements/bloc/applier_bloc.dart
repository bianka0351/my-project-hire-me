import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:hireme/presentation/company/screens_company/announcements/bloc/applier_event.dart';
import 'package:hireme/presentation/company/screens_company/announcements/bloc/applier_state.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';



class ApplierBloc extends Bloc<ApplierEvent, ApplierState> {
  ApplierBloc() : super(ApplierInitial());

  @override
  Stream<ApplierState> mapEventToState(ApplierEvent event) async* {
    if (event is FetchAppliers) {
      yield* _mapFetchAppliersToState();
    } else if (event is AcceptApplier) {
      yield* _mapAcceptApplierToState(event);
    } else if (event is RejectApplier) {
      yield* _mapRejectApplierToState(event);
    } else if (event is InterviewApplier) {
      yield* _mapInterviewApplierToState(event);
    }
  }

  Stream<ApplierState> _mapFetchAppliersToState() async* {
    yield ApplierLoading();
    try {
      final response = await http.get(
        Uri.parse('https://yourapi.com/endpoint'),
        headers: {
          'Content-Type': 'application/json',
        },
      );
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        List<Applier> appliers = (data['users'] as List)
            .map((applier) => Applier.fromJson(applier))
            .toList();
        yield ApplierLoaded(appliers);
      } else {
        yield ApplierFailure('Failed to fetch appliers.');
      }
    } catch (error) {
      yield ApplierFailure(error.toString());
    }
  }

  Stream<ApplierState> _mapAcceptApplierToState(AcceptApplier event) async* {
    yield ApplierLoading();
    try {
      final response = await http.post(
        Uri.parse('https://yourapi.com/endpoint'),
        body: jsonEncode({
          'user_id': event.userId,
          'job_announcement_id': event.jobAnnouncementId,
          'status': 'Accepted',
        }),
        headers: {
          'Content-Type': 'application/json',
        },
      );
      if (response.statusCode == 200) {
        yield ApplierSuccess('Status updated to Accepted.');
      } else {
        yield ApplierFailure('Failed to update status.');
      }
    } catch (error) {
      yield ApplierFailure(error.toString());
    }
  }

  Stream<ApplierState> _mapRejectApplierToState(RejectApplier event) async* {
    yield ApplierLoading();
    try {
      final response = await http.post(
        Uri.parse('https://yourapi.com/endpoint'),
        body: jsonEncode({
          'user_id': event.userId,
          'job_announcement_id': event.jobAnnouncementId,
          'status': 'Rejected',
        }),
        headers: {
          'Content-Type': 'application/json',
        },
      );
      if (response.statusCode == 200) {
        yield ApplierSuccess('Status updated to Rejected.');
      } else {
        yield ApplierFailure('Failed to update status.');
      }
    } catch (error) {
      yield ApplierFailure(error.toString());
    }
  }

  Stream<ApplierState> _mapInterviewApplierToState(InterviewApplier event) async* {
    yield ApplierLoading();
    try {
      final response = await http.post(
        Uri.parse('https://yourapi.com/endpoint'),
        body: jsonEncode({
          'user_id': event.userId,
          'job_announcement_id': event.jobAnnouncementId,
          'status': 'To be Interviewed',
          'date': event.date,
          'time': event.time,
          'place': event.place,
        }),
        headers: {
          'Content-Type': 'application/json',
        },
      );
      if (response.statusCode == 200) {
        yield ApplierSuccess('Interview details sent.');
      } else {
        yield ApplierFailure('Failed to send interview details.');
      }
    } catch (error) {
      yield ApplierFailure(error.toString());
    }
  }
}