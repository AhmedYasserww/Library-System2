import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;

  ApiService({required this.dio});

  final String baseUrl = "http://smartlibrary.runasp.net/api/";

  Future<dynamic> post({
    required String endPoint,
    required Map<String, dynamic> data,
  }) async {
    try {
      var response = await dio.post(
        "$baseUrl$endPoint", data: data,);
      return response.data;
    } on DioException catch (e) {
      if (e.response != null) {
        return e.response?.data;
      } else {
        throw Exception("Network error: ${e.message}");
      }
    }
  }
}



//   Future<dynamic> delete({
//     required String endPoint,
//     required Map<String, dynamic> data,
//   }) async {
//     try {
//       final token = await AppPreferences.getToken();
//
//       final response = await dio.delete(
//         "$baseUrl$endPoint",
//         data: data,
//         options: Options(
//           headers: {
//             "Content-Type": "application/json",
//             if (token != null) "Authorization": "Bearer $token",
//           },
//         ),
//       );
//       return response.data;
//     } on DioException catch (e) {
//       if (e.response != null) {
//         return e.response?.data;
//       } else {
//         throw Exception("Network error: ${e.message}");
//       }
//     } catch (e) {
//       throw Exception("Unexpected error: $e");
//     }
//   }
// }
