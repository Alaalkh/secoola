class FQAquestion {
  String title;
  String discription;

  FQAquestion({ required this.title, required this.discription});
}

List<FQAquestion> fqcontents = [
  FQAquestion(
      title: '1. What is Secoola?',
      discription: "Secoola is WHO’s first interactive online knowledge-transfer platform introducing open online courses "
  ),
  FQAquestion(
      title: '2. Who can access Secoola courses?',
      discription: "Secoola courses are offered for free to anyone who registers with their email address."
  ),
  FQAquestion(
      title: '3. Do courses have any time limit?',
      discription: "No, Secoola courses are self-paced, meaning you can take as much time as you need to complete a course."
  ),  FQAquestion(
      title: '4. What types of courses does Secoola offer?',
      discription: "Secoola offers three levels of courses: basic, intermediate and advanced"
  ),
];