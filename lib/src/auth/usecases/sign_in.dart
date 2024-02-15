import 'package:education_app/core/usecases/usecases.dart';
import 'package:education_app/src/auth/domain/repo/auth_repo.dart';

import 'package:education_app/core/utils/typedef.dart';
import 'package:education_app/src/auth/domain/entities/user.dart';

class SignIn extends UseCaseWithParams<LocalUser, SignInParams> {
  const SignIn(this._repo);

  final AuthRepo _repo;

  @override
  ResultFuture<LocalUser> call(SignInParams params) => _repo.signIn(
        email: params.email,
        password: params.password,
      );
}

class SignInParams {
  const SignInParams({
    required this.email,
    required this.password,
  });

  const SignInParams.empty() : this(email: '', password: '');
  final String email;
  final String password;

  @override
  List<String> get props => [email, password];
}
