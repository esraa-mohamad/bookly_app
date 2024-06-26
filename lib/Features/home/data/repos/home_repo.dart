import 'package:bookly/Core/errors/failures.dart';
import 'package:bookly/Features/home/data/models/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either< Failure, List<BookModel>>> fetchNewestBooks(String categories);

  Future<Either< Failure, List<BookModel>>> fetchFeaturedBooks();

  Future<Either< Failure, List<BookModel>>> fetchSimilarBook({required String category});
}
