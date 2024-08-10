// To parse this JSON data, do
//
//     final getAllBranchResponse = getAllBranchResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_all_branch_response.freezed.dart';
part 'get_all_branch_response.g.dart';

GetAllBranchResponse getAllBranchResponseFromJson(String str) => GetAllBranchResponse.fromJson(json.decode(str));

String getAllBranchResponseToJson(GetAllBranchResponse data) => json.encode(data.toJson());

@freezed
class GetAllBranchResponse with _$GetAllBranchResponse {
  const factory GetAllBranchResponse({
    @JsonKey(name: "branches")
    List<Branch>? branches,
  }) = _GetAllBranchResponse;

  factory GetAllBranchResponse.fromJson(Map<String, dynamic> json) => _$GetAllBranchResponseFromJson(json);
}

@freezed
class Branch with _$Branch {
  const factory Branch({
    @JsonKey(name: "branch_id")
    int? branchId,
    @JsonKey(name: "name")
    String? name,
    @JsonKey(name: "company_name")
    String? companyName,
    @JsonKey(name: "address")
    String? address,
    @JsonKey(name: "city")
    String? city,
    @JsonKey(name: "user_name")
    String? userName,
    @JsonKey(name: "image")
    String? image,
  }) = _Branch;

  factory Branch.fromJson(Map<String, dynamic> json) => _$BranchFromJson(json);
}
