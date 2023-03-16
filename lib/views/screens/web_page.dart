import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class App_Page extends StatefulWidget {
  final link;

  App_Page({Key? key, required this.link}) : super(key: key);

  @override
  State<App_Page> createState() => _App_PageState();
}

class _App_PageState extends State<App_Page> {
  late InAppWebViewController Mywebcontroller;
  late PullToRefreshController refreshController;

  bool canGoBack = false;
  bool canGoForward = false;

  double progress = 0;
  String myurl = "https://www.hotstar.com/in";
  @override
  void initState() {
    super.initState();
    myurl = widget.link;
    refreshController = PullToRefreshController(
      onRefresh: () {
        setState(() {
          refreshController.endRefreshing();
        });
      },
      options: PullToRefreshOptions(
        enabled: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return SafeArea(
      child: WillPopScope(
        onWillPop: () async {
          if (await Mywebcontroller.canGoBack()) {
            return false;
          } else {
            return true;
          }
        },
        child: Scaffold(
          body: InAppWebView(
            onWebViewCreated: (controller) {
              Mywebcontroller = controller;
            },
            onLoadStart: (con, c) async {
              Uri? dummy = await Mywebcontroller.getUrl();
              myurl = dummy!.scheme;
              this.myurl = c.toString();
              canGoBack = await Mywebcontroller.canGoBack();
              canGoForward = await Mywebcontroller.canGoForward();
              setState(() {});
            },
            onProgressChanged: (controller, p) {
              setState(() {
                progress = p.toDouble();
              });
            },
            pullToRefreshController: refreshController,
            initialUrlRequest: URLRequest(
              url: Uri.parse(myurl),
            ),
            onLoadStop: (InAppWebViewController controller, Uri? url) {
              myurl = url.toString();
              refreshController.endRefreshing();
            },
          ),
        ),
      ),
    );
  }
}
