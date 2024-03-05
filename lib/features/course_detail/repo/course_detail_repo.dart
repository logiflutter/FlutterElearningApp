import 'package:ulearning_app/common/models/course_entities.dart';
import 'package:ulearning_app/common/services/http_util.dart';

class CourseDetailRepo{
  static Future<CourseDetailResponseEntity?> courseDetail({int? id}) async {
    var response = await HttpUtil().post('api/courseDetail', 
    queryParameters: {'id' : id});
    return CourseDetailResponseEntity.formJson(response);
  }
}