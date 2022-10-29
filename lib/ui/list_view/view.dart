import 'package:flutter/material.dart';
enum UIListViewStatus {
  waitFirstData, // 等待第一次请求数据中
  loading, // 加载中
  noMoreData, // 没有更多数据
  noData, // 无数据
  view,
}


class UIListView extends StatefulWidget {
  UIListView({Key? key, required this.onLoadData,required this.buildItem, required this.pageSize}) : super(key: key);
  List data = []; // 内部保存的数据流
  Function onLoadData; // 加载数据的回调
  Function buildItem;
  int pageNum = 1; //当前页
  int pageSize = 10;
  bool enableRefresh = true;
  Function? onRefresh;
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
        }else if(list.length < widget.pageSize){
          widget.status = UIListViewStatus.noMoreData;
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
    Widget scroll = ListView.builder(
      itemCount: widget.data.length,
      controller: _scrollController,
      itemBuilder: _item,
    );

    return widget.enableRefresh ? RefreshIndicator(
      onRefresh: (){
        widget.pageNum = 1;
        widget.status = UIListViewStatus.loading;
        widget.onLoadData(widget.pageNum).then((List list){
          widget.data = list;
          if(list.isEmpty){
            widget.status = UIListViewStatus.noData;
          }else{
            widget.status = UIListViewStatus.view;
          }
          setState(() {});
        });
        if(widget.onRefresh != null){
          widget.onRefresh!();
        }
        return Future.delayed(Duration(seconds: 2));
      },
      child: scroll
    ): scroll;
  }

  Widget _item(BuildContext context, int index) {

    var itemDiv = widget.buildItem(widget.data[index]);

    // 数据加载
    if(index == widget.data.length -1 && widget.status == UIListViewStatus.view) {
      widget.status = UIListViewStatus.loading;
      widget.onLoadData(widget.pageNum++).then((List list) {
        if (list.isEmpty || list.length < widget.pageSize) {
          widget.status = UIListViewStatus.noMoreData;
        } else {
          widget.status = UIListViewStatus.view;
          widget.data.addAll(list);
        }
        setState(() {});
      });
    }

    // 数据渲染
    if(index == widget.data.length -1){
      if(widget.status == UIListViewStatus.loading){
        return Column(
          children: [
            itemDiv,
            Text('加载中'),
          ],
        );
      }else if(widget.status == UIListViewStatus.noMoreData){
        return Column(
          children: [
            itemDiv,
            Text('没有更多数据了'),
          ],
        );
      }
    }

    return itemDiv;
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }
}
