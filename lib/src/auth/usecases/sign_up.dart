import 'package:education_app/core/usecases/usecases.dart';
import 'package:education_app/core/utils/typedef.dart';
import 'package:education_app/src/auth/domain/repo/auth_repo.dart';

class SignUp extends UseCaseWithParams<void, SignUpParams> {
  const SignUp(this._repo);
  final AuthRepo _repo;
  @override
  ResultFuture<void> call(SignUpParams params) => _repo.signUp(
      email: params.email,
      fullName: params.fullName,
      password: params.password);
}

class SignUpParams {
  const SignUpParams({
    required this.email,
    required this.fullName,
    required this.password,
  });
  const SignUpParams.empty() : this(email: '', password: '', fullName: '');
  final String email;
  final String fullName;
  final String password;
}
