import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart' show immutable;
import 'package:instagram_clone/state/comments/models/comment.dart';
import 'package:instagram_clone/state/posts/models/post.dart';

@immutable
class PostWithComments extends Equatable {
  final Post post;
  final Iterable<Comment> comments;

  const PostWithComments({
    required this.post,
    required this.comments,
  });

  @override
  List<Object?> get props => [post, comments];
}
