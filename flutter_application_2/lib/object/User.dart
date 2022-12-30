class Nguoidung {
  String uid;
  final String hoten;
  final String tendangnhap;
  // final DateTime ngaysinh;
  final String email;
  final String password;

  Nguoidung({
    this.uid = "",
    required this.hoten,
    required this.tendangnhap,
    required this.email,
    required this.password,
    //required this.ngaysinh
  });

  Nguoidung.fromJson(Map<String, dynamic> res)
      : uid = res['uid'],
        hoten = res['hoten'],
        email = res['email'],
        tendangnhap = res['tendangnhap'],
        password = res['password'];

  Map<String, dynamic> toJson() => {
        'uid': uid,
        'hoten': hoten,
        'tendangnhap': tendangnhap,
        'email': email,
        'password': password
        //'ngaysinh': ngaysinh,
      };
}
