import 'package:bookly_app/core/error/errors.dart';
import 'package:bookly_app/feature/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<AppFailure, List<BookModel>>> fetchNewestBooks();
  Future<Either<AppFailure, List<BookModel>>> fetchFeaturedBooks();
}
