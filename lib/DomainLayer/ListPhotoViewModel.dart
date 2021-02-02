import 'package:flutter_riverpod/all.dart';
import 'PhotoModel.dart';
import 'RestfulClient.dart';

/// A provider that asynchronously expose the current data.
final photostateFuture = FutureProvider<List<PhotoModel>>((ref) async {
  return fetchPhotos();
});
