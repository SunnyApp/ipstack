/// Automatically generated;
class IpStackResponse {
  String? _ip;
  String? _type;
  String? _continentCode;
  String? _continentName;
  String? _countryCode;
  String? _countryName;
  String? _regionCode;
  String? _regionName;
  String? _city;
  String? _zip;
  double? _latitude;
  double? _longitude;
  Location? _location;

  String? get ip => _ip;
  String? get type => _type;
  String? get continentCode => _continentCode;
  String? get continentName => _continentName;
  String? get countryCode => _countryCode;
  String? get countryName => _countryName;
  String? get regionCode => _regionCode;
  String? get regionName => _regionName;
  String? get city => _city;
  String? get zip => _zip;
  double? get latitude => _latitude;
  double? get longitude => _longitude;
  Location? get location => _location;

  IpStackResponse(
      {String? ip,
      String? type,
      String? continentCode,
      String? continentName,
      String? countryCode,
      String? countryName,
      String? regionCode,
      String? regionName,
      String? city,
      String? zip,
      double? latitude,
      double? longitude,
      Location? location}) {
    _ip = ip;
    _type = type;
    _continentCode = continentCode;
    _continentName = continentName;
    _countryCode = countryCode;
    _countryName = countryName;
    _regionCode = regionCode;
    _regionName = regionName;
    _city = city;
    _zip = zip;
    _latitude = latitude;
    _longitude = longitude;
    _location = location;
  }

  IpStackResponse.fromJson(dynamic json) {
    _ip = json["ip"];
    _type = json["type"];
    _continentCode = json["continent_code"];
    _continentName = json["continent_name"];
    _countryCode = json["country_code"];
    _countryName = json["country_name"];
    _regionCode = json["region_code"];
    _regionName = json["region_name"];
    _city = json["city"];
    _zip = json["zip"];
    _latitude = json["latitude"];
    _longitude = json["longitude"];
    _location =
        json["location"] != null ? Location.fromJson(json["location"]) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["ip"] = _ip;
    map["type"] = _type;
    map["continent_code"] = _continentCode;
    map["continent_name"] = _continentName;
    map["country_code"] = _countryCode;
    map["country_name"] = _countryName;
    map["region_code"] = _regionCode;
    map["region_name"] = _regionName;
    map["city"] = _city;
    map["zip"] = _zip;
    map["latitude"] = _latitude;
    map["longitude"] = _longitude;
    if (_location != null) {
      map["location"] = _location!.toJson();
    }
    return map;
  }
}

/// geoname_id : 5295903
/// capital : "Washington D.C."
/// languages : [{"code":"en","name":"English","native":"English"}]
/// country_flag : "http://assets.ipstack.com/flags/us.svg"
/// country_flag_emoji : "🇺🇸"
/// country_flag_emoji_unicode : "U+1F1FA U+1F1F8"
/// calling_code : "1"
/// is_eu : false

class Location {
  int? _geonameId;
  String? _capital;
  List<Languages>? _languages;
  String? _countryFlag;
  String? _countryFlagEmoji;
  String? _countryFlagEmojiUnicode;
  String? _callingCode;
  bool? _isEu;

  int? get geonameId => _geonameId;
  String? get capital => _capital;
  List<Languages>? get languages => _languages;
  String? get countryFlag => _countryFlag;
  String? get countryFlagEmoji => _countryFlagEmoji;
  String? get countryFlagEmojiUnicode => _countryFlagEmojiUnicode;
  String? get callingCode => _callingCode;
  bool? get isEu => _isEu;

  Location(
      {int? geonameId,
      String? capital,
      List<Languages>? languages,
      String? countryFlag,
      String? countryFlagEmoji,
      String? countryFlagEmojiUnicode,
      String? callingCode,
      bool? isEu}) {
    _geonameId = geonameId;
    _capital = capital;
    _languages = languages;
    _countryFlag = countryFlag;
    _countryFlagEmoji = countryFlagEmoji;
    _countryFlagEmojiUnicode = countryFlagEmojiUnicode;
    _callingCode = callingCode;
    _isEu = isEu;
  }

  Location.fromJson(dynamic json) {
    _geonameId = json["geoname_id"];
    _capital = json["capital"];
    if (json["languages"] != null) {
      _languages = [];
      json["languages"].forEach((v) {
        _languages!.add(Languages.fromJson(v));
      });
    }
    _countryFlag = json["country_flag"];
    _countryFlagEmoji = json["country_flag_emoji"];
    _countryFlagEmojiUnicode = json["country_flag_emoji_unicode"];
    _callingCode = json["calling_code"];
    _isEu = json["is_eu"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["geoname_id"] = _geonameId;
    map["capital"] = _capital;
    if (_languages != null) {
      map["languages"] = _languages!.map((v) => v.toJson()).toList();
    }
    map["country_flag"] = _countryFlag;
    map["country_flag_emoji"] = _countryFlagEmoji;
    map["country_flag_emoji_unicode"] = _countryFlagEmojiUnicode;
    map["calling_code"] = _callingCode;
    map["is_eu"] = _isEu;
    return map;
  }
}

/// code : "en"
/// name : "English"
/// native : "English"

class Languages {
  String? _code;
  String? _name;
  String? _native;

  String? get code => _code;
  String? get name => _name;
  String? get native => _native;

  Languages({String? code, String? name, String? native}) {
    _code = code;
    _name = name;
    _native = native;
  }

  Languages.fromJson(dynamic json) {
    _code = json["code"];
    _name = json["name"];
    _native = json["native"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["code"] = _code;
    map["name"] = _name;
    map["native"] = _native;
    return map;
  }
}
