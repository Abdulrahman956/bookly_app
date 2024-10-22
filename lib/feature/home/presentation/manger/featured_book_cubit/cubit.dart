import 'package:bookly_app/feature/home/data/repo/home_repo.dart';
import 'package:bookly_app/feature/home/presentation/manger/featured_book_cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedCubit extends Cubit<FeaturedStates> {
  FeaturedCubit(this.homeRepo) : super(FeaturedInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(FeaturedFailure(failure.errMessage));
    }, (books) {
      emit(FeaturedSuccess(books));
    });
  }
}
