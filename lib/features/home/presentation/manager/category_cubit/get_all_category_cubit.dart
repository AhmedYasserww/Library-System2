import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/models/category_model.dart';
import '../../../data/repos/category_repo/category_repo.dart';

part 'get_all_category_state.dart';

class GetAllCategoryCubit extends Cubit<GetAllCategoryState> {
  GetAllCategoryCubit(this.categoryRepo) : super(GetAllCategoryInitial());

  final CategoryRepo categoryRepo;
  Future<void> fetchCategories() async {
    emit(GetAllCategoryLoading());

    final result = await categoryRepo.fetchCategories();

    result.fold(
          (failure) => emit(GetAllCategoryFailure(errorMessage: failure.errorMessage)),
          (categories) => emit(GetAllCategorySuccess(categories: categories)),
    );
  }
}

