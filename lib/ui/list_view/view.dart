import 'package:flutter/material.dart';
enum UIListViewStatus {
  waitFirstData, // 等待第一次请求数据中
  loading, // 加载中
  noMoreData, // 没有更多数据
  noData, // 无数据
  view,
}


class UIListView extends StatefulWidget {
  UIListView({Key? key, required this.onLoadData}) : super(key: key);
  List data = []; // 内部保存的数据流
  Function onLoadData; // 加载数据的回调
  int pageNum = 1; //当前页
  UIListViewStatus status = UIListViewStatus.waitFirstData;
  @override
  State<UIListView> createState() => _UIListViewState();
}

class _UIListViewState extends State<UIListView> {

  final ScrollController _scrollController = ScrollController();
  @override
  void initState()  {
    super.initState();
    _scrollController.addListener(() {
    });

    // 如果是第一次初始化，切没有数据调用第一次请求
    if(widget.status == UIListViewStatus.waitFirstData){
      widget.onLoadData(widget.pageNum).then((List list){
        widget.status = UIListViewStatus.view;
        if (list.isEmpty){
          widget.status = UIListViewStatus.noData;
          return;
        }
        widget.data.addAll(list);
        setState(() {});
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return _body();
  }

  Widget _body(){
    if(widget.status == UIListViewStatus.waitFirstData){
      return Container(child: Text('首次数据加载中'),);
    }else if(widget.status == UIListViewStatus.noData || widget.data.isEmpty){
      return Container(child: Text('无数据'),);
    }
    return RefreshIndicator(
      onRefresh: (){
        return Future.delayed(Duration(seconds: 2));
      },
      child: ListView.builder(
        itemCount: widget.data.length,
        controller: _scrollController,
        itemBuilder: _item,
      ),
    );
  }

  Widget _item(BuildContext context, int index) {
    if(index == widget.data.length -1 && widget.status == UIListViewStatus.view){

      widget.status = UIListViewStatus.loading;
      widget.onLoadData(widget.pageNum++).then( (List list) {
        if(list.isEmpty){
          widget.status = UIListViewStatus.noMoreData;
        }else{
          widget.status = UIListViewStatus.view;
          widget.data.addAll(list);
          setState(() {});
        }
      });
    }

    var itemDiv = Container(
        height: 50,
        margin: const EdgeInsets.only(top: 10, bottom: 10),
        color: Colors.red,
        child: Text(widget.status.toString()),
    );

    if(widget.status == UIListViewStatus.loading){
      return Column(
        children: [
          itemDiv,
          Text('加载中'),
        ],
      );
    }
    return itemDiv;

    // return Container(
    //   height: 50,
    //   margin: const EdgeInsets.only(top: 10, bottom: 10),
    //   color: Colors.red,
    //   child: Text(widget.status.toString()),
    // );
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }
}
