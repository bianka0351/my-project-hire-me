// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_branch_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAllBranchResponseImpl _$$GetAllBranchResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetAllBranchResponseImpl(
      branches: (json['branches'] as List<dynamic>?)
          ?.map((e) => Branch.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetAllBranchResponseImplToJson(
        _$GetAllBranchResponseImpl instance) =>
    <String, dynamic>{
      'branches': instance.branches,
    };

_$BranchImpl _$$BranchImplFromJson(Map<String, dynamic> json) => _$BranchImpl(
      branchId: (json['branch_id'] as num?)?.toInt(),
      name: json['name'] as String?,
      companyName: json['company_name'] as String?,
      address: json['address'] as String?,
      city: json['city'] as String?,
      userName: json['user_name'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$BranchImplToJson(_$BranchImpl instance) =>
    <String, dynamic>{
      'branch_id': instance.branchId,
      'name': instance.name,
      'company_name': instance.companyName,
      'address': instance.address,
      'city': instance.city,
      'user_name': instance.userName,
      'image': instance.image,
    };
