extension CastIntToBool on int {
  bool iToBool() {
    if (this == 1) {
      return true;
    } else {
      return (this == 0) ? false : throw UnsupportedError('CastIntToBool: Unsupported int');
    }
  }
}
