// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ProductViewmodel)
final productViewmodelProvider = ProductViewmodelProvider._();

final class ProductViewmodelProvider
    extends $AsyncNotifierProvider<ProductViewmodel, Product> {
  ProductViewmodelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'productViewmodelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$productViewmodelHash();

  @$internal
  @override
  ProductViewmodel create() => ProductViewmodel();
}

String _$productViewmodelHash() => r'dd470debdce1b3491ee8d1b90d433e2ddacea28d';

abstract class _$ProductViewmodel extends $AsyncNotifier<Product> {
  FutureOr<Product> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<Product>, Product>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<Product>, Product>,
              AsyncValue<Product>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
