class WeatherApi {
  String? type;
  Metadata? metadata;
  List<Features>? features;
  List<num>? bbox;

  WeatherApi({this.type, this.metadata, this.features, this.bbox});

  WeatherApi.fromJson(Map<String, dynamic> json) {
    type = json['type'];

    metadata = json['metadata'] != null
        ? Metadata.fromJson(json['metadata'])
        : null;

    if (json['features'] != null) {
      features = [];
      json['features'].forEach((v) {
        features!.add(Features.fromJson(v));
      });
    }

    bbox = json['bbox'] != null ? List<num>.from(json['bbox']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};

    data['type'] = type;

    if (metadata != null) {
      data['metadata'] = metadata!.toJson();
    }

    if (features != null) {
      data['features'] = features!.map((v) => v.toJson()).toList();
    }

    data['bbox'] = bbox;

    return data;
  }
}

class Metadata {
  num? generated;
  String? url;
  String? title;
  num? status;
  String? api;
  num? count;

  Metadata(
      {this.generated,
      this.url,
      this.title,
      this.status,
      this.api,
      this.count});

  Metadata.fromJson(Map<String, dynamic> json) {
    generated = json['generated'];
    url = json['url'];
    title = json['title'];
    status = json['status'];
    api = json['api'];
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};

    data['generated'] = generated;
    data['url'] = url;
    data['title'] = title;
    data['status'] = status;
    data['api'] = api;
    data['count'] = count;

    return data;
  }
}

class Features {
  String? type;
  Properties? properties;
  Geometry? geometry;
  String? id;

  Features({this.type, this.properties, this.geometry, this.id});

  Features.fromJson(Map<String, dynamic> json) {
    type = json['type'];

    properties = json['properties'] != null
        ? Properties.fromJson(json['properties'])
        : null;

    geometry = json['geometry'] != null
        ? Geometry.fromJson(json['geometry'])
        : null;

    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};

    data['type'] = type;
    if (properties != null) data['properties'] = properties!.toJson();
    if (geometry != null) data['geometry'] = geometry!.toJson();
    data['id'] = id;

    return data;
  }
}

class Properties {
  num? mag;
  String? place;
  num? time;
  num? updated;
  num? tz;
  String? url;
  String? detail;
  num? felt;
  num? cdi;
  num? mmi;
  String? alert;
  String? status;
  num? tsunami;
  num? sig;
  String? net;
  String? code;
  String? ids;
  String? sources;
  String? types;
  num? nst;
  num? dmin;
  num? rms;
  num? gap;
  String? magType;
  String? type;
  String? title;

  Properties(
      {this.mag,
      this.place,
      this.time,
      this.updated,
      this.tz,
      this.url,
      this.detail,
      this.felt,
      this.cdi,
      this.mmi,
      this.alert,
      this.status,
      this.tsunami,
      this.sig,
      this.net,
      this.code,
      this.ids,
      this.sources,
      this.types,
      this.nst,
      this.dmin,
      this.rms,
      this.gap,
      this.magType,
      this.type,
      this.title});

  Properties.fromJson(Map<String, dynamic> json) {
    mag = json['mag'];
    place = json['place'];
    time = json['time'];
    updated = json['updated'];
    tz = json['tz'];
    url = json['url'];
    detail = json['detail'];
    felt = json['felt'];
    cdi = json['cdi'];
    mmi = json['mmi'];
    alert = json['alert'];
    status = json['status'];
    tsunami = json['tsunami'];
    sig = json['sig'];
    net = json['net'];
    code = json['code'];
    ids = json['ids'];
    sources = json['sources'];
    types = json['types'];
    nst = json['nst'];
    dmin = json['dmin'];
    rms = json['rms'];
    gap = json['gap'];
    magType = json['magType'];
    type = json['type'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};

    data['mag'] = mag;
    data['place'] = place;
    data['time'] = time;
    data['updated'] = updated;
    data['tz'] = tz;
    data['url'] = url;
    data['detail'] = detail;
    data['felt'] = felt;
    data['cdi'] = cdi;
    data['mmi'] = mmi;
    data['alert'] = alert;
    data['status'] = status;
    data['tsunami'] = tsunami;
    data['sig'] = sig;
    data['net'] = net;
    data['code'] = code;
    data['ids'] = ids;
    data['sources'] = sources;
    data['types'] = types;
    data['nst'] = nst;
    data['dmin'] = dmin;
    data['rms'] = rms;
    data['gap'] = gap;
    data['magType'] = magType;
    data['type'] = type;
    data['title'] = title;

    return data;
  }
}

class Geometry {
  String? type;
  List<num>? coordinates;

  Geometry({this.type, this.coordinates});

  Geometry.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    coordinates = json['coordinates'] != null
        ? List<num>.from(json['coordinates'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};

    data['type'] = type;
    data['coordinates'] = coordinates;

    return data;
  }
}
