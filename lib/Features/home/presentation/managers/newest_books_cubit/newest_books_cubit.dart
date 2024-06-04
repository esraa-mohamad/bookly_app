import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book_model.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchNewestBook(String categories) async {
    var result = await homeRepo.fetchNewestBooks(categories);
    emit(NewestBooksLoading());
    result.fold((failure) {
     emit(NewestBooksFailure(failure.errorMessage));
    },(books) {
      emit(NewestBooksSuccess(books));
    }
    );
  }
}
