class CardData {
  final int id;
  final String image1;
  final String image2;
  final String carName;
  final String carData1;
  var carData2;
  final String carData3;

  CardData({
    required this.id,
    required this.image1, 
    required this.image2, 
    required this.carName, 
    required this.carData1, 
    required this.carData2, 
    required this.carData3,
  });
}

class PersonalData {
  final String fullName;
  final String dateOfBirth;
  final String gender;

  PersonalData({
    required this.fullName,
    required this.dateOfBirth,
    required this.gender
  });
}

class UserData {
  final String username;
  final String email;
  final String phoneNumber;

  UserData({
    required this.username,
    required this.email,
    required this.phoneNumber
  });
}