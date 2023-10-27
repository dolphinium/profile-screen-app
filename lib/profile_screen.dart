import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // Declare and initialize your variables here

  String profileImage = 'assets/images/profile_photo.jpg';
  String name = 'Yunus Emre KORKMAZ';
  String age = '23';
  String classInfo = "4";
  String department = "Computer Engineering";

  IconData brokenHeartIcon = Icons.heart_broken;
  String brokenHeartText = 'A broken heart';
  IconData directionsIcon = Icons.directions_walk;

  String statusText = "Single";
  IconData heartIcon = Icons.favorite;
  String heartText = 'Nasty Girls🔥🔥';

  String nastyGirlsText = '👨🏽‍🦼👨🏽‍🦼';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset('assets/images/background.jpg'),
          Transform.translate(
            offset: Offset(0, 100),
            child: Column(
              children: <Widget>[
                _buildProfileImage(context),
                _buildProfileDetails(context),
                _buildActions(context),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildProfileImage(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      child: ClipOval(
        child: Image.asset(
          profileImage, // Use the profileImage variable here
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }

  Widget _buildProfileDetails(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            name,
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
          ),
          _buildDetailsRow('Class', classInfo),
          _buildDetailsRow('Department', department)
        ],
      ),
    );
  }

  Widget _buildDetailsRow(String heading, String value) {
    return Row(
      children: <Widget>[
        Text(
          '$heading: ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(value)
      ],
    );
  }

  Widget _buildActions(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildIcon(brokenHeartIcon, brokenHeartText),
            _buildIcon(heartIcon, heartText),
            _buildIcon(directionsIcon, nastyGirlsText),
          ],
        ),
        ElevatedButton(
          onPressed:
              _resetValues, // Call the _resetValues method when the button is pressed
          child: Text('Prank Button'),
        ),
      ],
    );
  }

  void _resetValues() {
    setState(() {
      // Update profile image
      profileImage = 'assets/images/profile_photo_real.jpg';

      // Update the values
      name = 'Yunus Emre KORKMAZ';
      // Update the icons and texts
      brokenHeartIcon = Icons.code;
      brokenHeartText = 'Coding';

      heartIcon = Icons.book;
      heartText = 'Reading';

      statusText = 'Studying 🤓';
      nastyGirlsText = 'Science';
      directionsIcon = Icons.science;
    });
  }

  Widget _buildIcon(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[Icon(icon, size: 40), Text(text)],
      ),
    );
  }
}
