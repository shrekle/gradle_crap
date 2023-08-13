import 'package:fpdart/fpdart.dart';
import 'package:gradle_crap/core/failure.dart';

// typedef package is used to handle errors, so instead of just using try/catch block

typedef FutureEither<T> = Future<Either<Failure, T>>;

// Future<Either<String, UserModel>>, this is how you would have to write each
// class you want to specify, if you didnt make generic class, since all the
// FutureEither will have a failure, you made a class that you can always use,
// the only thing that will change is the success class, and thats why its a
// generic T

typedef FutureVoid = FutureEither<void>;
//this one your using the typedef you made earlier, which will always return a 
//failure custom class you created, but in the success case it will not return 
// anything, ergo void