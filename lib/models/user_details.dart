class UserDetails {
  final String userName;
  final String userHandeler;
  final String profilePicture;

  final String message;
  final String photoUrl;

  final int timeSent;
  final int retweets;
  final int forward;
  final int likes;

  final int comments;
  final bool isPhotoMessage;

  UserDetails(
    this.userName,
    this.userHandeler,
    this.profilePicture,
    this.message,
    this.timeSent,
    this.retweets,
    this.forward,
    this.likes,
    this.comments,
    this.isPhotoMessage, {
    this.photoUrl = '',
  });
}
