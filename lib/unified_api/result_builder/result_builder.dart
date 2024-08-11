import 'package:flutter/material.dart';

import 'result.dart';

class ResultBuilder<T> extends StatelessWidget {
  ResultBuilder({
    Key? key,
    required this.success,
    this.loading,
    required this.onError,
    required this.result,
  }) : super(key: key);

  final Result<T> result;
  Widget Function()? loading;
  final Widget Function(T data) success;
  final Function() onError;

  @override
  Widget build(BuildContext context) {
    late final Widget next;

    loading ??= () => Center(
          child: CircularProgressIndicator(),
        );

    result.when(
      init: () => next = const SizedBox(),
      loading: () => next = loading!(),
      loaded: (data) => next = success(data),
      error: (message) => next = Material(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(
                    child: const Icon(
                      Icons.warning,
                      size: 100,
                    ),
                  ),
                  Center(
                    child: Text(
                      message,
                      style: Theme.of(context).textTheme.displayLarge?.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    child: ElevatedButton(
                      onPressed: onError,
                      child: const Text("إعادة المحاولة"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    return next;
  }
}
