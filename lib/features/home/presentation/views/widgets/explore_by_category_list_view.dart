import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:library_system4/core/widgets/custom_explore_by_category.dart';
import 'package:library_system4/features/home/presentation/manager/category_cubit/get_all_category_cubit.dart';
class ExploreByCategoryListView extends StatelessWidget {
  const ExploreByCategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
      return BlocBuilder<GetAllCategoryCubit,GetAllCategoryState>(
        builder: (context , state) {
          if(state is GetAllCategoryLoading){
            return const Center(child: CircularProgressIndicator(),);
          }
          else if(state is GetAllCategoryFailure){
            return Center(child: Text(state.errorMessage),);
          }
          else if(state is GetAllCategorySuccess){
            return SizedBox(
              height: 52,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: state.categories.length,
                  itemBuilder:(context , i){
                    return  CustomExploreByCategory(
                      categoryModel: state.categories[i],
                    );
                  }
              ),
            );
          }
          else{
            return Text("unExpected error occured try later ");
          }

        }
      );
  }
}
