import 'package:flutter/foundation.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/infrastructure/repositories/video_post_repository_impl.dart';

class DiscoverProvider extends ChangeNotifier {

  final VideoPostRepositoryImpl videosRepositoryImpl;

  bool initialLoading = true;
  List<VideoPost> videos = [];

  DiscoverProvider({required this.videosRepositoryImpl});

  Future<void> loadNextPage() async{

    final newVideos = await videosRepositoryImpl.getTrendingVideosByPage(1);

    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}