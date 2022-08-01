class Job {
  final String company;
  final String logoUrl;
  bool isMark;
  final String title;
  final String location;
  final String time;
  final List<String> req;
  Job(
      {required this.company,
      required this.logoUrl,
      required this.isMark,
      required this.title,
      required this.location,
      required this.time,
      required this.req});
  static List<Job> generateJobs() {
    return [
      Job(
        company: 'Google LLC',
        logoUrl: 'images/images/google_logo.png',
        isMark: false,
        title: 'Principal Product Design',
        location: '417 Marion , New York\nUnited States',
        time: 'Full Time',
        req: [
          'Bachelors degree in industrial design, manufacturing, engineering, or a related field.',
          'A creative eye, good imagination, and vision.',
        ],
      ),
      Job(
        company: 'Airbnb Inc',
        logoUrl: 'images/images/airbnb_logo.png',
        isMark: false,
        title: 'Principal Product Design',
        location: '417 Marion , New York\nUnited States',
        time: 'Full Time',
        req: [
          'Bachelors degree in industrial design, manufacturing, engineering, or a related field',
          'A creative eye, good imagination, and vision',
          'A firm grasp of market trends and consumer preferences',
          'Practical experience using computer-aided design software',
          'Good technical and IT skills'
        ],
      ),
      Job(
        company: 'Linkedin',
        logoUrl: 'images/images/linkedin_logo.png',
        isMark: false,
        title: 'Principal Product Design',
        location: '417 Marion , New York\nUnited States',
        time: 'Full Time',
        req: [
          'Bachelors degree in industrial design, manufacturing, engineering, or a related field',
          'A creative eye, good imagination, and vision',
          'A firm grasp of market trends and consumer preferences',
        ],
      ),
    ];
  }
}