
import 'package:bitnaro/common/utils/configs/reg_x.dart';

class Validator {
  static String? validateEmail(String value) {
    const pattern = r'(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)';
    final regExp = RegExp(pattern);

    if (value.isEmpty) {
      return 'Enter an email';
    } else if (!regExp.hasMatch(value)) {
      return 'Enter an email';
    } else {
      return null;
    }
  }

  static String? validatePassword(String value) {
    if (value.isEmpty) {
      return 'Enter a password';
    } else {
      return null;
    }
  }

  static String? validateMobile(String value) {
    // String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    // RegExp regExp = RegExp(pattern);
    if (value.isEmpty) {
      return 'Enter mobile number';
    }
    // else if (!regExp.hasMatch(value)) {
    //   return 'Please enter valid mobile number';
    // }
    else if (value.length < 8) {
      return 'Phone validation';
    }
    return null;
  }

  static String? validateName(String? name) {
    if (name == null || name.isEmpty) {
      return 'Enter a name';
    }
    if (!RegEx.alphabetRegEx.hasMatch(name)) {
      return 'Name validation';
    }
    return null;
  }

  static String? validateOrganizationName(String? name) {
    if (name == null || name.isEmpty) {
      return 'Enter organization name';
    }
    return null;
  }

  static String? validateWeight(String? weight) {
    if (weight == null || weight.isEmpty) {
      return 'Enter weight';
    }
    if (!RegEx.digitRegEx.hasMatch(weight)) {
      return 'Weight validation';
    }
    return null;
  }


  static String? validateWebsiteUrl(String? websiteUrl) {
    if (websiteUrl == null || websiteUrl.isEmpty) {
      return 'Enter website url';
    }
    if (!RegEx.webUrlRegEx.hasMatch(websiteUrl)) {
      return 'Website url validation';
    }
    return null;
  }

  static String? validateServiceName(String? serviceName) {
    if (serviceName == null || serviceName.isEmpty) {
      return 'Enter service name';
    }
    // if (!RegEx.alphabetRegEx.hasMatch(serviceName)) {
    //   return "Service name shouldn't contain digits";
    // }
    return null;
  }

  static String? validateServiceDetails(String? serviceDetails) {
    if (serviceDetails == null || serviceDetails.isEmpty) {
      return 'Enter service details';
    }
    return null;
  }
}
