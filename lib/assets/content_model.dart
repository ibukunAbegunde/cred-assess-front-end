class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent({required this.image, required this.title, required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'Take control of your credit',
      image: 'images/illustration1.png',
      discription: "Join us in redefining credit lending. Take control of your financial journry today. It,s Fast, Free % Very Easy"
  ),
  UnbordingContent(
    title: 'Welcome to Cred Assess',
    image: 'images/Data1.png',
    discription: "Check your reports anytime, and zero in on the factors that help your scores grow"
  ),
  UnbordingContent(
    title: 'Monitor and protect your credit with daily alerts',
    image: 'images/Illustration3.png',
    discription: "Get updates on key changes to your credit with personalised alerts"
  ),
  UnbordingContent(
      title: 'Get matched with personalized offers',
      image: 'images/illustration4.png',
      discription: "Get updates on key changes to your credit with personalised alerts"
  ),
];
