import 'dart:collection' show MapView;

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart' show immutable;
import 'package:instagram_clone/state/constants/firebase_field_name.dart';
import 'package:instagram_clone/state/posts/typedefs/user_id.dart';

@immutable
class UserInfoModel extends MapView<String, String?> with EquatableMixin {
  final UserId userId;
  final String displayName;
  final String? email;

  UserInfoModel({required this.userId, required this.displayName, required this.email})
      : super(
          {
            FirebaseFieldName.userId: userId,
            FirebaseFieldName.displayName: displayName,
            FirebaseFieldName.email: email,
          },
        );

  UserInfoModel.fromJson(
    Map<String, dynamic> json, {
    required UserId userId,
  }) : this(
          userId: userId,
          displayName: json[FirebaseFieldName.displayName] ?? '',
          email: json[FirebaseFieldName.email],
        );

  @override
  List<Object?> get props => [userId, displayName, email];
}
