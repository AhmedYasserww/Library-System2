import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:library_system4/features/borrow/data/repos/borrow_book_repo_imp.dart';
import 'package:library_system4/features/home/data/repos/book_repo/book_repo_imp.dart';
import 'package:library_system4/features/home/data/repos/category_repo/category_repo_imp.dart';

import '../../features/auth/data/repos/auth_repo/auth_repo_imp.dart';
import '../services/api_service.dart';


final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(dio: Dio()));
  getIt.registerSingleton<AuthRepoImpl>(AuthRepoImpl(apiService:getIt.get<ApiService>(),));
  getIt.registerSingleton<CategoryRepoImpl>(CategoryRepoImpl(apiService:getIt.get<ApiService>(),));
   getIt.registerSingleton<BookRepoImpl>(BookRepoImpl(apiService:getIt.get<ApiService>(),));
  getIt.registerSingleton<BorrowBookRepoImpl>(BorrowBookRepoImpl(apiService:getIt.get<ApiService>(),));


}

