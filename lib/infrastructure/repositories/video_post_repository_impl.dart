
import 'package:toktik/domain/datasources/video_post_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/repositories/video_post_repository.dart';

 class VideoPostRepositoryImpl extends VideoPostRepository{

  final VideoPostDatasource videosDatasource;

  VideoPostRepositoryImpl({required this.videosDatasource});

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser( String usedId){
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage( int page ) {
    return videosDatasource.getTrendingVideosByPage(page);
  }

}