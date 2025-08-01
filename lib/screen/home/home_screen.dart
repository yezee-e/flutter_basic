import 'package:flutter/material.dart';
import 'package:flutter_basic/components/custom_images.dart';
import 'package:flutter_basic/extension/ext.context.dart';
import 'package:flutter_basic/extension/ext.widget.dart';
import 'package:flutter_basic/screen/business/business_field_screen.dart';
import 'package:flutter_basic/utilities/asset_manager.dart';

import 'package:webview_flutter/webview_flutter.dart';

enum SumtongMainTab {
  sumTong,
  businessField,
  cummunity,
  counseling;

  String get title {
    switch (this) {
      case SumtongMainTab.sumTong:
        return '숨통';
      case SumtongMainTab.businessField:
        return '업무분야';
      case SumtongMainTab.cummunity:
        return '커뮤니티';
      case SumtongMainTab.counseling:
        return '상담신청';
    }
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController _tabCon;
  late final WebViewController _webViewController;

  @override
  void initState() {
    super.initState();
    _tabCon = TabController(length: SumtongMainTab.values.length, vsync: this);
    _webViewController =
        WebViewController()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..loadRequest(Uri.parse('https://flutter.dev'));
  }

  @override
  void dispose() {
    _tabCon.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomImage(
          imagePath: AssetManager.logoIcon,

          width: 30,
          height: 30,
        ),
        centerTitle: false,
      ),
      body: buildBody(context),
      // drawer: const Drawer(),
    );
  }

  Widget buildBody(BuildContext context) {
    return Center(
      child: Column(
        children: [
          TabBar(
            controller: _tabCon,
            isScrollable: true,
            padding: EdgeInsets.zero,
            indicatorColor: context.colors.information.b10,
            dividerColor: context.colors.neutral.n10,
            indicatorPadding: EdgeInsets.zero,
            tabAlignment: TabAlignment.center,
            labelPadding: const EdgeInsets.symmetric(horizontal: 15),
            tabs:
                SumtongMainTab.values.map((tab) {
                  return Tab(text: tab.title);
                }).toList(),
            // onTap: (index) => onTabTopMenu(context, index),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabCon,
              children: [
                // 숨통 탭
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('숨통,'),
                    Text('신용 회복의 첫걸음부터, 삶의 안정을 위한 길까지 함께합니다.'),
                  ],
                ),
                // 업무분야 탭 - WebView 표시
                WebViewWidget(controller: _webViewController),
                // 커뮤니티 탭
                Center(child: Text('커뮤니티 화면')),
                // 상담신청 탭
                Center(child: Text('상담신청 화면')),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void onTabTopMenu(BuildContext context, int index) {
    final selectedTab = SumtongMainTab.values[index];
    switch (selectedTab) {
      case SumtongMainTab.sumTong:
        break;
      case SumtongMainTab.businessField:
        BusinessFieldScreen().pushNavigate(context);
        break;
      case SumtongMainTab.cummunity:
        break;
      case SumtongMainTab.counseling:
        break;
    }
  }
}
