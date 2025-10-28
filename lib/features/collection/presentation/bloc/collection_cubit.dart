import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:whisky_shop/core/model/async_value.dart';
import 'package:whisky_shop/features/collection/domain/entities/collection_item.dart';
import 'package:whisky_shop/core/model/result/result.dart';
import 'package:whisky_shop/features/collection/domain/repositories/collection_repository.dart';

part 'collection_state.dart';
part 'collection_cubit.freezed.dart';

class CollectionCubit extends Cubit<CollectionState> {
  CollectionCubit(this._repo)
    : super(const CollectionState(items: AsyncValue.initial()));

  final CollectionRepository _repo;

  Future<void> load() async {
    emit(state.copyWith(items: const AsyncValue.loading()));
    final Result<Exception, List<CollectionItem>> res = await _repo.fetchAll();
    await res.when(
      failure: (e) async => emit(state.copyWith(items: AsyncValue.failure(e))),
      success: (data) async =>
          emit(state.copyWith(items: AsyncValue.data(data))),
    );
  }

  @override
  void emit(CollectionState state) {
    if (isClosed) return;
    super.emit(state);
  }
}
