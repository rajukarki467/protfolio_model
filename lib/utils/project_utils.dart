class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? androidLink;
  final String? iosLink;
  final String? webLink;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    this.androidLink,
    this.iosLink,
    this.webLink,
  });
}

// ###############
// HOBBY PROJECTS
List<ProjectUtils> hobbyProjectUtils = [
  ProjectUtils(
    image: 'assets/projects/1.png',
    title: 'Math Quiz Challenge',
    subtitle:
        'A fun math quiz app to compete with friends and improve problem-solving skills.',
    androidLink:
        'https://play.google.com/store/apps/details?id=com.random.mathquiz',
  ),
  ProjectUtils(
    image: 'assets/projects/02.png',
    title: 'Phrase Master',
    subtitle:
        'An app to learn and practice daily English phrases with examples.',
    androidLink:
        'https://play.google.com/store/apps/details?id=com.random.phrasemaster',
    iosLink: "https://apps.apple.com/us/app/phrase-master/id1002003004",
  ),
  ProjectUtils(
    image: 'assets/projects/03.png',
    title: 'Flash Vocabulary',
    subtitle: 'Save and memorize words with flashcards and mini-games.',
    androidLink:
        'https://play.google.com/store/apps/details?id=com.random.flashvocab',
    iosLink: 'https://apps.apple.com/us/app/flash-vocabulary/id2003004005',
  ),
  ProjectUtils(
    image: 'assets/projects/04.png',
    title: 'Meditation Counter',
    subtitle:
        'Track meditation or mantra sessions with a simple counter and history.',
    androidLink:
        'https://play.google.com/store/apps/details?id=com.random.meditationcounter',
  ),
  ProjectUtils(
    image: 'assets/projects/05.png',
    title: 'Simple Planner',
    subtitle: 'Organize your tasks with an easy-to-use planner app.',
    androidLink:
        'https://play.google.com/store/apps/details?id=com.random.simpleplanner',
    iosLink: "https://apps.apple.com/us/app/simple-planner/id3004005006",
  ),
  ProjectUtils(
    image: 'assets/projects/06.png',
    title: 'Quick Notes',
    subtitle: 'A fast and lightweight note-taking app for mobile and desktop.',
    androidLink:
        'https://play.google.com/store/apps/details?id=com.random.quicknotes',
    iosLink: 'https://apps.apple.com/us/app/quick-notes/id4005006007',
  ),
];

// ###############
// WORK PROJECTS
List<ProjectUtils> workProjectUtils = [
  ProjectUtils(
    image: 'assets/projects/w01.png',
    title: 'EduLearn Pro',
    subtitle:
        'An e-learning platform with interactive lessons and progress tracking for students.',
    androidLink:
        'https://play.google.com/store/apps/details?id=com.work.edulearnpro',
    iosLink: "https://apps.apple.com/us/app/edulearn-pro/id5006007008",
  ),
  ProjectUtils(
    image: 'assets/projects/w02.png',
    title: 'AutoParts Store',
    subtitle:
        'A responsive e-commerce web app to order and manage automotive parts online.',
    webLink: 'https://www.autoparts-store.io',
  ),
  ProjectUtils(
    image: 'assets/projects/w03.jpeg',
    title: 'Digital Ads Manager',
    subtitle:
        'A complete solution to manage, track, and optimize advertising campaigns online.',
    webLink: 'https://www.digitaladsmanager.app',
  ),
];
