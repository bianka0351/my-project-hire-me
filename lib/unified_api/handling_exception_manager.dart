import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:hireme/unified_api/exceptions.dart';

import 'failures.dart';

mixin HandlingExceptionManager {
  Future<Either<Failure, T>> wrapHandling<T>({
    required Future<Right<Failure, T>> Function() tryCall,
    Future<T?> Function()? tryCallLocal,
  }) async {
    try {
      final right = await tryCall();
      return right;
    } on ServerException catch (e, s) {
      print(e);
      print(s);
      return Left(ServerFailure(message: e.message));
    } catch (e, s) {
      print(e);
      print(s);
      return Left(ServerFailure(message: ".message"));
    }
  }
}
