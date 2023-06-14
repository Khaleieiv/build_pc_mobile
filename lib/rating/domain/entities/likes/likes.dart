import 'package:build_pc_mobile/auth/domain/entities/user/user.dart';
import 'package:build_pc_mobile/build_pc/domain/entities/build_pc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'likes.freezed.dart';

part 'likes.g.dart';

@freezed
class Likes with _$Likes {
  const factory Likes({
    required int id,
    required BuildPc buildPc,
    required User user,
  }) = _Likes;

  factory Likes.fromJson(Map<String, dynamic> json) => _$LikesFromJson(json);
}
