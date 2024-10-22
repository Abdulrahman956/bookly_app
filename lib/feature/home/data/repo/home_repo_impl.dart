import 'package:bookly_app/core/error/errors.dart';
import 'package:bookly_app/core/utils/api_service.dart';

import 'package:bookly_app/feature/home/data/models/book_model/book_model.dart';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'home_repo.dart';

class HomeServise implements HomeRepo {
  ApiServise apiServise;
  HomeServise(this.apiServise);
  @override
  Future<Either<AppFailure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiServise.get(
        endPoint:
            'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science',
      );
      List<BookModel> books = [];
      for (var element in data['items']) {
        books.add(BookModel.fromJson(element));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<AppFailure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiServise.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=subject:Programming',
      );
      List<BookModel> books = [];
      for (var element in data['items']) {
        books.add(BookModel.fromJson(element));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
}
