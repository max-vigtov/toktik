
import 'package:toktik/domain/datasources/video_post_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/shared/data/local_video_post.dart';
import '../models/local_video_model.dart';

class LocalVideoDatasource extends VideoPostDatasource{
  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async{

    await Future.delayed( const Duration(seconds: 1) );

    final List<VideoPost> newVideos = videoPosts.map(
      (video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
      .toList();

    return newVideos;      
  }

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String usedId) async{
      throw UnimplementedError();
  }
}