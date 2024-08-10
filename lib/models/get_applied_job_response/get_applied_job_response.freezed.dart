// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_applied_job_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetAppliedJobResponse _$GetAppliedJobResponseFromJson(
    Map<String, dynamic> json) {
  return _GetAppliedJobResponse.fromJson(json);
}

/// @nodoc
mixin _$GetAppliedJobResponse {
  @JsonKey(name: "result")
  Result? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAppliedJobResponseCopyWith<GetAppliedJobResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAppliedJobResponseCopyWith<$Res> {
  factory $GetAppliedJobResponseCopyWith(GetAppliedJobResponse value,
          $Res Function(GetAppliedJobResponse) then) =
      _$GetAppliedJobResponseCopyWithImpl<$Res, GetAppliedJobResponse>;
  @useResult
  $Res call({@JsonKey(name: "result") Result? result});

  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$GetAppliedJobResponseCopyWithImpl<$Res,
        $Val extends GetAppliedJobResponse>
    implements $GetAppliedJobResponseCopyWith<$Res> {
  _$GetAppliedJobResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $ResultCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetAppliedJobResponseImplCopyWith<$Res>
    implements $GetAppliedJobResponseCopyWith<$Res> {
  factory _$$GetAppliedJobResponseImplCopyWith(
          _$GetAppliedJobResponseImpl value,
          $Res Function(_$GetAppliedJobResponseImpl) then) =
      __$$GetAppliedJobResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "result") Result? result});

  @override
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$GetAppliedJobResponseImplCopyWithImpl<$Res>
    extends _$GetAppliedJobResponseCopyWithImpl<$Res,
        _$GetAppliedJobResponseImpl>
    implements _$$GetAppliedJobResponseImplCopyWith<$Res> {
  __$$GetAppliedJobResponseImplCopyWithImpl(_$GetAppliedJobResponseImpl _value,
      $Res Function(_$GetAppliedJobResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_$GetAppliedJobResponseImpl(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAppliedJobResponseImpl implements _GetAppliedJobResponse {
  const _$GetAppliedJobResponseImpl({@JsonKey(name: "result") this.result});

  factory _$GetAppliedJobResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetAppliedJobResponseImplFromJson(json);

  @override
  @JsonKey(name: "result")
  final Result? result;

  @override
  String toString() {
    return 'GetAppliedJobResponse(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAppliedJobResponseImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAppliedJobResponseImplCopyWith<_$GetAppliedJobResponseImpl>
      get copyWith => __$$GetAppliedJobResponseImplCopyWithImpl<
          _$GetAppliedJobResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAppliedJobResponseImplToJson(
      this,
    );
  }
}

abstract class _GetAppliedJobResponse implements GetAppliedJobResponse {
  const factory _GetAppliedJobResponse(
          {@JsonKey(name: "result") final Result? result}) =
      _$GetAppliedJobResponseImpl;

  factory _GetAppliedJobResponse.fromJson(Map<String, dynamic> json) =
      _$GetAppliedJobResponseImpl.fromJson;

  @override
  @JsonKey(name: "result")
  Result? get result;
  @override
  @JsonKey(ignore: true)
  _$$GetAppliedJobResponseImplCopyWith<_$GetAppliedJobResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  @JsonKey(name: "length")
  int? get length => throw _privateConstructorUsedError;
  @JsonKey(name: "users")
  List<User>? get users => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call(
      {@JsonKey(name: "length") int? length,
      @JsonKey(name: "users") List<User>? users});
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? length = freezed,
    Object? users = freezed,
  }) {
    return _then(_value.copyWith(
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultImplCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$ResultImplCopyWith(
          _$ResultImpl value, $Res Function(_$ResultImpl) then) =
      __$$ResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "length") int? length,
      @JsonKey(name: "users") List<User>? users});
}

/// @nodoc
class __$$ResultImplCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$ResultImpl>
    implements _$$ResultImplCopyWith<$Res> {
  __$$ResultImplCopyWithImpl(
      _$ResultImpl _value, $Res Function(_$ResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? length = freezed,
    Object? users = freezed,
  }) {
    return _then(_$ResultImpl(
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
      users: freezed == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl(
      {@JsonKey(name: "length") this.length,
      @JsonKey(name: "users") final List<User>? users})
      : _users = users;

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  @override
  @JsonKey(name: "length")
  final int? length;
  final List<User>? _users;
  @override
  @JsonKey(name: "users")
  List<User>? get users {
    final value = _users;
    if (value == null) return null;
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Result(length: $length, users: $users)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            (identical(other.length, length) || other.length == length) &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, length, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      __$$ResultImplCopyWithImpl<_$ResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultImplToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  const factory _Result(
      {@JsonKey(name: "length") final int? length,
      @JsonKey(name: "users") final List<User>? users}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  @JsonKey(name: "length")
  int? get length;
  @override
  @JsonKey(name: "users")
  List<User>? get users;
  @override
  @JsonKey(ignore: true)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @JsonKey(name: "appliedJob_id")
  int? get appliedJobId => throw _privateConstructorUsedError;
  @JsonKey(name: "jobAnnouncement_id")
  int? get jobAnnouncementId => throw _privateConstructorUsedError;
  @JsonKey(name: "job_title")
  String? get jobTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "branch_name")
  String? get branchName => throw _privateConstructorUsedError;
  @JsonKey(name: "status_name")
  String? get statusName => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "current_date")
  DateTime? get currentDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {@JsonKey(name: "appliedJob_id") int? appliedJobId,
      @JsonKey(name: "jobAnnouncement_id") int? jobAnnouncementId,
      @JsonKey(name: "job_title") String? jobTitle,
      @JsonKey(name: "branch_name") String? branchName,
      @JsonKey(name: "status_name") String? statusName,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "current_date") DateTime? currentDate});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appliedJobId = freezed,
    Object? jobAnnouncementId = freezed,
    Object? jobTitle = freezed,
    Object? branchName = freezed,
    Object? statusName = freezed,
    Object? message = freezed,
    Object? currentDate = freezed,
  }) {
    return _then(_value.copyWith(
      appliedJobId: freezed == appliedJobId
          ? _value.appliedJobId
          : appliedJobId // ignore: cast_nullable_to_non_nullable
              as int?,
      jobAnnouncementId: freezed == jobAnnouncementId
          ? _value.jobAnnouncementId
          : jobAnnouncementId // ignore: cast_nullable_to_non_nullable
              as int?,
      jobTitle: freezed == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      branchName: freezed == branchName
          ? _value.branchName
          : branchName // ignore: cast_nullable_to_non_nullable
              as String?,
      statusName: freezed == statusName
          ? _value.statusName
          : statusName // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      currentDate: freezed == currentDate
          ? _value.currentDate
          : currentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "appliedJob_id") int? appliedJobId,
      @JsonKey(name: "jobAnnouncement_id") int? jobAnnouncementId,
      @JsonKey(name: "job_title") String? jobTitle,
      @JsonKey(name: "branch_name") String? branchName,
      @JsonKey(name: "status_name") String? statusName,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "current_date") DateTime? currentDate});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appliedJobId = freezed,
    Object? jobAnnouncementId = freezed,
    Object? jobTitle = freezed,
    Object? branchName = freezed,
    Object? statusName = freezed,
    Object? message = freezed,
    Object? currentDate = freezed,
  }) {
    return _then(_$UserImpl(
      appliedJobId: freezed == appliedJobId
          ? _value.appliedJobId
          : appliedJobId // ignore: cast_nullable_to_non_nullable
              as int?,
      jobAnnouncementId: freezed == jobAnnouncementId
          ? _value.jobAnnouncementId
          : jobAnnouncementId // ignore: cast_nullable_to_non_nullable
              as int?,
      jobTitle: freezed == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      branchName: freezed == branchName
          ? _value.branchName
          : branchName // ignore: cast_nullable_to_non_nullable
              as String?,
      statusName: freezed == statusName
          ? _value.statusName
          : statusName // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      currentDate: freezed == currentDate
          ? _value.currentDate
          : currentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {@JsonKey(name: "appliedJob_id") this.appliedJobId,
      @JsonKey(name: "jobAnnouncement_id") this.jobAnnouncementId,
      @JsonKey(name: "job_title") this.jobTitle,
      @JsonKey(name: "branch_name") this.branchName,
      @JsonKey(name: "status_name") this.statusName,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "current_date") this.currentDate});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  @JsonKey(name: "appliedJob_id")
  final int? appliedJobId;
  @override
  @JsonKey(name: "jobAnnouncement_id")
  final int? jobAnnouncementId;
  @override
  @JsonKey(name: "job_title")
  final String? jobTitle;
  @override
  @JsonKey(name: "branch_name")
  final String? branchName;
  @override
  @JsonKey(name: "status_name")
  final String? statusName;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "current_date")
  final DateTime? currentDate;

  @override
  String toString() {
    return 'User(appliedJobId: $appliedJobId, jobAnnouncementId: $jobAnnouncementId, jobTitle: $jobTitle, branchName: $branchName, statusName: $statusName, message: $message, currentDate: $currentDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.appliedJobId, appliedJobId) ||
                other.appliedJobId == appliedJobId) &&
            (identical(other.jobAnnouncementId, jobAnnouncementId) ||
                other.jobAnnouncementId == jobAnnouncementId) &&
            (identical(other.jobTitle, jobTitle) ||
                other.jobTitle == jobTitle) &&
            (identical(other.branchName, branchName) ||
                other.branchName == branchName) &&
            (identical(other.statusName, statusName) ||
                other.statusName == statusName) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.currentDate, currentDate) ||
                other.currentDate == currentDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, appliedJobId, jobAnnouncementId,
      jobTitle, branchName, statusName, message, currentDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {@JsonKey(name: "appliedJob_id") final int? appliedJobId,
      @JsonKey(name: "jobAnnouncement_id") final int? jobAnnouncementId,
      @JsonKey(name: "job_title") final String? jobTitle,
      @JsonKey(name: "branch_name") final String? branchName,
      @JsonKey(name: "status_name") final String? statusName,
      @JsonKey(name: "message") final String? message,
      @JsonKey(name: "current_date") final DateTime? currentDate}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  @JsonKey(name: "appliedJob_id")
  int? get appliedJobId;
  @override
  @JsonKey(name: "jobAnnouncement_id")
  int? get jobAnnouncementId;
  @override
  @JsonKey(name: "job_title")
  String? get jobTitle;
  @override
  @JsonKey(name: "branch_name")
  String? get branchName;
  @override
  @JsonKey(name: "status_name")
  String? get statusName;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "current_date")
  DateTime? get currentDate;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
