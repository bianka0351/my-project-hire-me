// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_suitable_job_announcements_for_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetSuitableJobAnnouncementsForUser _$GetSuitableJobAnnouncementsForUserFromJson(
    Map<String, dynamic> json) {
  return _GetSuitableJobAnnouncementsForUser.fromJson(json);
}

/// @nodoc
mixin _$GetSuitableJobAnnouncementsForUser {
  @JsonKey(name: "length")
  String? get length => throw _privateConstructorUsedError;
  @JsonKey(name: "jobs")
  List<Job>? get jobs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetSuitableJobAnnouncementsForUserCopyWith<
          GetSuitableJobAnnouncementsForUser>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetSuitableJobAnnouncementsForUserCopyWith<$Res> {
  factory $GetSuitableJobAnnouncementsForUserCopyWith(
          GetSuitableJobAnnouncementsForUser value,
          $Res Function(GetSuitableJobAnnouncementsForUser) then) =
      _$GetSuitableJobAnnouncementsForUserCopyWithImpl<$Res,
          GetSuitableJobAnnouncementsForUser>;
  @useResult
  $Res call(
      {@JsonKey(name: "length") String? length,
      @JsonKey(name: "jobs") List<Job>? jobs});
}

/// @nodoc
class _$GetSuitableJobAnnouncementsForUserCopyWithImpl<$Res,
        $Val extends GetSuitableJobAnnouncementsForUser>
    implements $GetSuitableJobAnnouncementsForUserCopyWith<$Res> {
  _$GetSuitableJobAnnouncementsForUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? length = freezed,
    Object? jobs = freezed,
  }) {
    return _then(_value.copyWith(
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as String?,
      jobs: freezed == jobs
          ? _value.jobs
          : jobs // ignore: cast_nullable_to_non_nullable
              as List<Job>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetSuitableJobAnnouncementsForUserImplCopyWith<$Res>
    implements $GetSuitableJobAnnouncementsForUserCopyWith<$Res> {
  factory _$$GetSuitableJobAnnouncementsForUserImplCopyWith(
          _$GetSuitableJobAnnouncementsForUserImpl value,
          $Res Function(_$GetSuitableJobAnnouncementsForUserImpl) then) =
      __$$GetSuitableJobAnnouncementsForUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "length") String? length,
      @JsonKey(name: "jobs") List<Job>? jobs});
}

/// @nodoc
class __$$GetSuitableJobAnnouncementsForUserImplCopyWithImpl<$Res>
    extends _$GetSuitableJobAnnouncementsForUserCopyWithImpl<$Res,
        _$GetSuitableJobAnnouncementsForUserImpl>
    implements _$$GetSuitableJobAnnouncementsForUserImplCopyWith<$Res> {
  __$$GetSuitableJobAnnouncementsForUserImplCopyWithImpl(
      _$GetSuitableJobAnnouncementsForUserImpl _value,
      $Res Function(_$GetSuitableJobAnnouncementsForUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? length = freezed,
    Object? jobs = freezed,
  }) {
    return _then(_$GetSuitableJobAnnouncementsForUserImpl(
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as String?,
      jobs: freezed == jobs
          ? _value._jobs
          : jobs // ignore: cast_nullable_to_non_nullable
              as List<Job>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetSuitableJobAnnouncementsForUserImpl
    implements _GetSuitableJobAnnouncementsForUser {
  const _$GetSuitableJobAnnouncementsForUserImpl(
      {@JsonKey(name: "length") this.length,
      @JsonKey(name: "jobs") final List<Job>? jobs})
      : _jobs = jobs;

  factory _$GetSuitableJobAnnouncementsForUserImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetSuitableJobAnnouncementsForUserImplFromJson(json);

  @override
  @JsonKey(name: "length")
  final String? length;
  final List<Job>? _jobs;
  @override
  @JsonKey(name: "jobs")
  List<Job>? get jobs {
    final value = _jobs;
    if (value == null) return null;
    if (_jobs is EqualUnmodifiableListView) return _jobs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetSuitableJobAnnouncementsForUser(length: $length, jobs: $jobs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSuitableJobAnnouncementsForUserImpl &&
            (identical(other.length, length) || other.length == length) &&
            const DeepCollectionEquality().equals(other._jobs, _jobs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, length, const DeepCollectionEquality().hash(_jobs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSuitableJobAnnouncementsForUserImplCopyWith<
          _$GetSuitableJobAnnouncementsForUserImpl>
      get copyWith => __$$GetSuitableJobAnnouncementsForUserImplCopyWithImpl<
          _$GetSuitableJobAnnouncementsForUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetSuitableJobAnnouncementsForUserImplToJson(
      this,
    );
  }
}

abstract class _GetSuitableJobAnnouncementsForUser
    implements GetSuitableJobAnnouncementsForUser {
  const factory _GetSuitableJobAnnouncementsForUser(
          {@JsonKey(name: "length") final String? length,
          @JsonKey(name: "jobs") final List<Job>? jobs}) =
      _$GetSuitableJobAnnouncementsForUserImpl;

  factory _GetSuitableJobAnnouncementsForUser.fromJson(
          Map<String, dynamic> json) =
      _$GetSuitableJobAnnouncementsForUserImpl.fromJson;

  @override
  @JsonKey(name: "length")
  String? get length;
  @override
  @JsonKey(name: "jobs")
  List<Job>? get jobs;
  @override
  @JsonKey(ignore: true)
  _$$GetSuitableJobAnnouncementsForUserImplCopyWith<
          _$GetSuitableJobAnnouncementsForUserImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Job _$JobFromJson(Map<String, dynamic> json) {
  return _Job.fromJson(json);
}

/// @nodoc
mixin _$Job {
  @JsonKey(name: "jobAnnouncement_id")
  String? get jobAnnouncementId => throw _privateConstructorUsedError;
  @JsonKey(name: "job_title")
  String? get jobTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "branch")
  String? get branch => throw _privateConstructorUsedError;
  @JsonKey(name: "experience")
  String? get experience => throw _privateConstructorUsedError;
  @JsonKey(name: "city")
  String? get city => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "user_points")
  String? get userPoints => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobCopyWith<Job> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobCopyWith<$Res> {
  factory $JobCopyWith(Job value, $Res Function(Job) then) =
      _$JobCopyWithImpl<$Res, Job>;
  @useResult
  $Res call(
      {@JsonKey(name: "jobAnnouncement_id") String? jobAnnouncementId,
      @JsonKey(name: "job_title") String? jobTitle,
      @JsonKey(name: "branch") String? branch,
      @JsonKey(name: "experience") String? experience,
      @JsonKey(name: "city") String? city,
      @JsonKey(name: "createdAt") String? createdAt,
      @JsonKey(name: "user_points") String? userPoints});
}

/// @nodoc
class _$JobCopyWithImpl<$Res, $Val extends Job> implements $JobCopyWith<$Res> {
  _$JobCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobAnnouncementId = freezed,
    Object? jobTitle = freezed,
    Object? branch = freezed,
    Object? experience = freezed,
    Object? city = freezed,
    Object? createdAt = freezed,
    Object? userPoints = freezed,
  }) {
    return _then(_value.copyWith(
      jobAnnouncementId: freezed == jobAnnouncementId
          ? _value.jobAnnouncementId
          : jobAnnouncementId // ignore: cast_nullable_to_non_nullable
              as String?,
      jobTitle: freezed == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      branch: freezed == branch
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as String?,
      experience: freezed == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      userPoints: freezed == userPoints
          ? _value.userPoints
          : userPoints // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobImplCopyWith<$Res> implements $JobCopyWith<$Res> {
  factory _$$JobImplCopyWith(_$JobImpl value, $Res Function(_$JobImpl) then) =
      __$$JobImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "jobAnnouncement_id") String? jobAnnouncementId,
      @JsonKey(name: "job_title") String? jobTitle,
      @JsonKey(name: "branch") String? branch,
      @JsonKey(name: "experience") String? experience,
      @JsonKey(name: "city") String? city,
      @JsonKey(name: "createdAt") String? createdAt,
      @JsonKey(name: "user_points") String? userPoints});
}

/// @nodoc
class __$$JobImplCopyWithImpl<$Res> extends _$JobCopyWithImpl<$Res, _$JobImpl>
    implements _$$JobImplCopyWith<$Res> {
  __$$JobImplCopyWithImpl(_$JobImpl _value, $Res Function(_$JobImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobAnnouncementId = freezed,
    Object? jobTitle = freezed,
    Object? branch = freezed,
    Object? experience = freezed,
    Object? city = freezed,
    Object? createdAt = freezed,
    Object? userPoints = freezed,
  }) {
    return _then(_$JobImpl(
      jobAnnouncementId: freezed == jobAnnouncementId
          ? _value.jobAnnouncementId
          : jobAnnouncementId // ignore: cast_nullable_to_non_nullable
              as String?,
      jobTitle: freezed == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      branch: freezed == branch
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as String?,
      experience: freezed == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      userPoints: freezed == userPoints
          ? _value.userPoints
          : userPoints // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobImpl implements _Job {
  const _$JobImpl(
      {@JsonKey(name: "jobAnnouncement_id") this.jobAnnouncementId,
      @JsonKey(name: "job_title") this.jobTitle,
      @JsonKey(name: "branch") this.branch,
      @JsonKey(name: "experience") this.experience,
      @JsonKey(name: "city") this.city,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "user_points") this.userPoints});

  factory _$JobImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobImplFromJson(json);

  @override
  @JsonKey(name: "jobAnnouncement_id")
  final String? jobAnnouncementId;
  @override
  @JsonKey(name: "job_title")
  final String? jobTitle;
  @override
  @JsonKey(name: "branch")
  final String? branch;
  @override
  @JsonKey(name: "experience")
  final String? experience;
  @override
  @JsonKey(name: "city")
  final String? city;
  @override
  @JsonKey(name: "createdAt")
  final String? createdAt;
  @override
  @JsonKey(name: "user_points")
  final String? userPoints;

  @override
  String toString() {
    return 'Job(jobAnnouncementId: $jobAnnouncementId, jobTitle: $jobTitle, branch: $branch, experience: $experience, city: $city, createdAt: $createdAt, userPoints: $userPoints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobImpl &&
            (identical(other.jobAnnouncementId, jobAnnouncementId) ||
                other.jobAnnouncementId == jobAnnouncementId) &&
            (identical(other.jobTitle, jobTitle) ||
                other.jobTitle == jobTitle) &&
            (identical(other.branch, branch) || other.branch == branch) &&
            (identical(other.experience, experience) ||
                other.experience == experience) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.userPoints, userPoints) ||
                other.userPoints == userPoints));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, jobAnnouncementId, jobTitle,
      branch, experience, city, createdAt, userPoints);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JobImplCopyWith<_$JobImpl> get copyWith =>
      __$$JobImplCopyWithImpl<_$JobImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobImplToJson(
      this,
    );
  }
}

abstract class _Job implements Job {
  const factory _Job(
      {@JsonKey(name: "jobAnnouncement_id") final String? jobAnnouncementId,
      @JsonKey(name: "job_title") final String? jobTitle,
      @JsonKey(name: "branch") final String? branch,
      @JsonKey(name: "experience") final String? experience,
      @JsonKey(name: "city") final String? city,
      @JsonKey(name: "createdAt") final String? createdAt,
      @JsonKey(name: "user_points") final String? userPoints}) = _$JobImpl;

  factory _Job.fromJson(Map<String, dynamic> json) = _$JobImpl.fromJson;

  @override
  @JsonKey(name: "jobAnnouncement_id")
  String? get jobAnnouncementId;
  @override
  @JsonKey(name: "job_title")
  String? get jobTitle;
  @override
  @JsonKey(name: "branch")
  String? get branch;
  @override
  @JsonKey(name: "experience")
  String? get experience;
  @override
  @JsonKey(name: "city")
  String? get city;
  @override
  @JsonKey(name: "createdAt")
  String? get createdAt;
  @override
  @JsonKey(name: "user_points")
  String? get userPoints;
  @override
  @JsonKey(ignore: true)
  _$$JobImplCopyWith<_$JobImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
