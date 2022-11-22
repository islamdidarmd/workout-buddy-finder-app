import 'package:workout_buddy_finder/data/network/networking_client.dart';
import 'package:workout_buddy_finder/data/repository/datasource/github_remote_data_source.dart';
import 'package:workout_buddy_finder/data/repository/github_repository_impl.dart';
import 'package:workout_buddy_finder/domain/domain.dart';
import 'package:workout_buddy_finder/ui/home/home_cubit.dart';
import 'package:get_it/get_it.dart';

late GetIt sl;

void setUpDependencies({required GetIt slInstance}) {
  sl = slInstance;

  sl.registerSingleton<NetworkingClient>(NetworkingClientImpl());
  sl.registerFactory<GithubRemoteDataSource>(
      () => GithubRemoteDataSourceImpl(networkingClient: sl()));
  sl.registerFactory<GithubRepository>(
      () => GithubRepositoryImpl(dataSource: sl()));
  sl.registerFactory<FindRepoByKeyUseCase>(
      () => FindRepoByKeyUseCase(repository: sl()));
  sl.registerFactory<HomeCubit>(() => HomeCubit(sl()));
}
