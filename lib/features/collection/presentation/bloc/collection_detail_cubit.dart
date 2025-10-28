import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:whisky_shop/core/model/async_value.dart';
import 'package:whisky_shop/core/model/result/result.dart';
import 'package:whisky_shop/features/collection/domain/entities/collection_item_detail.dart';
import 'package:whisky_shop/features/collection/domain/repositories/collection_repository.dart';

part 'collection_detail_state.dart';
part 'collection_detail_cubit.freezed.dart';

class CollectionDetailCubit extends Cubit<CollectionDetailState> {
  CollectionDetailCubit(this._repo)
    : super(const CollectionDetailState(detail: AsyncValue.initial()));

  final CollectionRepository _repo;

  Future<void> loadById(String id) async {
    emit(state.copyWith(detail: const AsyncValue.loading()));
    final Result<Exception, CollectionItemDetail> res = await _repo
        .fetchItemById(id);

    await res.when(
      failure: (e) async => emit(state.copyWith(detail: AsyncValue.failure(e))),
      success: (data) async =>
          emit(state.copyWith(detail: AsyncValue.data(data))),
    );
  }

  @override
  void emit(CollectionDetailState state) {
    if (isClosed) return;
    super.emit(state);
  }
}
