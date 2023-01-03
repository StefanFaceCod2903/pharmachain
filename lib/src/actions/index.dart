library actions;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medchain/src/models/index.dart';

part 'index.freezed.dart';
part 'auth/login.dart';
part 'auth/get_current_user.dart';
part 'auth/logout.dart';
part 'auth/create_user.dart';
part 'get_products.dart';
part 'get_location.dart';
part 'basket/get_basket.dart';
part 'basket/set_basket.dart';
part 'basket/add_item_to_basket.dart';
part 'basket/modify_item_amount.dart';
part 'basket/remove_item_from_basket.dart';
part 'launch_maps.dart';
part 'basket/pay.dart';

typedef ActionResponse = void Function(dynamic action);
