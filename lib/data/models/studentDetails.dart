import 'package:eschool_saas_staff/data/models/offlineExamSubjectResult.dart';
import 'package:eschool_saas_staff/data/models/paidFeeDetails.dart';
import 'package:eschool_saas_staff/data/models/student.dart';

class StudentDetails {
  final int? id;
  final String? firstName;
  final String? lastName;
  final String? mobile;
  final String? email;
  final String? gender;
  final String? image;
  final String? dob;
  final String? currentAddress;
  final String? permanentAddress;
  final String? occupation;
  final int? status;
  final int? resetRequest;
  final String? fcmId;
  final int? schoolId;
  final String? language;
  final String? emailVerifiedAt;
  final String? createdAt;
  final String? updatedAt;
  final String? deletedAt;
  final String? fullName;
  final String? schoolNames;
  final Student? student;
  final List<OfflineExamSubjectResult>? offlineExamMarks;
  final List<ExamMarks>? examMarks;
  final PaidFeeDetails? paidFeeDetails;

  StudentDetails({
    this.id,
    this.student,
    this.firstName,
    this.lastName,
    this.mobile,
    this.paidFeeDetails,
    this.email,
    this.gender,
    this.image,
    this.dob,
    this.currentAddress,
    this.permanentAddress,
    this.occupation,
    this.status,
    this.resetRequest,
    this.fcmId,
    this.schoolId,
    this.language,
    this.emailVerifiedAt,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.fullName,
    this.schoolNames,
    this.offlineExamMarks,
    this.examMarks,
  });

  StudentDetails copyWith(
      {int? id,
      String? firstName,
      String? lastName,
      String? mobile,
      String? email,
      String? gender,
      String? image,
      String? dob,
      String? currentAddress,
      String? permanentAddress,
      String? occupation,
      int? status,
      int? resetRequest,
      String? fcmId,
      int? schoolId,
      String? language,
      String? emailVerifiedAt,
      String? createdAt,
      String? updatedAt,
      String? deletedAt,
      String? fullName,
      String? schoolNames,
      Student? student}) {
    return StudentDetails(
      id: id ?? this.id,
      student: student ?? this.student,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      mobile: mobile ?? this.mobile,
      email: email ?? this.email,
      gender: gender ?? this.gender,
      image: image ?? this.image,
      dob: dob ?? this.dob,
      currentAddress: currentAddress ?? this.currentAddress,
      permanentAddress: permanentAddress ?? this.permanentAddress,
      occupation: occupation ?? this.occupation,
      status: status ?? this.status,
      resetRequest: resetRequest ?? this.resetRequest,
      fcmId: fcmId ?? this.fcmId,
      schoolId: schoolId ?? this.schoolId,
      language: language ?? this.language,
      emailVerifiedAt: emailVerifiedAt ?? this.emailVerifiedAt,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      fullName: fullName ?? this.fullName,
      schoolNames: schoolNames ?? this.schoolNames,
    );
  }

  StudentDetails.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        firstName = json['first_name'] as String?,
        lastName = json['last_name'] as String?,
        mobile = json['mobile'] as String?,
        email = json['email'] as String?,
        gender = json['gender'] as String?,
        image = json['image'] as String?,
        dob = json['dob'] as String?,
        currentAddress = json['current_address'] as String?,
        permanentAddress = json['permanent_address'] as String?,
        occupation = json['occupation'] as String?,
        status = json['status'] as int?,
        resetRequest = json['reset_request'] as int?,
        fcmId = json['fcm_id'] as String?,
        schoolId = json['school_id'] as int?,
        language = json['language'] as String?,
        emailVerifiedAt = json['email_verified_at'] as String?,
        createdAt = json['created_at'] as String?,
        updatedAt = json['updated_at'] as String?,
        deletedAt = json['deleted_at'] as String?,
        fullName = json['full_name'] as String?,
        offlineExamMarks = ((json['exam_marks'] ?? []) as List)
            .map((offlineExamSubjectResult) =>
                OfflineExamSubjectResult.fromJson(
                    Map.from(offlineExamSubjectResult ?? {})))
            .toList(),
        student = Student.fromJson(Map.from(json['student'] ?? {})),
        schoolNames = json['school_names'] as String?,
        paidFeeDetails =
            PaidFeeDetails.fromJson(Map.from(json['fees_paid'] ?? {})),
        examMarks = ((json['marks'] ?? []) as List)
            .map<ExamMarks>((e) => ExamMarks.fromJson(Map.from(e ?? {})))
            .toList();

  Map<String, dynamic> toJson() => {
        'id': id,
        'first_name': firstName,
        'last_name': lastName,
        'mobile': mobile,
        'email': email,
        'gender': gender,
        'image': image,
        'dob': dob,
        'current_address': currentAddress,
        'permanent_address': permanentAddress,
        'occupation': occupation,
        'status': status,
        'reset_request': resetRequest,
        'fcm_id': fcmId,
        'school_id': schoolId,
        'language': language,
        'email_verified_at': emailVerifiedAt,
        'created_at': createdAt,
        'updated_at': updatedAt,
        'deleted_at': deletedAt,
        'full_name': fullName,
        'school_names': schoolNames,
        'student': student?.toJson(),
      };

  String getGender() {
    if (gender == "male") {
      return "Male";
    }

    if (gender == "female") {
      return "Female";
    }
    return gender ?? "-";
  }

  bool isActive() {
    return (status == 1);
  }
}

//For offline exam existing marks
class ExamMarks {
  int id;
  int examTimetableId;
  int studentId;
  int obtainedMarks;

  ExamMarks(
      {required this.id,
      required this.examTimetableId,
      required this.studentId,
      required this.obtainedMarks});

  factory ExamMarks.fromJson(Map json) {
    return ExamMarks(
        id: json['id'] ?? 0,
        examTimetableId: json['exam_timetable_id'] ?? 0,
        studentId: json['student_id'] ?? 0,
        obtainedMarks: json['obtained_marks'] ?? 0);
  }
}
