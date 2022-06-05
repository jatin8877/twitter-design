import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:twitter_design/services/twitter_services.dart';

class TwitterApp extends StatelessWidget {
  TwitterApp({Key? key}) : super(key: key);
  final users = TwitterServices().getDetails();
  final checked = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.man,
          color: Colors.blue,
        ),
        title: const Icon(
          FontAwesomeIcons.twitter,
          color: Colors.blue,
          size: 32,
        ),
        actions: const [
          Icon(
            Icons.search,
            color: Colors.blue,
          ),
          Icon(
            Icons.pending_sharp,
            color: Colors.blue,
          )
        ],
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    users[index].profilePicture,
                    // width: 40,
                  ),
                ),
                title: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              users[index].userName,
                              style: const TextStyle(fontSize: 20),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              users[index].userHandeler,
                              style: const TextStyle(color: Colors.black45),
                            ),
                          ],
                        ),
                        Text(
                          '${users[index].timeSent.toString()}s',
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Text(users[index].message),
                    const SizedBox(
                      height: 10.0,
                    ),

                    //?images here\------------------------
                    if (users[index].isPhotoMessage)
                      Image(
                        image: NetworkImage(users[index].photoUrl),
                      ),
                    //?----------------------------------

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.turn_left,
                                size: 25,
                                color: Colors.blueAccent,
                              ),
                              Text(
                                users[index].forward.toString(),
                                style: const TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                FontAwesomeIcons.retweet,
                                size: 22,
                                color: Colors.blueAccent,
                              ),
                              const SizedBox(width: 8.0),
                              Text(
                                users[index].retweets.toString(),
                                style: const TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                FontAwesomeIcons.heart,
                                size: 22,
                                color: Colors.red,
                              ),
                              const SizedBox(width: 8.0),
                              Text(
                                users[index].likes.toString(),
                                style: const TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                FontAwesomeIcons.comment,
                                size: 22,
                                color: Colors.green,
                              ),
                              const SizedBox(width: 8.0),
                              Text(
                                users[index].comments.toString(),
                                style: const TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
