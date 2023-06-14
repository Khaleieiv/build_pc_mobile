import 'package:build_pc_mobile/build_pc/domain/entities/build_pc.dart';
import 'package:build_pc_mobile/rating/domain/entities/likes/likes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rating.freezed.dart';

part 'rating.g.dart';

@freezed
class Rating with _$Rating {
  const factory Rating({
    required int id,
    required List<Likes>? like,
    required BuildPc buildPc,
  }) = _Rating;

  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);
}
