// GENERATED CODE - DO NOT MODIFY BY HAND

part of models;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthState$ _$$AuthState$FromJson(Map<String, dynamic> json) => _$AuthState$(
      user: json['user'] == null ? null : LoginUser.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthState$ToJson(_$AuthState$ instance) => <String, dynamic>{
      'user': instance.user,
    };

_$Product$ _$$Product$FromJson(Map<String, dynamic> json) => _$Product$(
      drug: json['drug'] as String?,
      pharmacy: json['pharmacy'] as String?,
      coordinates: json['coordinates'] as Map<String, dynamic>?,
      price: (json['price'] as num?)?.toDouble(),
      distance: (json['distance'] as num?)?.toDouble(),
      address: json['address'] as String?,
    );

Map<String, dynamic> _$$Product$ToJson(_$Product$ instance) => <String, dynamic>{
      'drug': instance.drug,
      'pharmacy': instance.pharmacy,
      'coordinates': instance.coordinates,
      'price': instance.price,
      'distance': instance.distance,
      'address': instance.address,
    };

_$LoginUser$ _$$LoginUser$FromJson(Map<String, dynamic> json) => _$LoginUser$(
      email: json['email'] as String,
      uid: json['uid'] as String,
      displayName: json['displayName'] as String,
    );

Map<String, dynamic> _$$LoginUser$ToJson(_$LoginUser$ instance) => <String, dynamic>{
      'email': instance.email,
      'uid': instance.uid,
      'displayName': instance.displayName,
    };

_$AppState$ _$$AppState$FromJson(Map<String, dynamic> json) => _$AppState$(
      auth: json['auth'] == null ? const AuthState() : AuthState.fromJson(json['auth'] as Map<String, dynamic>),
      search:
          json['search'] == null ? const SearchState() : SearchState.fromJson(json['search'] as Map<String, dynamic>),
      locationState: json['locationState'] == null
          ? const LocationState()
          : LocationState.fromJson(json['locationState'] as Map<String, dynamic>),
      basket: json['basket'] == null ? const Basket() : Basket.fromJson(json['basket'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AppState$ToJson(_$AppState$ instance) => <String, dynamic>{
      'auth': instance.auth,
      'search': instance.search,
      'locationState': instance.locationState,
      'basket': instance.basket,
    };

_$SearchState$ _$$SearchState$FromJson(Map<String, dynamic> json) => _$SearchState$(
      isLoading: json['isLoading'] as bool? ?? false,
      products:
          (json['products'] as List<dynamic>?)?.map((e) => Product.fromJson(e as Map<String, dynamic>)).toList() ??
              const [],
    );

Map<String, dynamic> _$$SearchState$ToJson(_$SearchState$ instance) => <String, dynamic>{
      'isLoading': instance.isLoading,
      'products': instance.products,
    };

_$LocationState$ _$$LocationState$FromJson(Map<String, dynamic> json) => _$LocationState$(
      currentLocation: json['currentLocation'] == null
          ? null
          : LocationModel.fromJson(json['currentLocation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LocationState$ToJson(_$LocationState$ instance) => <String, dynamic>{
      'currentLocation': instance.currentLocation,
    };

_$LocationModel$ _$$LocationModel$FromJson(Map<String, dynamic> json) => _$LocationModel$(
      lat: (json['lat'] as num).toDouble(),
      long: (json['long'] as num).toDouble(),
    );

Map<String, dynamic> _$$LocationModel$ToJson(_$LocationModel$ instance) => <String, dynamic>{
      'lat': instance.lat,
      'long': instance.long,
    };

_$Basket$ _$$Basket$FromJson(Map<String, dynamic> json) => _$Basket$(
      basketProducts: (json['basketProducts'] as List<dynamic>?)
              ?.map((e) => BasketProduct.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      totalPrice: (json['totalPrice'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$Basket$ToJson(_$Basket$ instance) => <String, dynamic>{
      'basketProducts': instance.basketProducts,
      'totalPrice': instance.totalPrice,
    };

_$BasketProduct$ _$$BasketProduct$FromJson(Map<String, dynamic> json) => _$BasketProduct$(
      product: json['product'] == null ? const Product() : Product.fromJson(json['product'] as Map<String, dynamic>),
      amount: json['amount'] as int? ?? 0,
    );

Map<String, dynamic> _$$BasketProduct$ToJson(_$BasketProduct$ instance) => <String, dynamic>{
      'product': instance.product,
      'amount': instance.amount,
    };
