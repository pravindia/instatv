import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:instatv/config/constants.dart';
import 'package:instatv/models/shows.dart';

class ApiService {
  Future<Either<List<Shows>, APIError>> getAlShows() async {
    try {
      var response = await Dio()
          .get('${appBaseURL}schedule/web?date=2022-12-01&country=US');

      final List<Shows> list = [];

      return Left(list);
    } catch (e) {
      return Right(APIError());
    }
  }
}

class APIError implements Exception {}
