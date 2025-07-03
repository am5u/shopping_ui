import 'dart:convert';
import 'package:flutter/services.dart';
import 'course_model.dart';

class CourseService {
  static List<Course> _courses = [];
  static bool _isLoaded = false;

  static Future<List<Course>> loadCourses() async {
    if (_isLoaded) {
      return _courses;
    }

    try {
      final String response = await rootBundle.loadString(
        'assets/json/data_courses.json',
      );
      final data = await json.decode(response);
      _courses =
          (data['courses'] as List)
              .map((courseJson) => Course.fromJson(courseJson))
              .toList();
      _isLoaded = true;
      return _courses;
    } catch (e) {
      print('Error loading courses: $e');
      return [];
    }
  }

  static List<Course> getCoursesByCategory(String category) {
    if (category.toLowerCase() == 'all') {
      return _courses;
    }
    return _courses.where((course) => course.category == category).toList();
  }

  static List<Course> getAllCourses() {
    return _courses;
  }

  static List<String> getCategories() {
    Set<String> categories = _courses.map((course) => course.category).toSet();
    return ['All', ...categories];
  }
}
