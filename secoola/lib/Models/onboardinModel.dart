class OnbordingContent {
  String image;
  String title;
  String discription;

  OnbordingContent({required this.image, required this.title, required this.discription});
}

List<OnbordingContent> contents = [
  OnbordingContent(
      title: 'Join and study together',
      image: 'assets/onborad1.jpg',
      discription: "Find your best experience while studying and seeking knowledge in here"
  ),
  OnbordingContent(
      title: 'Find your mentors',
      image: 'assets/onborad2.jpg',
      discription: "Find your best experience while studying and seeking knowledge in here"
  ),
  OnbordingContent(
      title: 'Explore new knowledge',
      image: 'assets/grade.jpg',
      discription: "Find your best experience while studying and seeking knowledge in here "
  ),
];