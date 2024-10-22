import 'package:bookly_app/feature/home/data/models/book_model/book_model.dart';

abstract class NewestBookStates {}

class NewestInitial extends NewestBookStates {}

class NewestSuccess extends NewestBookStates {
  final List<BookModel> bookModel;

  NewestSuccess(this.bookModel);
}

class NewestLoading extends NewestBookStates {}

class NewestFailure extends NewestBookStates {
  final String errMessage;

  NewestFailure(this.errMessage);
}
