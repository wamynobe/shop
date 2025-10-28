part of 'collection_detail_cubit.dart';

@freezed
sealed class CollectionDetailState with _$CollectionDetailState {
  const factory CollectionDetailState({
    required AsyncValue<CollectionItemDetail> detail,
  }) = _CollectionDetailState;
}
