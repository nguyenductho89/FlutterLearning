import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'ListPhotoViewModel.dart';
import 'PhotoModel.dart';

class Domain_Layer_HomeScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context,
      T Function<T>(ProviderBase<Object, T> provider) watch) {
    AsyncValue<List<PhotoModel>> photos = watch(photostateFuture);
    return Scaffold(
      appBar: AppBar(
        title: Text('Fetching API using riverpod'),
      ),
      body: photos.when(
        loading: () => Center(child: const CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('${error.toString()}')),
        data: (value) {
          return ListView.builder(
            itemCount: value.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: CircleAvatar(
                    backgroundImage: NetworkImage(value[index].url)),
                title: Text(value[index].title),
              );
            },
          );
        },
      ),
    );
  }
}
