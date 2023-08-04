import 'package:cred_assess/providers/navbar_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';



final providers = <SingleChildWidget>[
  // ChangeNotifierProvider(create: (_) => AuthAPI()),
  ChangeNotifierProvider(create: (_)=>NavbarProvider()),
];
