class MainList {
  List<FavList>? FavResList;
  List<NearbyList>? NearbyResList;
  List<RemainingList>? RemainingResList;

  MainList({
    required this.FavResList,
    required this.NearbyResList,
    required this.RemainingResList,
  });
  MainList.empty();

  MainList.fromJson(Map<String, dynamic> json) {
    var objJsonFavList = json['FavResList'] as List;
    List<FavList> fav =
        objJsonFavList.map((tagJson) => FavList.fromJson(tagJson)).toList();
    FavResList = fav;

    var objJsonNearbyList = json['NearbyResList'] as List;
    List<NearbyList> nearby = objJsonNearbyList
        .map((tagJson) => NearbyList.fromJson(tagJson))
        .toList();
    NearbyResList = nearby;

    var objJsonOtherList = json['RemainingResList'] as List;
    List<RemainingList> other = objJsonOtherList
        .map((tagJson) => RemainingList.fromJson(tagJson))
        .toList();
    RemainingResList = other;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['FavResList'] = FavResList;
    data['NearbyResList'] = NearbyResList;
    data['RemainingResList'] = RemainingResList;
    return data;
  }
}

class FavList {
  FavList({
    required this.id,
    required this.name,
    required this.address,
    required this.canton,
    required this.street,
    required this.houseNumber,
    required this.location,
    required this.postalCode,
    required this.deliveryPostalCode,
    required this.imageUrl,
    required this.latitude,
    required this.longitude,
    required this.restaurantLink,
    required this.distanceInKm,
    required this.isFavorite,
    this.query,
    this.userLatitude,
    this.userLongitude,
  });

  int? id;
  String? name;
  String? address;
  String? canton;
  String? street;
  String? houseNumber;
  String? location;
  int? postalCode;
  String? deliveryPostalCode;
  String? imageUrl;
  String? latitude;
  String? longitude;
  String? restaurantLink;
  String? distanceInKm;
  bool? isFavorite;
  String? query;
  String? userLatitude;
  String? userLongitude;

  factory FavList.fromJson(Map<String, dynamic> json) => FavList(
        id: json["Id"],
        name: json["Name"],
        address: json["Address"],
        canton: json["Canton"],
        street: json["Street"],
        houseNumber: json["HouseNumber"],
        location: json["Location"],
        postalCode: json["PostalCode"],
        deliveryPostalCode: json["DeliveryPostalCode"],
        imageUrl: json["ImageUrl"],
        latitude: json["Latitude"],
        longitude: json["Longitude"],
        restaurantLink: json["RestaurantLink"],
        distanceInKm: json["DistanceInKm"],
        isFavorite: json["IsFavorite"],
        query: json["Query"],
        userLatitude: json["UserLatitude"],
        userLongitude: json["UserLongitude"],
      );

  Map<String, dynamic> toJson() => {
        "Id": id,
        "Name": name,
        "Address": address,
        "Canton": canton,
        "Street": street,
        "HouseNumber": houseNumber,
        "Location": location,
        "PostalCode": postalCode,
        "DeliveryPostalCode": deliveryPostalCode,
        "ImageUrl": imageUrl,
        "Latitude": latitude,
        "Longitude": longitude,
        "RestaurantLink": restaurantLink,
        "DistanceInKm": distanceInKm,
        "IsFavorite": isFavorite,
        "Query": query,
        "UserLatitude": userLatitude,
        "UserLongitude": userLongitude,
      };
}

class NearbyList {
  NearbyList({
    required this.id,
    required this.name,
    required this.address,
    required this.canton,
    required this.street,
    required this.houseNumber,
    required this.location,
    required this.postalCode,
    required this.deliveryPostalCode,
    required this.imageUrl,
    required this.latitude,
    required this.longitude,
    required this.restaurantLink,
    required this.distanceInKm,
    required this.isFavorite,
    this.query,
    this.userLatitude,
    this.userLongitude,
  });

  int? id;
  String? name;
  String? address;
  String? canton;
  String? street;
  String? houseNumber;
  String? location;
  int? postalCode;
  String? deliveryPostalCode;
  String? imageUrl;
  String? latitude;
  String? longitude;
  String? restaurantLink;
  String? distanceInKm;
  bool? isFavorite;
  String? query;
  String? userLatitude;
  String? userLongitude;

  factory NearbyList.fromJson(Map<String, dynamic> json) => NearbyList(
        id: json["Id"],
        name: json["Name"],
        address: json["Address"],
        canton: json["Canton"],
        street: json["Street"],
        houseNumber: json["HouseNumber"],
        location: json["Location"],
        postalCode: json["PostalCode"],
        deliveryPostalCode: json["DeliveryPostalCode"],
        imageUrl: json["ImageUrl"],
        latitude: json["Latitude"],
        longitude: json["Longitude"],
        restaurantLink: json["RestaurantLink"],
        distanceInKm: json["DistanceInKm"],
        isFavorite: json["IsFavorite"],
        query: json["Query"],
        userLatitude: json["UserLatitude"],
        userLongitude: json["UserLongitude"],
      );

  Map<String, dynamic> toJson() => {
        "Id": id,
        "Name": name,
        "Address": address,
        "Canton": canton,
        "Street": street,
        "HouseNumber": houseNumber,
        "Location": location,
        "PostalCode": postalCode,
        "DeliveryPostalCode": deliveryPostalCode,
        "ImageUrl": imageUrl,
        "Latitude": latitude,
        "Longitude": longitude,
        "RestaurantLink": restaurantLink,
        "DistanceInKm": distanceInKm,
        "IsFavorite": isFavorite,
        "Query": query,
        "UserLatitude": userLatitude,
        "UserLongitude": userLongitude,
      };
}

class RemainingList {
  RemainingList({
    required this.id,
    required this.name,
    required this.address,
    required this.canton,
    required this.street,
    required this.houseNumber,
    required this.location,
    required this.postalCode,
    required this.deliveryPostalCode,
    required this.imageUrl,
    required this.latitude,
    required this.longitude,
    required this.restaurantLink,
    required this.distanceInKm,
    required this.isFavorite,
    this.query,
    this.userLatitude,
    this.userLongitude,
  });

  int? id;
  String? name;
  String? address;
  String? canton;
  String? street;
  String? houseNumber;
  String? location;
  int? postalCode;
  String? deliveryPostalCode;
  String? imageUrl;
  String? latitude;
  String? longitude;
  String? restaurantLink;
  String? distanceInKm;
  bool? isFavorite;
  String? query;
  String? userLatitude;
  String? userLongitude;

  factory RemainingList.fromJson(Map<String, dynamic> json) => RemainingList(
        id: json["Id"],
        name: json["Name"],
        address: json["Address"],
        canton: json["Canton"],
        street: json["Street"],
        houseNumber: json["HouseNumber"],
        location: json["Location"],
        postalCode: json["PostalCode"],
        deliveryPostalCode: json["DeliveryPostalCode"],
        imageUrl: json["ImageUrl"],
        latitude: json["Latitude"],
        longitude: json["Longitude"],
        restaurantLink: json["RestaurantLink"],
        distanceInKm: json["DistanceInKm"],
        isFavorite: json["IsFavorite"],
        query: json["Query"],
        userLatitude: json["UserLatitude"],
        userLongitude: json["UserLongitude"],
      );

  Map<String, dynamic> toJson() => {
        "Id": id,
        "Name": name,
        "Address": address,
        "Canton": canton,
        "Street": street,
        "HouseNumber": houseNumber,
        "Location": location,
        "PostalCode": postalCode,
        "DeliveryPostalCode": deliveryPostalCode,
        "ImageUrl": imageUrl,
        "Latitude": latitude,
        "Longitude": longitude,
        "RestaurantLink": restaurantLink,
        "DistanceInKm": distanceInKm,
        "IsFavorite": isFavorite,
        "Query": query,
        "UserLatitude": userLatitude,
        "UserLongitude": userLongitude,
      };
}
