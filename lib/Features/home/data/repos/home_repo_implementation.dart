import 'package:bookly/Core/errors/failures.dart';
import 'package:bookly/Core/utils/api_service.dart';
import 'package:bookly/Features/home/data/models/book_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
          endPoints:
              'volumes?Filtering=free-ebooks&Sorting=newest&q=subject:programming');

      List<BookModel> book =[];
      for (var item in data['items']){
        book.add(BookModel.fromJson(item));
      }

      return Right(book);
    } on Exception catch (e) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
