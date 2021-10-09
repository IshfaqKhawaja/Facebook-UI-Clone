import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_responsive_ui/models/user_model.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;
  const CreatePostContainer({Key key, this.currentUser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20.0,
                backgroundColor: Colors.grey[200],
                backgroundImage: CachedNetworkImageProvider(
                  currentUser.imageUrl,
                ),
              ),
              const SizedBox(width: 8.0),
              Expanded(
                  child: TextField(
                decoration: InputDecoration(
                  hintText: 'What\'s on your mind?',
                ),
              ))
            ],
          ),
          const Divider(
            height: 20.0,
            thickness: 1.0,
          ),
          Container(
            height: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton.icon(
                  onPressed: () => print('live'),
                  label: Text('Live'),
                  icon: Icon(
                    Icons.videocam,
                    color: Colors.red,
                  ),
                ),
                const VerticalDivider(
                  width: 8.0,
                ),
                FlatButton.icon(
                  onPressed: () => print('Photo'),
                  label: Text('Photo'),
                  icon: Icon(
                    Icons.photo_library,
                    color: Colors.green,
                  ),
                ),
                const VerticalDivider(
                  width: 8.0,
                ),
                FlatButton.icon(
                  onPressed: () => print('Room'),
                  label: Text('Room'),
                  icon: Icon(
                    Icons.video_call,
                    color: Colors.purpleAccent,
                  ),
                ),
                const VerticalDivider(
                  width: 8.0,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
