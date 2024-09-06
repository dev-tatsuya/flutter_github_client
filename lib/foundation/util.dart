(String, String) separate(String nameWithOwner) {
  final splitted = nameWithOwner.split('/');
  return (splitted[0], splitted[1]);
}
