// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_detail_model.freezed.dart';
part 'user_detail_model.g.dart';

@freezed
class UserDetailModel with _$UserDetailModel {
  const factory UserDetailModel({
    @JsonKey(name: 'name') required String? name,
    @JsonKey(name: 'company') required String? company,
    @JsonKey(name: 'location') required String? location,
    @JsonKey(name: 'avatar_url') required String? avatarUrl,
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'login') required String login,
  }) = _UserDetailModel;

  factory UserDetailModel.fromJson(Map<String, Object?> json) =>
      _$UserDetailModelFromJson(json);
}
