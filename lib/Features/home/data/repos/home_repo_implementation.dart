import 'package:bookly/Core/errors/failures.dart';
import 'package:bookly/Core/utils/api_service.dart';
import 'package:bookly/Features/home/data/models/book_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks(String categories) async {
    try {
      var data = await apiService.get(
          endPoints:
              'volumes?Filtering=free-ebooks&Sorting=newest&q=subject:$categories');

      List<BookModel> book =[];
      for (var item in data['items']){
        book.add(BookModel.fromJson(item));
      }

      return Right(book);
    } on Exception catch (e) {
      if(e is DioException){
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async{
    try {
      var data = await apiService.get(
          endPoints:
          'volumes?Filtering=free-ebooks&q=subject:programming');

      List<BookModel> book =[];
      for (var item in data['items']){
        book.add(BookModel.fromJson(item));
      }

      return Right(book);
    } on Exception catch (e) {
      if(e is DioException){
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBook({required String category}) async{
    try {
      var data = await apiService.get(
          endPoints:
          'volumes?Filtering=free-ebooks&sorting=relevance&q=subject:$category');

      List<BookModel> book =[];
      for (var item in data['items']){
        book.add(BookModel.fromJson(item));
      }

      return Right(book);
    } on Exception catch (e) {
      if(e is DioException){
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
