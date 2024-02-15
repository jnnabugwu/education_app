import 'package:dartz/dartz.dart';
import 'package:education_app/src/auth/usecases/forgot_password.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'auth_repo_test.mock.dart';

void main() {
  late MockAuthRepo repo;
  late ForgotPassword usecase;

  setUp(() {
    repo = MockAuthRepo();
    usecase = ForgotPassword(repo);
  });

  test(
      //arrange
      'should call the [AuthRepo.forgotPassword]', () async {
    when(() => repo.forgotPassword(any())).thenAnswer(
      (_) async => const Right(null),
    );

    //act
    final result = await usecase('email');
    expect(result, equals(const Right<dynamic, void>(null)));

    verify(() => repo.forgotPassword('email')).called(1);
    verifyNoMoreInteractions(repo);
  });
}
