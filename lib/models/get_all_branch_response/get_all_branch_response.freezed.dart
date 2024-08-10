// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_branch_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetAllBranchResponse _$GetAllBranchResponseFromJson(Map<String, dynamic> json) {
  return _GetAllBranchResponse.fromJson(json);
}

/// @nodoc
mixin _$GetAllBranchResponse {
  @JsonKey(name: "branches")
  List<Branch>? get branches => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAllBranchResponseCopyWith<GetAllBranchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllBranchResponseCopyWith<$Res> {
  factory $GetAllBranchResponseCopyWith(GetAllBranchResponse value,
          $Res Function(GetAllBranchResponse) then) =
      _$GetAllBranchResponseCopyWithImpl<$Res, GetAllBranchResponse>;
  @useResult
  $Res call({@JsonKey(name: "branches") List<Branch>? branches});
}

/// @nodoc
class _$GetAllBranchResponseCopyWithImpl<$Res,
        $Val extends GetAllBranchResponse>
    implements $GetAllBranchResponseCopyWith<$Res> {
  _$GetAllBranchResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? branches = freezed,
  }) {
    return _then(_value.copyWith(
      branches: freezed == branches
          ? _value.branches
          : branches // ignore: cast_nullable_to_non_nullable
              as List<Branch>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAllBranchResponseImplCopyWith<$Res>
    implements $GetAllBranchResponseCopyWith<$Res> {
  factory _$$GetAllBranchResponseImplCopyWith(_$GetAllBranchResponseImpl value,
          $Res Function(_$GetAllBranchResponseImpl) then) =
      __$$GetAllBranchResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "branches") List<Branch>? branches});
}

/// @nodoc
class __$$GetAllBranchResponseImplCopyWithImpl<$Res>
    extends _$GetAllBranchResponseCopyWithImpl<$Res, _$GetAllBranchResponseImpl>
    implements _$$GetAllBranchResponseImplCopyWith<$Res> {
  __$$GetAllBranchResponseImplCopyWithImpl(_$GetAllBranchResponseImpl _value,
      $Res Function(_$GetAllBranchResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? branches = freezed,
  }) {
    return _then(_$GetAllBranchResponseImpl(
      branches: freezed == branches
          ? _value._branches
          : branches // ignore: cast_nullable_to_non_nullable
              as List<Branch>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAllBranchResponseImpl implements _GetAllBranchResponse {
  const _$GetAllBranchResponseImpl(
      {@JsonKey(name: "branches") final List<Branch>? branches})
      : _branches = branches;

  factory _$GetAllBranchResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetAllBranchResponseImplFromJson(json);

  final List<Branch>? _branches;
  @override
  @JsonKey(name: "branches")
  List<Branch>? get branches {
    final value = _branches;
    if (value == null) return null;
    if (_branches is EqualUnmodifiableListView) return _branches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetAllBranchResponse(branches: $branches)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllBranchResponseImpl &&
            const DeepCollectionEquality().equals(other._branches, _branches));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_branches));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllBranchResponseImplCopyWith<_$GetAllBranchResponseImpl>
      get copyWith =>
          __$$GetAllBranchResponseImplCopyWithImpl<_$GetAllBranchResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAllBranchResponseImplToJson(
      this,
    );
  }
}

abstract class _GetAllBranchResponse implements GetAllBranchResponse {
  const factory _GetAllBranchResponse(
          {@JsonKey(name: "branches") final List<Branch>? branches}) =
      _$GetAllBranchResponseImpl;

  factory _GetAllBranchResponse.fromJson(Map<String, dynamic> json) =
      _$GetAllBranchResponseImpl.fromJson;

  @override
  @JsonKey(name: "branches")
  List<Branch>? get branches;
  @override
  @JsonKey(ignore: true)
  _$$GetAllBranchResponseImplCopyWith<_$GetAllBranchResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Branch _$BranchFromJson(Map<String, dynamic> json) {
  return _Branch.fromJson(json);
}

/// @nodoc
mixin _$Branch {
  @JsonKey(name: "branch_id")
  int? get branchId => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "company_name")
  String? get companyName => throw _privateConstructorUsedError;
  @JsonKey(name: "address")
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: "city")
  String? get city => throw _privateConstructorUsedError;
  @JsonKey(name: "user_name")
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BranchCopyWith<Branch> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BranchCopyWith<$Res> {
  factory $BranchCopyWith(Branch value, $Res Function(Branch) then) =
      _$BranchCopyWithImpl<$Res, Branch>;
  @useResult
  $Res call(
      {@JsonKey(name: "branch_id") int? branchId,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "company_name") String? companyName,
      @JsonKey(name: "address") String? address,
      @JsonKey(name: "city") String? city,
      @JsonKey(name: "user_name") String? userName,
      @JsonKey(name: "image") String? image});
}

/// @nodoc
class _$BranchCopyWithImpl<$Res, $Val extends Branch>
    implements $BranchCopyWith<$Res> {
  _$BranchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? branchId = freezed,
    Object? name = freezed,
    Object? companyName = freezed,
    Object? address = freezed,
    Object? city = freezed,
    Object? userName = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      branchId: freezed == branchId
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BranchImplCopyWith<$Res> implements $BranchCopyWith<$Res> {
  factory _$$BranchImplCopyWith(
          _$BranchImpl value, $Res Function(_$BranchImpl) then) =
      __$$BranchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "branch_id") int? branchId,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "company_name") String? companyName,
      @JsonKey(name: "address") String? address,
      @JsonKey(name: "city") String? city,
      @JsonKey(name: "user_name") String? userName,
      @JsonKey(name: "image") String? image});
}

/// @nodoc
class __$$BranchImplCopyWithImpl<$Res>
    extends _$BranchCopyWithImpl<$Res, _$BranchImpl>
    implements _$$BranchImplCopyWith<$Res> {
  __$$BranchImplCopyWithImpl(
      _$BranchImpl _value, $Res Function(_$BranchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? branchId = freezed,
    Object? name = freezed,
    Object? companyName = freezed,
    Object? address = freezed,
    Object? city = freezed,
    Object? userName = freezed,
    Object? image = freezed,
  }) {
    return _then(_$BranchImpl(
      branchId: freezed == branchId
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BranchImpl implements _Branch {
  const _$BranchImpl(
      {@JsonKey(name: "branch_id") this.branchId,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "company_name") this.companyName,
      @JsonKey(name: "address") this.address,
      @JsonKey(name: "city") this.city,
      @JsonKey(name: "user_name") this.userName,
      @JsonKey(name: "image") this.image});

  factory _$BranchImpl.fromJson(Map<String, dynamic> json) =>
      _$$BranchImplFromJson(json);

  @override
  @JsonKey(name: "branch_id")
  final int? branchId;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "company_name")
  final String? companyName;
  @override
  @JsonKey(name: "address")
  final String? address;
  @override
  @JsonKey(name: "city")
  final String? city;
  @override
  @JsonKey(name: "user_name")
  final String? userName;
  @override
  @JsonKey(name: "image")
  final String? image;

  @override
  String toString() {
    return 'Branch(branchId: $branchId, name: $name, companyName: $companyName, address: $address, city: $city, userName: $userName, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BranchImpl &&
            (identical(other.branchId, branchId) ||
                other.branchId == branchId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, branchId, name, companyName, address, city, userName, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BranchImplCopyWith<_$BranchImpl> get copyWith =>
      __$$BranchImplCopyWithImpl<_$BranchImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BranchImplToJson(
      this,
    );
  }
}

abstract class _Branch implements Branch {
  const factory _Branch(
      {@JsonKey(name: "branch_id") final int? branchId,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "company_name") final String? companyName,
      @JsonKey(name: "address") final String? address,
      @JsonKey(name: "city") final String? city,
      @JsonKey(name: "user_name") final String? userName,
      @JsonKey(name: "image") final String? image}) = _$BranchImpl;

  factory _Branch.fromJson(Map<String, dynamic> json) = _$BranchImpl.fromJson;

  @override
  @JsonKey(name: "branch_id")
  int? get branchId;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "company_name")
  String? get companyName;
  @override
  @JsonKey(name: "address")
  String? get address;
  @override
  @JsonKey(name: "city")
  String? get city;
  @override
  @JsonKey(name: "user_name")
  String? get userName;
  @override
  @JsonKey(name: "image")
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$BranchImplCopyWith<_$BranchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
