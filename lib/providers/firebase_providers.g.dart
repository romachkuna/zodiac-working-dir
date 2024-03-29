// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firebase_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchDetailsHash() => r'4ff1027e9ef47744908e607e520d0f6953db59a4';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [fetchDetails].
@ProviderFor(fetchDetails)
const fetchDetailsProvider = FetchDetailsFamily();

/// See also [fetchDetails].
class FetchDetailsFamily extends Family<AsyncValue<FireBaseDetails>> {
  /// See also [fetchDetails].
  const FetchDetailsFamily();

  /// See also [fetchDetails].
  FetchDetailsProvider call({
    required int sign,
    required int day,
  }) {
    return FetchDetailsProvider(
      sign: sign,
      day: day,
    );
  }

  @override
  FetchDetailsProvider getProviderOverride(
    covariant FetchDetailsProvider provider,
  ) {
    return call(
      sign: provider.sign,
      day: provider.day,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'fetchDetailsProvider';
}

/// See also [fetchDetails].
class FetchDetailsProvider extends FutureProvider<FireBaseDetails> {
  /// See also [fetchDetails].
  FetchDetailsProvider({
    required int sign,
    required int day,
  }) : this._internal(
          (ref) => fetchDetails(
            ref as FetchDetailsRef,
            sign: sign,
            day: day,
          ),
          from: fetchDetailsProvider,
          name: r'fetchDetailsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchDetailsHash,
          dependencies: FetchDetailsFamily._dependencies,
          allTransitiveDependencies:
              FetchDetailsFamily._allTransitiveDependencies,
          sign: sign,
          day: day,
        );

  FetchDetailsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.sign,
    required this.day,
  }) : super.internal();

  final int sign;
  final int day;

  @override
  Override overrideWith(
    FutureOr<FireBaseDetails> Function(FetchDetailsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchDetailsProvider._internal(
        (ref) => create(ref as FetchDetailsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        sign: sign,
        day: day,
      ),
    );
  }

  @override
  FutureProviderElement<FireBaseDetails> createElement() {
    return _FetchDetailsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchDetailsProvider &&
        other.sign == sign &&
        other.day == day;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, sign.hashCode);
    hash = _SystemHash.combine(hash, day.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchDetailsRef on FutureProviderRef<FireBaseDetails> {
  /// The parameter `sign` of this provider.
  int get sign;

  /// The parameter `day` of this provider.
  int get day;
}

class _FetchDetailsProviderElement
    extends FutureProviderElement<FireBaseDetails> with FetchDetailsRef {
  _FetchDetailsProviderElement(super.provider);

  @override
  int get sign => (origin as FetchDetailsProvider).sign;
  @override
  int get day => (origin as FetchDetailsProvider).day;
}

String _$fetchCompatibilityHash() =>
    r'dc79b8fb001ad18341839a3891051b628422046d';

/// See also [fetchCompatibility].
@ProviderFor(fetchCompatibility)
const fetchCompatibilityProvider = FetchCompatibilityFamily();

/// See also [fetchCompatibility].
class FetchCompatibilityFamily
    extends Family<AsyncValue<FireBaseCompatibility>> {
  /// See also [fetchCompatibility].
  const FetchCompatibilityFamily();

  /// See also [fetchCompatibility].
  FetchCompatibilityProvider call({
    required int firstSign,
    required int secondSign,
  }) {
    return FetchCompatibilityProvider(
      firstSign: firstSign,
      secondSign: secondSign,
    );
  }

  @override
  FetchCompatibilityProvider getProviderOverride(
    covariant FetchCompatibilityProvider provider,
  ) {
    return call(
      firstSign: provider.firstSign,
      secondSign: provider.secondSign,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'fetchCompatibilityProvider';
}

/// See also [fetchCompatibility].
class FetchCompatibilityProvider
    extends AutoDisposeFutureProvider<FireBaseCompatibility> {
  /// See also [fetchCompatibility].
  FetchCompatibilityProvider({
    required int firstSign,
    required int secondSign,
  }) : this._internal(
          (ref) => fetchCompatibility(
            ref as FetchCompatibilityRef,
            firstSign: firstSign,
            secondSign: secondSign,
          ),
          from: fetchCompatibilityProvider,
          name: r'fetchCompatibilityProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchCompatibilityHash,
          dependencies: FetchCompatibilityFamily._dependencies,
          allTransitiveDependencies:
              FetchCompatibilityFamily._allTransitiveDependencies,
          firstSign: firstSign,
          secondSign: secondSign,
        );

  FetchCompatibilityProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.firstSign,
    required this.secondSign,
  }) : super.internal();

  final int firstSign;
  final int secondSign;

  @override
  Override overrideWith(
    FutureOr<FireBaseCompatibility> Function(FetchCompatibilityRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchCompatibilityProvider._internal(
        (ref) => create(ref as FetchCompatibilityRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        firstSign: firstSign,
        secondSign: secondSign,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<FireBaseCompatibility> createElement() {
    return _FetchCompatibilityProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchCompatibilityProvider &&
        other.firstSign == firstSign &&
        other.secondSign == secondSign;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, firstSign.hashCode);
    hash = _SystemHash.combine(hash, secondSign.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchCompatibilityRef
    on AutoDisposeFutureProviderRef<FireBaseCompatibility> {
  /// The parameter `firstSign` of this provider.
  int get firstSign;

  /// The parameter `secondSign` of this provider.
  int get secondSign;
}

class _FetchCompatibilityProviderElement
    extends AutoDisposeFutureProviderElement<FireBaseCompatibility>
    with FetchCompatibilityRef {
  _FetchCompatibilityProviderElement(super.provider);

  @override
  int get firstSign => (origin as FetchCompatibilityProvider).firstSign;
  @override
  int get secondSign => (origin as FetchCompatibilityProvider).secondSign;
}

String _$fetchHomePageContentHash() =>
    r'0eb23bb7da101dd3339064583ec7876c2c936e21';

/// See also [fetchHomePageContent].
@ProviderFor(fetchHomePageContent)
const fetchHomePageContentProvider = FetchHomePageContentFamily();

/// See also [fetchHomePageContent].
class FetchHomePageContentFamily extends Family<AsyncValue<HomePageContent>> {
  /// See also [fetchHomePageContent].
  const FetchHomePageContentFamily();

  /// See also [fetchHomePageContent].
  FetchHomePageContentProvider call({
    required int sign,
    required int day,
  }) {
    return FetchHomePageContentProvider(
      sign: sign,
      day: day,
    );
  }

  @override
  FetchHomePageContentProvider getProviderOverride(
    covariant FetchHomePageContentProvider provider,
  ) {
    return call(
      sign: provider.sign,
      day: provider.day,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'fetchHomePageContentProvider';
}

/// See also [fetchHomePageContent].
class FetchHomePageContentProvider extends FutureProvider<HomePageContent> {
  /// See also [fetchHomePageContent].
  FetchHomePageContentProvider({
    required int sign,
    required int day,
  }) : this._internal(
          (ref) => fetchHomePageContent(
            ref as FetchHomePageContentRef,
            sign: sign,
            day: day,
          ),
          from: fetchHomePageContentProvider,
          name: r'fetchHomePageContentProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchHomePageContentHash,
          dependencies: FetchHomePageContentFamily._dependencies,
          allTransitiveDependencies:
              FetchHomePageContentFamily._allTransitiveDependencies,
          sign: sign,
          day: day,
        );

  FetchHomePageContentProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.sign,
    required this.day,
  }) : super.internal();

  final int sign;
  final int day;

  @override
  Override overrideWith(
    FutureOr<HomePageContent> Function(FetchHomePageContentRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchHomePageContentProvider._internal(
        (ref) => create(ref as FetchHomePageContentRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        sign: sign,
        day: day,
      ),
    );
  }

  @override
  FutureProviderElement<HomePageContent> createElement() {
    return _FetchHomePageContentProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchHomePageContentProvider &&
        other.sign == sign &&
        other.day == day;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, sign.hashCode);
    hash = _SystemHash.combine(hash, day.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchHomePageContentRef on FutureProviderRef<HomePageContent> {
  /// The parameter `sign` of this provider.
  int get sign;

  /// The parameter `day` of this provider.
  int get day;
}

class _FetchHomePageContentProviderElement
    extends FutureProviderElement<HomePageContent>
    with FetchHomePageContentRef {
  _FetchHomePageContentProviderElement(super.provider);

  @override
  int get sign => (origin as FetchHomePageContentProvider).sign;
  @override
  int get day => (origin as FetchHomePageContentProvider).day;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
