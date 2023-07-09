import 'package:bloc/bloc.dart';
import 'package:cerati/common/services/api_client/api_client.dart';
import 'package:equatable/equatable.dart';

import '../../injection.dart';

class PostCubit extends Cubit<PostState> {
  PostCubit(super.initialState);
  ApiClient client = getIt<ApiClient>();

  Future<void> fetchPost() async{
    final res = await client.fetchPost();

    res.fold((post) {
      emit(LoadedPostState(post));

    }, (error) {
      emit(ErrorPostState(error.toString()));
    });


  }
}


abstract class PostState extends Equatable {
  const PostState();

  @override
  List<Object> get props => [];
}

class InitialPostState extends PostState {}

class LoadedPostState extends PostState {
  const LoadedPostState(this.post);

  final String post;

}
class ErrorPostState extends PostState {
  const ErrorPostState(this.errorMessage);

  final String errorMessage;

}
