class User {
  final String imagePath;
  final String name;
  final String aka;
  final String email;
  final String cellPhone;
  final String socialMedia;
  final String urlSocialMedia;
  final String about;
  final bool isDarkMode;

  const User({
    required this.imagePath,
    required this.name,
    required this.aka,
    required this.cellPhone,
    required this.socialMedia,
    required this.urlSocialMedia,
    required this.email,
    required this.about,
    required this.isDarkMode,
  });
}
