// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of models;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthState _$AuthStateFromJson(Map<String, dynamic> json) {
  return AuthState$.fromJson(json);
}

/// @nodoc
mixin _$AuthState {
  LoginUser? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) = _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({LoginUser? user});

  $LoginUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as LoginUser?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $LoginUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthState$CopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$AuthState$CopyWith(_$AuthState$ value, $Res Function(_$AuthState$) then) =
      __$$AuthState$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LoginUser? user});

  @override
  $LoginUserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$AuthState$CopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res, _$AuthState$>
    implements _$$AuthState$CopyWith<$Res> {
  __$$AuthState$CopyWithImpl(_$AuthState$ _value, $Res Function(_$AuthState$) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$AuthState$(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as LoginUser?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthState$ implements AuthState$ {
  const _$AuthState$({this.user = null});

  factory _$AuthState$.fromJson(Map<String, dynamic> json) => _$$AuthState$FromJson(json);

  @override
  @JsonKey()
  final LoginUser? user;

  @override
  String toString() {
    return 'AuthState(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthState$ &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthState$CopyWith<_$AuthState$> get copyWith => __$$AuthState$CopyWithImpl<_$AuthState$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthState$ToJson(
      this,
    );
  }
}

abstract class AuthState$ implements AuthState {
  const factory AuthState$({final LoginUser? user}) = _$AuthState$;

  factory AuthState$.fromJson(Map<String, dynamic> json) = _$AuthState$.fromJson;

  @override
  LoginUser? get user;
  @override
  @JsonKey(ignore: true)
  _$$AuthState$CopyWith<_$AuthState$> get copyWith => throw _privateConstructorUsedError;
}

Product _$ProductFromJson(Map<String, dynamic> json) {
  return Product$.fromJson(json);
}

/// @nodoc
mixin _$Product {
  String? get drug => throw _privateConstructorUsedError;
  String? get pharmacy => throw _privateConstructorUsedError;
  Map<String, dynamic>? get coordinates => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  double? get distance => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) = _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {String? drug,
      String? pharmacy,
      Map<String, dynamic>? coordinates,
      double? price,
      double? distance,
      String? address});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product> implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? drug = freezed,
    Object? pharmacy = freezed,
    Object? coordinates = freezed,
    Object? price = freezed,
    Object? distance = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      drug: freezed == drug
          ? _value.drug
          : drug // ignore: cast_nullable_to_non_nullable
              as String?,
      pharmacy: freezed == pharmacy
          ? _value.pharmacy
          : pharmacy // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: freezed == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Product$CopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$Product$CopyWith(_$Product$ value, $Res Function(_$Product$) then) = __$$Product$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? drug,
      String? pharmacy,
      Map<String, dynamic>? coordinates,
      double? price,
      double? distance,
      String? address});
}

/// @nodoc
class __$$Product$CopyWithImpl<$Res> extends _$ProductCopyWithImpl<$Res, _$Product$>
    implements _$$Product$CopyWith<$Res> {
  __$$Product$CopyWithImpl(_$Product$ _value, $Res Function(_$Product$) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? drug = freezed,
    Object? pharmacy = freezed,
    Object? coordinates = freezed,
    Object? price = freezed,
    Object? distance = freezed,
    Object? address = freezed,
  }) {
    return _then(_$Product$(
      drug: freezed == drug
          ? _value.drug
          : drug // ignore: cast_nullable_to_non_nullable
              as String?,
      pharmacy: freezed == pharmacy
          ? _value.pharmacy
          : pharmacy // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: freezed == coordinates
          ? _value._coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Product$ implements Product$ {
  const _$Product$(
      {this.drug, this.pharmacy, final Map<String, dynamic>? coordinates, this.price, this.distance, this.address})
      : _coordinates = coordinates;

  factory _$Product$.fromJson(Map<String, dynamic> json) => _$$Product$FromJson(json);

  @override
  final String? drug;
  @override
  final String? pharmacy;
  final Map<String, dynamic>? _coordinates;
  @override
  Map<String, dynamic>? get coordinates {
    final value = _coordinates;
    if (value == null) return null;
    if (_coordinates is EqualUnmodifiableMapView) return _coordinates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final double? price;
  @override
  final double? distance;
  @override
  final String? address;

  @override
  String toString() {
    return 'Product(drug: $drug, pharmacy: $pharmacy, coordinates: $coordinates, price: $price, distance: $distance, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Product$ &&
            (identical(other.drug, drug) || other.drug == drug) &&
            (identical(other.pharmacy, pharmacy) || other.pharmacy == pharmacy) &&
            const DeepCollectionEquality().equals(other._coordinates, _coordinates) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.distance, distance) || other.distance == distance) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, drug, pharmacy, const DeepCollectionEquality().hash(_coordinates), price, distance, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Product$CopyWith<_$Product$> get copyWith => __$$Product$CopyWithImpl<_$Product$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Product$ToJson(
      this,
    );
  }
}

abstract class Product$ implements Product {
  const factory Product$(
      {final String? drug,
      final String? pharmacy,
      final Map<String, dynamic>? coordinates,
      final double? price,
      final double? distance,
      final String? address}) = _$Product$;

  factory Product$.fromJson(Map<String, dynamic> json) = _$Product$.fromJson;

  @override
  String? get drug;
  @override
  String? get pharmacy;
  @override
  Map<String, dynamic>? get coordinates;
  @override
  double? get price;
  @override
  double? get distance;
  @override
  String? get address;
  @override
  @JsonKey(ignore: true)
  _$$Product$CopyWith<_$Product$> get copyWith => throw _privateConstructorUsedError;
}

LoginUser _$LoginUserFromJson(Map<String, dynamic> json) {
  return LoginUser$.fromJson(json);
}

/// @nodoc
mixin _$LoginUser {
  String get email => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginUserCopyWith<LoginUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginUserCopyWith<$Res> {
  factory $LoginUserCopyWith(LoginUser value, $Res Function(LoginUser) then) = _$LoginUserCopyWithImpl<$Res, LoginUser>;
  @useResult
  $Res call({String email, String uid, String displayName});
}

/// @nodoc
class _$LoginUserCopyWithImpl<$Res, $Val extends LoginUser> implements $LoginUserCopyWith<$Res> {
  _$LoginUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? uid = null,
    Object? displayName = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginUser$CopyWith<$Res> implements $LoginUserCopyWith<$Res> {
  factory _$$LoginUser$CopyWith(_$LoginUser$ value, $Res Function(_$LoginUser$) then) =
      __$$LoginUser$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String uid, String displayName});
}

/// @nodoc
class __$$LoginUser$CopyWithImpl<$Res> extends _$LoginUserCopyWithImpl<$Res, _$LoginUser$>
    implements _$$LoginUser$CopyWith<$Res> {
  __$$LoginUser$CopyWithImpl(_$LoginUser$ _value, $Res Function(_$LoginUser$) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? uid = null,
    Object? displayName = null,
  }) {
    return _then(_$LoginUser$(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginUser$ implements LoginUser$ {
  const _$LoginUser$({required this.email, required this.uid, required this.displayName});

  factory _$LoginUser$.fromJson(Map<String, dynamic> json) => _$$LoginUser$FromJson(json);

  @override
  final String email;
  @override
  final String uid;
  @override
  final String displayName;

  @override
  String toString() {
    return 'LoginUser(email: $email, uid: $uid, displayName: $displayName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginUser$ &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.displayName, displayName) || other.displayName == displayName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, uid, displayName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginUser$CopyWith<_$LoginUser$> get copyWith => __$$LoginUser$CopyWithImpl<_$LoginUser$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginUser$ToJson(
      this,
    );
  }
}

abstract class LoginUser$ implements LoginUser {
  const factory LoginUser$(
      {required final String email, required final String uid, required final String displayName}) = _$LoginUser$;

  factory LoginUser$.fromJson(Map<String, dynamic> json) = _$LoginUser$.fromJson;

  @override
  String get email;
  @override
  String get uid;
  @override
  String get displayName;
  @override
  @JsonKey(ignore: true)
  _$$LoginUser$CopyWith<_$LoginUser$> get copyWith => throw _privateConstructorUsedError;
}

AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return AppState$.fromJson(json);
}

/// @nodoc
mixin _$AppState {
  AuthState get auth => throw _privateConstructorUsedError;
  SearchState get search => throw _privateConstructorUsedError;
  LocationState get locationState => throw _privateConstructorUsedError;
  Basket get basket => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) = _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call({AuthState auth, SearchState search, LocationState locationState, Basket basket});

  $AuthStateCopyWith<$Res> get auth;
  $SearchStateCopyWith<$Res> get search;
  $LocationStateCopyWith<$Res> get locationState;
  $BasketCopyWith<$Res> get basket;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auth = null,
    Object? search = null,
    Object? locationState = null,
    Object? basket = null,
  }) {
    return _then(_value.copyWith(
      auth: null == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as AuthState,
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as SearchState,
      locationState: null == locationState
          ? _value.locationState
          : locationState // ignore: cast_nullable_to_non_nullable
              as LocationState,
      basket: null == basket
          ? _value.basket
          : basket // ignore: cast_nullable_to_non_nullable
              as Basket,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthStateCopyWith<$Res> get auth {
    return $AuthStateCopyWith<$Res>(_value.auth, (value) {
      return _then(_value.copyWith(auth: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchStateCopyWith<$Res> get search {
    return $SearchStateCopyWith<$Res>(_value.search, (value) {
      return _then(_value.copyWith(search: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationStateCopyWith<$Res> get locationState {
    return $LocationStateCopyWith<$Res>(_value.locationState, (value) {
      return _then(_value.copyWith(locationState: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BasketCopyWith<$Res> get basket {
    return $BasketCopyWith<$Res>(_value.basket, (value) {
      return _then(_value.copyWith(basket: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppState$CopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$$AppState$CopyWith(_$AppState$ value, $Res Function(_$AppState$) then) = __$$AppState$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthState auth, SearchState search, LocationState locationState, Basket basket});

  @override
  $AuthStateCopyWith<$Res> get auth;
  @override
  $SearchStateCopyWith<$Res> get search;
  @override
  $LocationStateCopyWith<$Res> get locationState;
  @override
  $BasketCopyWith<$Res> get basket;
}

/// @nodoc
class __$$AppState$CopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res, _$AppState$>
    implements _$$AppState$CopyWith<$Res> {
  __$$AppState$CopyWithImpl(_$AppState$ _value, $Res Function(_$AppState$) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auth = null,
    Object? search = null,
    Object? locationState = null,
    Object? basket = null,
  }) {
    return _then(_$AppState$(
      auth: null == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as AuthState,
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as SearchState,
      locationState: null == locationState
          ? _value.locationState
          : locationState // ignore: cast_nullable_to_non_nullable
              as LocationState,
      basket: null == basket
          ? _value.basket
          : basket // ignore: cast_nullable_to_non_nullable
              as Basket,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppState$ implements AppState$ {
  const _$AppState$(
      {this.auth = const AuthState(),
      this.search = const SearchState(),
      this.locationState = const LocationState(),
      this.basket = const Basket()});

  factory _$AppState$.fromJson(Map<String, dynamic> json) => _$$AppState$FromJson(json);

  @override
  @JsonKey()
  final AuthState auth;
  @override
  @JsonKey()
  final SearchState search;
  @override
  @JsonKey()
  final LocationState locationState;
  @override
  @JsonKey()
  final Basket basket;

  @override
  String toString() {
    return 'AppState(auth: $auth, search: $search, locationState: $locationState, basket: $basket)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppState$ &&
            (identical(other.auth, auth) || other.auth == auth) &&
            (identical(other.search, search) || other.search == search) &&
            (identical(other.locationState, locationState) || other.locationState == locationState) &&
            (identical(other.basket, basket) || other.basket == basket));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, auth, search, locationState, basket);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppState$CopyWith<_$AppState$> get copyWith => __$$AppState$CopyWithImpl<_$AppState$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppState$ToJson(
      this,
    );
  }
}

abstract class AppState$ implements AppState {
  const factory AppState$(
      {final AuthState auth,
      final SearchState search,
      final LocationState locationState,
      final Basket basket}) = _$AppState$;

  factory AppState$.fromJson(Map<String, dynamic> json) = _$AppState$.fromJson;

  @override
  AuthState get auth;
  @override
  SearchState get search;
  @override
  LocationState get locationState;
  @override
  Basket get basket;
  @override
  @JsonKey(ignore: true)
  _$$AppState$CopyWith<_$AppState$> get copyWith => throw _privateConstructorUsedError;
}

SearchState _$SearchStateFromJson(Map<String, dynamic> json) {
  return SearchState$.fromJson(json);
}

/// @nodoc
mixin _$SearchState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call({bool isLoading, List<Product> products});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchState$CopyWith<$Res> implements $SearchStateCopyWith<$Res> {
  factory _$$SearchState$CopyWith(_$SearchState$ value, $Res Function(_$SearchState$) then) =
      __$$SearchState$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<Product> products});
}

/// @nodoc
class __$$SearchState$CopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res, _$SearchState$>
    implements _$$SearchState$CopyWith<$Res> {
  __$$SearchState$CopyWithImpl(_$SearchState$ _value, $Res Function(_$SearchState$) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? products = null,
  }) {
    return _then(_$SearchState$(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchState$ implements SearchState$ {
  const _$SearchState$({this.isLoading = false, final List<Product> products = const []}) : _products = products;

  factory _$SearchState$.fromJson(Map<String, dynamic> json) => _$$SearchState$FromJson(json);

  @override
  @JsonKey()
  final bool isLoading;
  final List<Product> _products;
  @override
  @JsonKey()
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'SearchState(isLoading: $isLoading, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchState$ &&
            (identical(other.isLoading, isLoading) || other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isLoading, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchState$CopyWith<_$SearchState$> get copyWith =>
      __$$SearchState$CopyWithImpl<_$SearchState$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchState$ToJson(
      this,
    );
  }
}

abstract class SearchState$ implements SearchState {
  const factory SearchState$({final bool isLoading, final List<Product> products}) = _$SearchState$;

  factory SearchState$.fromJson(Map<String, dynamic> json) = _$SearchState$.fromJson;

  @override
  bool get isLoading;
  @override
  List<Product> get products;
  @override
  @JsonKey(ignore: true)
  _$$SearchState$CopyWith<_$SearchState$> get copyWith => throw _privateConstructorUsedError;
}

LocationState _$LocationStateFromJson(Map<String, dynamic> json) {
  return LocationState$.fromJson(json);
}

/// @nodoc
mixin _$LocationState {
  LocationModel? get currentLocation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationStateCopyWith<LocationState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res, LocationState>;
  @useResult
  $Res call({LocationModel? currentLocation});

  $LocationModelCopyWith<$Res>? get currentLocation;
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res, $Val extends LocationState> implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLocation = freezed,
  }) {
    return _then(_value.copyWith(
      currentLocation: freezed == currentLocation
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res>? get currentLocation {
    if (_value.currentLocation == null) {
      return null;
    }

    return $LocationModelCopyWith<$Res>(_value.currentLocation!, (value) {
      return _then(_value.copyWith(currentLocation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LocationState$CopyWith<$Res> implements $LocationStateCopyWith<$Res> {
  factory _$$LocationState$CopyWith(_$LocationState$ value, $Res Function(_$LocationState$) then) =
      __$$LocationState$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LocationModel? currentLocation});

  @override
  $LocationModelCopyWith<$Res>? get currentLocation;
}

/// @nodoc
class __$$LocationState$CopyWithImpl<$Res> extends _$LocationStateCopyWithImpl<$Res, _$LocationState$>
    implements _$$LocationState$CopyWith<$Res> {
  __$$LocationState$CopyWithImpl(_$LocationState$ _value, $Res Function(_$LocationState$) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLocation = freezed,
  }) {
    return _then(_$LocationState$(
      currentLocation: freezed == currentLocation
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationState$ implements LocationState$ {
  const _$LocationState$({this.currentLocation = null});

  factory _$LocationState$.fromJson(Map<String, dynamic> json) => _$$LocationState$FromJson(json);

  @override
  @JsonKey()
  final LocationModel? currentLocation;

  @override
  String toString() {
    return 'LocationState(currentLocation: $currentLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationState$ &&
            (identical(other.currentLocation, currentLocation) || other.currentLocation == currentLocation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currentLocation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationState$CopyWith<_$LocationState$> get copyWith =>
      __$$LocationState$CopyWithImpl<_$LocationState$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationState$ToJson(
      this,
    );
  }
}

abstract class LocationState$ implements LocationState {
  const factory LocationState$({final LocationModel? currentLocation}) = _$LocationState$;

  factory LocationState$.fromJson(Map<String, dynamic> json) = _$LocationState$.fromJson;

  @override
  LocationModel? get currentLocation;
  @override
  @JsonKey(ignore: true)
  _$$LocationState$CopyWith<_$LocationState$> get copyWith => throw _privateConstructorUsedError;
}

LocationModel _$LocationModelFromJson(Map<String, dynamic> json) {
  return LocationModel$.fromJson(json);
}

/// @nodoc
mixin _$LocationModel {
  double get lat => throw _privateConstructorUsedError;
  double get long => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationModelCopyWith<LocationModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationModelCopyWith<$Res> {
  factory $LocationModelCopyWith(LocationModel value, $Res Function(LocationModel) then) =
      _$LocationModelCopyWithImpl<$Res, LocationModel>;
  @useResult
  $Res call({double lat, double long});
}

/// @nodoc
class _$LocationModelCopyWithImpl<$Res, $Val extends LocationModel> implements $LocationModelCopyWith<$Res> {
  _$LocationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? long = null,
  }) {
    return _then(_value.copyWith(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationModel$CopyWith<$Res> implements $LocationModelCopyWith<$Res> {
  factory _$$LocationModel$CopyWith(_$LocationModel$ value, $Res Function(_$LocationModel$) then) =
      __$$LocationModel$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double lat, double long});
}

/// @nodoc
class __$$LocationModel$CopyWithImpl<$Res> extends _$LocationModelCopyWithImpl<$Res, _$LocationModel$>
    implements _$$LocationModel$CopyWith<$Res> {
  __$$LocationModel$CopyWithImpl(_$LocationModel$ _value, $Res Function(_$LocationModel$) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? long = null,
  }) {
    return _then(_$LocationModel$(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationModel$ implements LocationModel$ {
  const _$LocationModel$({required this.lat, required this.long});

  factory _$LocationModel$.fromJson(Map<String, dynamic> json) => _$$LocationModel$FromJson(json);

  @override
  final double lat;
  @override
  final double long;

  @override
  String toString() {
    return 'LocationModel(lat: $lat, long: $long)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationModel$ &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.long, long) || other.long == long));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lat, long);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationModel$CopyWith<_$LocationModel$> get copyWith =>
      __$$LocationModel$CopyWithImpl<_$LocationModel$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationModel$ToJson(
      this,
    );
  }
}

abstract class LocationModel$ implements LocationModel {
  const factory LocationModel$({required final double lat, required final double long}) = _$LocationModel$;

  factory LocationModel$.fromJson(Map<String, dynamic> json) = _$LocationModel$.fromJson;

  @override
  double get lat;
  @override
  double get long;
  @override
  @JsonKey(ignore: true)
  _$$LocationModel$CopyWith<_$LocationModel$> get copyWith => throw _privateConstructorUsedError;
}

Basket _$BasketFromJson(Map<String, dynamic> json) {
  return Basket$.fromJson(json);
}

/// @nodoc
mixin _$Basket {
  List<BasketProduct> get basketProducts => throw _privateConstructorUsedError;
  double get totalPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BasketCopyWith<Basket> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketCopyWith<$Res> {
  factory $BasketCopyWith(Basket value, $Res Function(Basket) then) = _$BasketCopyWithImpl<$Res, Basket>;
  @useResult
  $Res call({List<BasketProduct> basketProducts, double totalPrice});
}

/// @nodoc
class _$BasketCopyWithImpl<$Res, $Val extends Basket> implements $BasketCopyWith<$Res> {
  _$BasketCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? basketProducts = null,
    Object? totalPrice = null,
  }) {
    return _then(_value.copyWith(
      basketProducts: null == basketProducts
          ? _value.basketProducts
          : basketProducts // ignore: cast_nullable_to_non_nullable
              as List<BasketProduct>,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Basket$CopyWith<$Res> implements $BasketCopyWith<$Res> {
  factory _$$Basket$CopyWith(_$Basket$ value, $Res Function(_$Basket$) then) = __$$Basket$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BasketProduct> basketProducts, double totalPrice});
}

/// @nodoc
class __$$Basket$CopyWithImpl<$Res> extends _$BasketCopyWithImpl<$Res, _$Basket$> implements _$$Basket$CopyWith<$Res> {
  __$$Basket$CopyWithImpl(_$Basket$ _value, $Res Function(_$Basket$) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? basketProducts = null,
    Object? totalPrice = null,
  }) {
    return _then(_$Basket$(
      basketProducts: null == basketProducts
          ? _value._basketProducts
          : basketProducts // ignore: cast_nullable_to_non_nullable
              as List<BasketProduct>,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Basket$ implements Basket$ {
  const _$Basket$({final List<BasketProduct> basketProducts = const [], this.totalPrice = 0.0})
      : _basketProducts = basketProducts;

  factory _$Basket$.fromJson(Map<String, dynamic> json) => _$$Basket$FromJson(json);

  final List<BasketProduct> _basketProducts;
  @override
  @JsonKey()
  List<BasketProduct> get basketProducts {
    if (_basketProducts is EqualUnmodifiableListView) return _basketProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_basketProducts);
  }

  @override
  @JsonKey()
  final double totalPrice;

  @override
  String toString() {
    return 'Basket(basketProducts: $basketProducts, totalPrice: $totalPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Basket$ &&
            const DeepCollectionEquality().equals(other._basketProducts, _basketProducts) &&
            (identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_basketProducts), totalPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Basket$CopyWith<_$Basket$> get copyWith => __$$Basket$CopyWithImpl<_$Basket$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Basket$ToJson(
      this,
    );
  }
}

abstract class Basket$ implements Basket {
  const factory Basket$({final List<BasketProduct> basketProducts, final double totalPrice}) = _$Basket$;

  factory Basket$.fromJson(Map<String, dynamic> json) = _$Basket$.fromJson;

  @override
  List<BasketProduct> get basketProducts;
  @override
  double get totalPrice;
  @override
  @JsonKey(ignore: true)
  _$$Basket$CopyWith<_$Basket$> get copyWith => throw _privateConstructorUsedError;
}

BasketProduct _$BasketProductFromJson(Map<String, dynamic> json) {
  return BasketProduct$.fromJson(json);
}

/// @nodoc
mixin _$BasketProduct {
  Product get product => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BasketProductCopyWith<BasketProduct> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketProductCopyWith<$Res> {
  factory $BasketProductCopyWith(BasketProduct value, $Res Function(BasketProduct) then) =
      _$BasketProductCopyWithImpl<$Res, BasketProduct>;
  @useResult
  $Res call({Product product, int amount});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class _$BasketProductCopyWithImpl<$Res, $Val extends BasketProduct> implements $BasketProductCopyWith<$Res> {
  _$BasketProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BasketProduct$CopyWith<$Res> implements $BasketProductCopyWith<$Res> {
  factory _$$BasketProduct$CopyWith(_$BasketProduct$ value, $Res Function(_$BasketProduct$) then) =
      __$$BasketProduct$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Product product, int amount});

  @override
  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$BasketProduct$CopyWithImpl<$Res> extends _$BasketProductCopyWithImpl<$Res, _$BasketProduct$>
    implements _$$BasketProduct$CopyWith<$Res> {
  __$$BasketProduct$CopyWithImpl(_$BasketProduct$ _value, $Res Function(_$BasketProduct$) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? amount = null,
  }) {
    return _then(_$BasketProduct$(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BasketProduct$ implements BasketProduct$ {
  const _$BasketProduct$({this.product = const Product(), this.amount = 0});

  factory _$BasketProduct$.fromJson(Map<String, dynamic> json) => _$$BasketProduct$FromJson(json);

  @override
  @JsonKey()
  final Product product;
  @override
  @JsonKey()
  final int amount;

  @override
  String toString() {
    return 'BasketProduct(product: $product, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasketProduct$ &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, product, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BasketProduct$CopyWith<_$BasketProduct$> get copyWith =>
      __$$BasketProduct$CopyWithImpl<_$BasketProduct$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BasketProduct$ToJson(
      this,
    );
  }
}

abstract class BasketProduct$ implements BasketProduct {
  const factory BasketProduct$({final Product product, final int amount}) = _$BasketProduct$;

  factory BasketProduct$.fromJson(Map<String, dynamic> json) = _$BasketProduct$.fromJson;

  @override
  Product get product;
  @override
  int get amount;
  @override
  @JsonKey(ignore: true)
  _$$BasketProduct$CopyWith<_$BasketProduct$> get copyWith => throw _privateConstructorUsedError;
}
