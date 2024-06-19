class ProfileDetails {
  List<Education>? education;
  int? exp;
  List<Experience>? experience;
  String? name;
  Personal? personal;
  List<String>? skills;

  ProfileDetails(
      {this.education,
        this.exp,
        this.experience,
        this.name,
        this.personal,
        this.skills});

  ProfileDetails.fromJson(Map<String, dynamic> json) {
    if (json['education'] != null) {
      education = <Education>[];
      json['education'].forEach((v) {
        education!.add(Education.fromJson(v));
      });
    }
    exp = json['exp'];
    if (json['experience'] != null) {
      experience = <Experience>[];
      json['experience'].forEach((v) {
        experience!.add(Experience.fromJson(v));
      });
    }
    name = json['name'];
    personal = json['personal'] != null
        ? Personal.fromJson(json['personal'])
        : null;
    skills = json['skills'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (education != null) {
      data['education'] = education!.map((v) => v.toJson()).toList();
    }
    data['exp'] = exp;
    if (experience != null) {
      data['experience'] = experience!.map((v) => v.toJson()).toList();
    }
    data['name'] = name;
    if (personal != null) {
      data['personal'] = personal!.toJson();
    }
    data['skills'] = skills;
    return data;
  }
}

class Education {
  String? clg;
  String? degree;
  String? year;

  Education({this.clg, this.degree, this.year});

  Education.fromJson(Map<String, dynamic> json) {
    clg = json['clg'];
    degree = json['degree'];
    year = json['year'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['clg'] = clg;
    data['degree'] = degree;
    data['year'] = year;
    return data;
  }
}

class Experience {
  String? companyName;
  List<Projects>? projects;
  String? role;
  String? year;

  Experience({this.companyName, this.projects, this.role, this.year});

  Experience.fromJson(Map<String, dynamic> json) {
    companyName = json['company_name'];
    if (json['projects'] != null) {
      projects = <Projects>[];
      json['projects'].forEach((v) {
        projects!.add(Projects.fromJson(v));
      });
    }
    role = json['role'];
    year = json['year'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['company_name'] = companyName;
    if (projects != null) {
      data['projects'] = projects!.map((v) => v.toJson()).toList();
    }
    data['role'] = role;
    data['year'] = year;
    return data;
  }
}

class Projects {
  String? details;
  String? name;
  String? kind;

  Projects({this.details, this.name, this.kind});

  Projects.fromJson(Map<String, dynamic> json) {
    details = json['details'];
    name = json['name'];
    kind = json['kind'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['details'] = details;
    data['name'] = name;
    data['kind'] = kind;
    return data;
  }
}

class Personal {
  String? address;
  String? dob;
  String? habbits;
  String? lastName;
  String? mail;
  String? phone;
  int? pincode;

  Personal(
      {this.address,
        this.dob,
        this.habbits,
        this.lastName,
        this.mail,
        this.phone,
        this.pincode});

  Personal.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    dob = json['dob'];
    habbits = json['habbits'];
    lastName = json['last_name'];
    mail = json['mail'];
    phone = json['phone'];
    pincode = json['pincode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['address'] = address;
    data['dob'] = dob;
    data['habbits'] = habbits;
    data['last_name'] = lastName;
    data['mail'] = mail;
    data['phone'] = phone;
    data['pincode'] = pincode;
    return data;
  }
}