import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:news_app/features/daily_news/data/data_sources/remote/news_api_service.dart';
import 'package:news_app/features/daily_news/data/repository/article_repository.dart';
import 'package:news_app/features/daily_news/domain/repository/article_repository.dart';
import 'package:news_app/features/daily_news/domain/usecases/get_article.dart';
import 'package:news_app/features/daily_news/presentation/bloc/article/remote/remote_article_bloc.dart';

final sl = GetIt.instance;

Future<void> initializeDepedencies() async {
  //Dio
  sl.registerSingleton<Dio>(Dio());

  //Depedencies
  sl.registerSingleton<NewsApiService>(NewsApiService(sl()));
  sl.registerSingleton<ArticleRepository>(ArticleRepositoryImpl(sl()));

  //usecases
  sl.registerSingleton<GetArticleUseCase>(GetArticleUseCase(sl()));
  
  //Blocs
  sl.registerFactory<RemoteArticleBloc>(() => RemoteArticleBloc(sl()));
}
