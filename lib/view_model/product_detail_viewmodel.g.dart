// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detail_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ProductDetailViewmodel)
final productDetailViewmodelProvider = ProductDetailViewmodelFamily._();

final class ProductDetailViewmodelProvider
    extends $AsyncNotifierProvider<ProductDetailViewmodel, ProductElement> {
  ProductDetailViewmodelProvider._({
    required ProductDetailViewmodelFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'productDetailViewmodelProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$productDetailViewmodelHash();

  @override
  String toString() {
    return r'productDetailViewmodelProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ProductDetailViewmodel create() => ProductDetailViewmodel();

  @override
  bool operator ==(Object other) {
    return other is ProductDetailViewmodelProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$productDetailViewmodelHash() =>
    r'cd285038086171989df0033b104c4c189ff90315';

final class ProductDetailViewmodelFamily extends $Family
    with
        $ClassFamilyOverride<
          ProductDetailViewmodel,
          AsyncValue<ProductElement>,
          ProductElement,
          FutureOr<ProductElement>,
          int
        > {
  ProductDetailViewmodelFamily._()
    : super(
        retry: null,
        name: r'productDetailViewmodelProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ProductDetailViewmodelProvider call(int id) =>
      ProductDetailViewmodelProvider._(argument: id, from: this);

  @override
  String toString() => r'productDetailViewmodelProvider';
}

abstract class _$ProductDetailViewmodel extends $AsyncNotifier<ProductElement> {
  late final _$args = ref.$arg as int;
  int get id => _$args;

  FutureOr<ProductElement> build(int id);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<ProductElement>, ProductElement>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<ProductElement>, ProductElement>,
              AsyncValue<ProductElement>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
