import 'package:flutter/material.dart';

/// 进度条组件
class LoadingContainer extends StatelessWidget {
  final Widget child;
  final bool isLoading;
  final bool cover;

  const LoadingContainer({
    Key? key,
    required this.isLoading,
    required this.child,
    this.cover = false,
  }) : super(key: key);

  Widget get _loadingView {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return !cover
        ? !isLoading
            ? child
            : _loadingView
        : Stack(
            children: [
              child,
              isLoading ? _loadingView : null as Widget,
            ],
          );
  }
}
