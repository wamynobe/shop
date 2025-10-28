part of 'collection_cubit.dart';

@freezed
sealed class CollectionState with _$CollectionState {
  const factory CollectionState({
    required AsyncValue<List<CollectionItem>> items,
  }) = _CollectionState;
}
