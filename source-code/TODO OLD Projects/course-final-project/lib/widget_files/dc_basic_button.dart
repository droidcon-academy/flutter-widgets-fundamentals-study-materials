import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:widgetbank/dc_helpers.dart';

class DCButton extends StatelessWidget {
  const DCButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Widgets'),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                  onPressed: () {
                    showToast(context, 'button clicked');
                  },
                  child: const Text('I\'m text')),
              const TextButton(onPressed: null, child: Text('I\'m text')),
              const Text(
                'Text Buttons',
                style: TextStyle(fontSize: 15.0),
              )
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () =>
                      showToast(context, 'Elevated button clicked'),
                  child: const Text('I\'m elevated')),
              const ElevatedButton(
                  onPressed: null, child: Text('I\'m disabled')),
              const Text(
                'Elevated Buttons',
                style: TextStyle(fontSize: 15.0),
              )
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(
                  onPressed: () => showSnack(context, 'button clicked'),
                  child: const Text('I\'ve outline')),
              const OutlinedButton(
                  onPressed: null, child: Text('I\'m disabled')),
              const Text(
                'Outlined Buttons',
                style: TextStyle(fontSize: 15.0),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const <Widget>[
              LikeButton(),
              // SizedBox(width: 50),
              Text('LikeButton basic'),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LikeButton(
                likeBuilder: (isLiked) => isLiked
                    ? const Icon(Icons.thumb_up)
                    : const Icon(Icons.thumb_up_outlined),
                likeCount: 5,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 40.0),
                child: Text('LikeButton with count'),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LikeButton(
                  likeBuilder: (isLiked) => const Icon(Icons.thumb_up),
                  isLiked: null,
                  likeCount: 10,
                  countBuilder: (likeCount, isLiked, text) {
                    return Text(likeCount == 0 ? 'liked' : text);
                  }),
              const Text('Like multiple times'),
            ],
          )
        ],
      ),
    );
  }
}
