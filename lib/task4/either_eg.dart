import 'package:dartz/dartz.dart';

class Arithmetic {
  final int first;
  final int second;

  Arithmetic({required this.first, required this.second});

  int sub() {
    return first - second;
  }

  // using Either
  Either<String, int> add() {
    try {
      return Right(first + second);
    } catch (e) {
      return Left(e.toString());
    }
  }

  Either<String, int> div() {
    try {
      return Right(first ~/ second);
    } catch (e) {
      return Left(e.toString());
    }
  }
}

void main() {
  var arithmetic = Arithmetic(first: 10, second: 5);
  print(arithmetic.sub());
  print(arithmetic.add());

  var result = arithmetic.add();
  result.fold(
    (left) => print("Error: $left"),
    (right) => print("Result: $right"),
  );
  var result2 = arithmetic.div();
  result2.fold(
    (left) => print("Error: $left"),
    (right) => print("Result: $right"),
  );
}
