import 'package:bookly_app/feature/home/presentation/manger/newest_book_cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repo/home_repo.dart';

class NewestCubit extends Cubit<NewestBookStates> {
  NewestCubit(this.homeRepo) : super(NewestInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks() async {
    emit(NewestLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold((failure) {
      emit(NewestFailure(failure.errMessage));
    }, (books) {
      emit(NewestSuccess(books));
    });
  }
}
