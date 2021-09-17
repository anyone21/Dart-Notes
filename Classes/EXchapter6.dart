// Mini-exercises - 1
class Password {
  String value='';

  bool isValid() {
    if (value.length > 8) {
      return true;
    }
    return false;
  }

  @override
  String toString() {
    return $value;
  }
}

