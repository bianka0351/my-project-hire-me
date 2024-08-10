// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_skills_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetAllSkillsResponse _$GetAllSkillsResponseFromJson(Map<String, dynamic> json) {
  return _GetAllSkillsResponse.fromJson(json);
}

/// @nodoc
mixin _$GetAllSkillsResponse {
  @JsonKey(name: "skills")
  List<Skill>? get skills => throw _privateConstructorUsedError;
  @JsonKey(name: "count")
  int? get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAllSkillsResponseCopyWith<GetAllSkillsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllSkillsResponseCopyWith<$Res> {
  factory $GetAllSkillsResponseCopyWith(GetAllSkillsResponse value,
          $Res Function(GetAllSkillsResponse) then) =
      _$GetAllSkillsResponseCopyWithImpl<$Res, GetAllSkillsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "skills") List<Skill>? skills,
      @JsonKey(name: "count") int? count});
}

/// @nodoc
class _$GetAllSkillsResponseCopyWithImpl<$Res,
        $Val extends GetAllSkillsResponse>
    implements $GetAllSkillsResponseCopyWith<$Res> {
  _$GetAllSkillsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? skills = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      skills: freezed == skills
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<Skill>?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAllSkillsResponseImplCopyWith<$Res>
    implements $GetAllSkillsResponseCopyWith<$Res> {
  factory _$$GetAllSkillsResponseImplCopyWith(_$GetAllSkillsResponseImpl value,
          $Res Function(_$GetAllSkillsResponseImpl) then) =
      __$$GetAllSkillsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "skills") List<Skill>? skills,
      @JsonKey(name: "count") int? count});
}

/// @nodoc
class __$$GetAllSkillsResponseImplCopyWithImpl<$Res>
    extends _$GetAllSkillsResponseCopyWithImpl<$Res, _$GetAllSkillsResponseImpl>
    implements _$$GetAllSkillsResponseImplCopyWith<$Res> {
  __$$GetAllSkillsResponseImplCopyWithImpl(_$GetAllSkillsResponseImpl _value,
      $Res Function(_$GetAllSkillsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? skills = freezed,
    Object? count = freezed,
  }) {
    return _then(_$GetAllSkillsResponseImpl(
      skills: freezed == skills
          ? _value._skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<Skill>?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAllSkillsResponseImpl implements _GetAllSkillsResponse {
  const _$GetAllSkillsResponseImpl(
      {@JsonKey(name: "skills") final List<Skill>? skills,
      @JsonKey(name: "count") this.count})
      : _skills = skills;

  factory _$GetAllSkillsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetAllSkillsResponseImplFromJson(json);

  final List<Skill>? _skills;
  @override
  @JsonKey(name: "skills")
  List<Skill>? get skills {
    final value = _skills;
    if (value == null) return null;
    if (_skills is EqualUnmodifiableListView) return _skills;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "count")
  final int? count;

  @override
  String toString() {
    return 'GetAllSkillsResponse(skills: $skills, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllSkillsResponseImpl &&
            const DeepCollectionEquality().equals(other._skills, _skills) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_skills), count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllSkillsResponseImplCopyWith<_$GetAllSkillsResponseImpl>
      get copyWith =>
          __$$GetAllSkillsResponseImplCopyWithImpl<_$GetAllSkillsResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAllSkillsResponseImplToJson(
      this,
    );
  }
}

abstract class _GetAllSkillsResponse implements GetAllSkillsResponse {
  const factory _GetAllSkillsResponse(
      {@JsonKey(name: "skills") final List<Skill>? skills,
      @JsonKey(name: "count") final int? count}) = _$GetAllSkillsResponseImpl;

  factory _GetAllSkillsResponse.fromJson(Map<String, dynamic> json) =
      _$GetAllSkillsResponseImpl.fromJson;

  @override
  @JsonKey(name: "skills")
  List<Skill>? get skills;
  @override
  @JsonKey(name: "count")
  int? get count;
  @override
  @JsonKey(ignore: true)
  _$$GetAllSkillsResponseImplCopyWith<_$GetAllSkillsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Skill _$SkillFromJson(Map<String, dynamic> json) {
  return _Skill.fromJson(json);
}

/// @nodoc
mixin _$Skill {
  @JsonKey(name: "skill_name")
  String? get skillName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SkillCopyWith<Skill> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SkillCopyWith<$Res> {
  factory $SkillCopyWith(Skill value, $Res Function(Skill) then) =
      _$SkillCopyWithImpl<$Res, Skill>;
  @useResult
  $Res call({@JsonKey(name: "skill_name") String? skillName});
}

/// @nodoc
class _$SkillCopyWithImpl<$Res, $Val extends Skill>
    implements $SkillCopyWith<$Res> {
  _$SkillCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? skillName = freezed,
  }) {
    return _then(_value.copyWith(
      skillName: freezed == skillName
          ? _value.skillName
          : skillName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SkillImplCopyWith<$Res> implements $SkillCopyWith<$Res> {
  factory _$$SkillImplCopyWith(
          _$SkillImpl value, $Res Function(_$SkillImpl) then) =
      __$$SkillImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "skill_name") String? skillName});
}

/// @nodoc
class __$$SkillImplCopyWithImpl<$Res>
    extends _$SkillCopyWithImpl<$Res, _$SkillImpl>
    implements _$$SkillImplCopyWith<$Res> {
  __$$SkillImplCopyWithImpl(
      _$SkillImpl _value, $Res Function(_$SkillImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? skillName = freezed,
  }) {
    return _then(_$SkillImpl(
      skillName: freezed == skillName
          ? _value.skillName
          : skillName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SkillImpl implements _Skill {
  const _$SkillImpl({@JsonKey(name: "skill_name") this.skillName});

  factory _$SkillImpl.fromJson(Map<String, dynamic> json) =>
      _$$SkillImplFromJson(json);

  @override
  @JsonKey(name: "skill_name")
  final String? skillName;

  @override
  String toString() {
    return 'Skill(skillName: $skillName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SkillImpl &&
            (identical(other.skillName, skillName) ||
                other.skillName == skillName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, skillName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SkillImplCopyWith<_$SkillImpl> get copyWith =>
      __$$SkillImplCopyWithImpl<_$SkillImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SkillImplToJson(
      this,
    );
  }
}

abstract class _Skill implements Skill {
  const factory _Skill({@JsonKey(name: "skill_name") final String? skillName}) =
      _$SkillImpl;

  factory _Skill.fromJson(Map<String, dynamic> json) = _$SkillImpl.fromJson;

  @override
  @JsonKey(name: "skill_name")
  String? get skillName;
  @override
  @JsonKey(ignore: true)
  _$$SkillImplCopyWith<_$SkillImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
