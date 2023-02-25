import 'package:flutter/material.dart';
import 'package:madways/constants/size_constant.dart';
import 'package:madways/constants/ui_constant.dart';
import 'package:readmore/readmore.dart';

class TechTrendsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Trends of Tech'),
      ),
      body: SingleChildScrollView(
        child: Center(
          /** Card Widget **/
          child: Column(
            children: [
              SizedBox(
                height: 10.0,
              ),
              NewsCard(
                  imgUrl:
                      'https://pbs.twimg.com/media/FpfXenFXwAAtnFU?format=png&name=medium',
                  desc:
                      'Augmented Reality is a past and present for demo text.Augmented Reality is a past and present for demo text.Augmented Reality is a past and present for demo text.Augmented Reality is a past and present for demo text.Augmented Reality is a past and present for demo text.Augmented Reality is a past and present for demo text.Augmented Reality is a past and present for demo text.Augmented Reality is a past and present for demo text.Augmented Reality is a past and present for demo text.Augmented Reality is a past and present for demo text.Augmented Reality is a past and present for demo text.Augmented Reality is a past and present for demo text.Augmented Reality is a past and present for demo text.Augmented Reality is a past and present for demo text.Augmented Reality is a past and present for demo text.Augmented Reality is a past and present for demo text.Augmented Reality is a past and present for demo text.Augmented Reality is a past and present for demo text.Augmented Reality is a past and present for demo text.Augmented Reality is a past and present for demo text.Augmented Reality is a past and present for demo text.Augmented Reality is a past and present for demo text.Augmented Reality is a past and present for demo text.Augmented Reality is a past and present for demo text.',
                  title: 'what is AR?',
                  content:
                      'njvnjscbdkjfjdksfnjgbhdsjvnjhefdkhgijdenbshjruijskdhgdsjknxbjhuisjaksdfhgyseihdncdkjoWUYGEDHSJKAOIUWEYGFHDJAOPIUWhgftuyijvgfeydshujhbgyudjhdfyuhshijhfgyuioeuwyghdjkiuygfrhjfieuygfhjdksiuydjndkjloeiurg',
                  postUrl:
                      'https://pbs.twimg.com/media/FpfXenFXwAAtnFU?format=png&name=medium'),
              NewsCard(
                  imgUrl:
                      'https://pbs.twimg.com/media/FpeHfMFaMAAKQPI?format=jpg&name=medium',
                  desc:
                      'Augmented Reality is a past and present for demo text.Augmented Reality is a past and present for demo text.Augmented Reality is a past and present for demo text.',
                  title: 'what is AR?',
                  content:
                      'njvnjscbdkjfjdksfnjgbhdsjvnjhefdkhgijdenbshjruijskdhgdsjknxbjhuisjaksdfhgyseihdncdkjoWUYGEDHSJKAOIUWEYGFHDJAOPIUWhgftuyijvgfeydshujhbgyudjhdfyuhshijhfgyuioeuwyghdjkiuygfrhjfieuygfhjdksiuydjndkjloeiurg',
                  postUrl:
                      'https://pbs.twimg.com/media/FpeHfMFaMAAKQPI?format=jpg&name=medium'),
              NewsCard(
                  imgUrl:
                      'https://pbs.twimg.com/media/FpfObmkWcAA5Zv6?format=jpg&name=large',
                  desc:
                      'Augmented Reality is a past and present for demo text.Augmented Reality is a past and present for demo text.Augmented Reality is a past and present for demo text.',
                  title: 'what is AR?',
                  content:
                      'njvnjscbdkjfjdksfnjgbhdsjvnjhefdkhgijdenbshjruijskdhgdsjknxbjhuisjaksdfhgyseihdncdkjoWUYGEDHSJKAOIUWEYGFHDJAOPIUWhgftuyijvgfeydshujhbgyudjhdfyuhshijhfgyuioeuwyghdjkiuygfrhjfieuygfhjdksiuydjndkjloeiurg',
                  postUrl:
                      'https://firebasestorage.googleapis.com/v0/b/madways.appspot.com/o/madgineers%2Fposterslogo%2FMadgineers.png?alt=media&token=a4af098c-886a-4056-9ef3-0e485f30db3a'),
              NewsCard(
                  imgUrl:
                      'https://pbs.twimg.com/media/FpeCcXZaYAAwWwt?format=jpg&name=large',
                  desc:
                      'Augmented Reality is a past and present for demo text.Augmented Reality is a past and present for demo text.Augmented Reality is a past and present for demo text.',
                  title: 'what is AR?',
                  content:
                      'njvnjscbdkjfjdksfnjgbhdsjvnjhefdkhgijdenbshjruijskdhgdsjknxbjhuisjaksdfhgyseihdncdkjoWUYGEDHSJKAOIUWEYGFHDJAOPIUWhgftuyijvgfeydshujhbgyudjhdfyuhshijhfgyuioeuwyghdjkiuygfrhjfieuygfhjdksiuydjndkjloeiurg',
                  postUrl:
                      'https://firebasestorage.googleapis.com/v0/b/madways.appspot.com/o/madgineers%2Fposterslogo%2FMadgineers.png?alt=media&token=a4af098c-886a-4056-9ef3-0e485f30db3a'),
              NewsCard(
                  imgUrl:
                      'https://pbs.twimg.com/media/FpRMTnVWAAED0cg?format=png&name=900x900',
                  desc:
                      'Augmented Reality is a past and present for demo text.Augmented Reality is a past and present for demo text.Augmented Reality is a past and present for demo text.',
                  title: 'what is AR?',
                  content:
                      'njvnjscbdkjfjdksfnjgbhdsjvnjhefdkhgijdenbshjruijskdhgdsjknxbjhuisjaksdfhgyseihdncdkjoWUYGEDHSJKAOIUWEYGFHDJAOPIUWhgftuyijvgfeydshujhbgyudjhdfyuhshijhfgyuioeuwyghdjkiuygfrhjfieuygfhjdksiuydjndkjloeiurg',
                  postUrl:
                      'https://firebasestorage.googleapis.com/v0/b/madways.appspot.com/o/madgineers%2Fposterslogo%2FMadgineers.png?alt=media&token=a4af098c-886a-4056-9ef3-0e485f30db3a'),
              NewsCard(
                  imgUrl:
                      'https://firebasestorage.googleapis.com/v0/b/madways.appspot.com/o/madgineers%2Fposterslogo%2FMadgineers.png?alt=media&token=a4af098c-886a-4056-9ef3-0e485f30db3a',
                  desc:
                      'Augmented Reality is a past and present for demo text.Augmented Reality is a past and present for demo text.Augmented Reality is a past and present for demo text.',
                  title: 'what is AR?',
                  content:
                      'njvnjscbdkjfjdksfnjgbhdsjvnjhefdkhgijdenbshjruijskdhgdsjknxbjhuisjaksdfhgyseihdncdkjoWUYGEDHSJKAOIUWEYGFHDJAOPIUWhgftuyijvgfeydshujhbgyudjhdfyuhshijhfgyuioeuwyghdjkiuygfrhjfieuygfhjdksiuydjndkjloeiurg',
                  postUrl:
                      'https://firebasestorage.googleapis.com/v0/b/madways.appspot.com/o/madgineers%2Fposterslogo%2FMadgineers.png?alt=media&token=a4af098c-886a-4056-9ef3-0e485f30db3a'),
              SizedBox(height: 100.0),
            ],
          ), //Card
        ),
      ),
    );
  }
}

class NewsCard extends StatelessWidget {
  final String imgUrl, title, desc, content, postUrl;

  const NewsCard(
      {Key key,
      @required this.imgUrl,
      @required this.desc,
      @required this.title,
      @required this.content,
      @required this.postUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: Sizes.dimen_4,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(Sizes.dimen_10))),
      margin: const EdgeInsets.fromLTRB(
          Sizes.dimen_16, 0, Sizes.dimen_16, Sizes.dimen_16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(Sizes.dimen_10),
                  topRight: Radius.circular(Sizes.dimen_10)),
              child: Image.network(
                imgUrl,
                height: 200,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fill,
                // if the image is null
                errorBuilder: (BuildContext context, Object exception,
                    StackTrace stackTrace) {
                  return Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: const SizedBox(
                      height: 200,
                      width: double.infinity,
                      child: Icon(Icons.broken_image_outlined),
                    ),
                  );
                },
              )),
          vertical15,
          Padding(
            padding: const EdgeInsets.all(Sizes.dimen_6),
            child: Text(
              title,
              maxLines: 2,
              style: const TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            key: const Key('showMore'),
            padding: const EdgeInsets.all(16.0),
            child: ReadMoreText(
              desc,
              trimLines: 2,
              //preDataText: "AMANDA",
              //preDataTextStyle: TextStyle(fontWeight: FontWeight.w500),
              style: TextStyle(color: Colors.black),
              colorClickableText: Colors.blueGrey,
              trimMode: TrimMode.Line,
              trimCollapsedText: '...Read more',
              trimExpandedText: ' show less',
            ),
          ),
        ],
      ),
    );
  }
}
