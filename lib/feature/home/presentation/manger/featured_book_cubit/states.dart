import 'package:bookly_app/feature/home/data/models/book_model/book_model.dart';

abstract class FeaturedStates {}

class FeaturedInitial extends FeaturedStates {}

class FeaturedSucsess extends FeaturedStates {
  final List<BookModel> bookModel;

  FeaturedSucsess(this.bookModel);
}

class FeaturedLoading extends FeaturedStates {}

class FeaturedFailure extends FeaturedStates {
  final String errMessage;

  FeaturedFailure(this.errMessage);
}
