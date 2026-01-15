// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../../manager/profile_cubit.dart';
// import 'borrowed_book_item.dart';
//
// class BorrowedBooksList extends StatelessWidget {
//   const BorrowedBooksList({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<ProfileCubit, ProfileState>(
//       builder: (context, state) {
//         if (state is ProfileSuccess) {
//           final borrowedBooks = state.userProfileModel.borrowHistory;
//
//           return SizedBox(
//             height: 170,
//             child: ListView.separated(
//               scrollDirection: Axis.horizontal,
//               itemCount: borrowedBooks.length,
//               separatorBuilder: (_, __) => const SizedBox(width: 12),
//               itemBuilder: (context, index) =>
//                   BorrowedBookItem(model: borrowedBooks[index]),
//             ),
//           );
//         }
//
//         return const SizedBox(height: 170, child: Center(child: CircularProgressIndicator()));
//       },
//     );
//   }
// }
