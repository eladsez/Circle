abstract class SignUpStorage {
  bool checkEmailReg();

  bool checkPhoneReg();

  void createNewUser(String firstName, String lastName, String phone,
      String email, String password);

  /// check if all the details in the firs signup page are valid

  bool googleSignUp();

  bool facebookSignUp();

  void attchedUserType();
}
