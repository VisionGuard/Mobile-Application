import 'package:crazycar/core/network/remote/dio_helper/dio_helper.dart';
import 'package:crazycar/core/network/remote/end_points.dart';
import 'package:crazycar/features/qr_code/data/repository/base_car_options_repo.dart';
import 'package:dartz/dartz.dart';


class CarOptionsRepo extends BaseCarOptionsRepo {
  @override
  Future<Either<String, dynamic>> changeCarControllerOptions({required String controller}) async {
    try {
      var response = await DioHelper.postdata(
          endPoint: EndPoints.setCarOption,
          data: {
            'opt':controller
          }
         );
       print(response.data);
        return Right(response.data);
     
    } catch (error) {
      print(error);
      return Left('Error');
    }
  }
}