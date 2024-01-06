class SignUpWithEmailAndPasswordFailure {
  final String message;

  const SignUpWithEmailAndPasswordFailure([this.message = "An Unknown error occurred"]);

  factory SignUpWithEmailAndPasswordFailure.code(String code){
    switch (code) {
      case "email-already-in-use":
        return const SignUpWithEmailAndPasswordFailure("Email already in use");
      case "invalid-email":
        return const SignUpWithEmailAndPasswordFailure("Invalid email");
      case "weak-password":
        return const SignUpWithEmailAndPasswordFailure("Weak password");
      default:
        return const SignUpWithEmailAndPasswordFailure("An Unknown error occurred");
    }
  }

}
