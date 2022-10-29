import 'package:flutter/material.dart';
enum UIListViewStatus {
  waitFirstData, // 等待第一次请求数据中
  loading, // 加载中
  noMoreData, // 没有更多数据
  noData, // 无数据
}
class UIListView extends StatefulWidget {
  UIListView({Key? key, required len}) : super(key: key);
  int? len;
  @override
  State<UIListView> createState() => _UIListViewState();

}

class _UIListViewState extends State<UIListView> {

  final ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==  _scrollController.position.maxScrollExtent) {
        print('加载数据');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      // edgeOffset: 90,
      onRefresh: (){
        print('触顶');
        return Future.delayed(Duration(seconds: 2));
      },
      child: ListView.builder(
        itemCount: 100,
        controller: _scrollController,
        itemBuilder: _item,
      ),
    );
  }

  Widget _item(BuildContext context, int index){
    return Container(
      height: 50,
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      color: Colors.red,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }
}
