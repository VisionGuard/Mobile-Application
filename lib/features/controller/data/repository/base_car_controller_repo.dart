import 'package:dartz/dartz.dart';

abstract class BaseCarControllerRepo {
  Future<Either<String, dynamic>> carMovementDirection({required String direction});
}
