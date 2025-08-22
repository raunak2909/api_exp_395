class CryptoModel {
  String? coin;
  String? network;
  String? wallet;

  CryptoModel({
    required this.coin,
    required this.network,
    required this.wallet,
  });

  factory CryptoModel.fromJson(Map<String, dynamic> json) {
    return CryptoModel(
      coin: json['coin'],
      network: json['network'],
      wallet: json['wallet'],
    );
  }
}

class CoordinateModel {
  num? lat;
  num? lng;

  CoordinateModel({required this.lat, required this.lng});

  factory CoordinateModel.fromJson(Map<String, dynamic> json) {
    return CoordinateModel(lat: json['lat'], lng: json['lng']);
  }
}

class AddressModel {
  String? address;
  String? city;
  String? country;
  String? postalCode;
  String? state;
  String? stateCode;
  CoordinateModel? coordinates;

  AddressModel({
    required this.address,
    required this.city,
    required this.country,
    required this.postalCode,
    required this.state,
    required this.stateCode,
    required this.coordinates,
  });

  factory AddressModel.fromJson(Map<String, dynamic> json) {
    return AddressModel(
      address: json['address'],
      city: json['city'],
      country: json['country'],
      postalCode: json['postalCode'],
      state: json['state'],
      stateCode: json['stateCode'],
      coordinates: CoordinateModel.fromJson(json['coordinates']),
    );
  }
}

class CompanyModel {
  String? department;
  String? name;
  String? title;
  AddressModel? address;

  CompanyModel({
    required this.department,
    required this.name,
    required this.title,
    required this.address,
  });

  factory CompanyModel.fromJson(Map<String, dynamic> json) {
    return CompanyModel(
      department: json['department'],
      name: json['name'],
      title: json['title'],
      address: AddressModel.fromJson(json['address']),
    );
  }
}

class BankModel {
  String? cardExpire;
  String? cardNumber;
  String? cardType;
  String? currency;
  String? iban;

  BankModel({
    required this.cardExpire,
    required this.cardNumber,
    required this.cardType,
    required this.currency,
    required this.iban,
  });

  factory BankModel.fromJson(Map<String, dynamic> json){
    return BankModel(
      cardExpire: json['cardExpire'],
      cardNumber: json['cardNumber'],
      cardType: json['cardType'],
      currency: json['currency'],
      iban: json['iban'],
    );
  }
}

class HairModel {
  String? color;
  String? type;

  HairModel({required this.color, required this.type});

  factory HairModel.fromJson(Map<String, dynamic> json){
    return HairModel(
      color: json['color'],
      type: json['type'],
    );
  }
}

class UserModel{
  int? age;
  String? birthDate;
  String? bloodGroup;
  String? ein;
  String? email;
  String? eyeColor;
  String? firstName;
  String? gender;
  num? height;
  int? id;
  String? image;
  String? ip;
  String? lastName;
  String? macAddress;
  String? maidenName;
  String? password;
  String? phone;
  String? role;
  String? ssn;
  String? university;
  String? userAgent;
  String? username;
  num? weight;
  AddressModel? address;
  BankModel? bank;
  CompanyModel? company;
  CryptoModel? crypto;
  HairModel? hair;

  UserModel({
    required this.age,
    required this.birthDate,
    required this.bloodGroup,
    required this.ein,
    required this.email,
    required this.eyeColor,
    required this.firstName,
    required this.gender,
    required this.height,
    required this.id,
    required this.image,
    required this.ip,
    required this.lastName,
    required this.macAddress,
    required this.maidenName,
    required this.password,
    required this.phone,
    required this.role,
    required this.ssn,
    required this.university,
    required this.userAgent,
    required this.username,
    required this.weight,
    required this.address,
    required this.bank,
    required this.company,
    required this.crypto,
    required this.hair,
  });

  factory UserModel.fromJson(Map<String, dynamic> json){
    return UserModel(
      age: json['age'],
      birthDate: json['birthDate'],
      bloodGroup: json['bloodGroup'],
      ein: json['ein'],
      email: json['email'],
      eyeColor: json['eyeColor'],
      firstName: json['firstName'],
      gender: json['gender'],
      height: json['height'],
      id: json['id'],
      image: json['image'],
      ip: json['ip'],
      lastName: json['lastName'],
      macAddress: json['macAddress'],
      maidenName: json['maidenName'],
      password: json['password'],
      phone: json['phone'],
      role: json['role'],
      ssn: json['ssn'],
      university: json['university'],
      userAgent: json['userAgent'],
      username: json['username'],
      weight: json['weight'],
      address: AddressModel.fromJson(json['address']),
      bank: BankModel.fromJson(json['bank']),
      company: CompanyModel.fromJson(json['company']),
      crypto: CryptoModel.fromJson(json['crypto']),
      hair: HairModel.fromJson(json['hair']),
    );
  }

}
