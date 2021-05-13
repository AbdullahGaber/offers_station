import 'package:flutter/material.dart';
import 'package:offers_station/src/screens/mainScreens/splash_screen.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
        // auth Provider
        ChangeNotifierProvider(
          create: (_) => LoginProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => LogoutProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => MobileRegisterProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => PhoneVerficationProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => SignupProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ResendCodeProvider(),
        ),

        //....

        //reset password
        ChangeNotifierProvider(
          create: (_) => ResetPasswordProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ResetPasswordPhoneProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ResetPasswordVerficationProvider(),
        ),
        //...

        // change Data..
        ChangeNotifierProvider(
          create: (_) => ChangePhoneProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ChangePhoneVerficationProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ChangePasswordProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ChangeUserDataProvider(),
        ),
        //...
        // chat
        ChangeNotifierProvider(
          create: (_) => MyConversationsProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => CreateChatProvider(),
        ),
        //...

        // main Providers...
        ChangeNotifierProvider(
          create: (_) => SharedPreferencesProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ProductByIdProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => RegionsProvider(),
        ),

        ChangeNotifierProvider(
          create: (_) => ComplaintsProvider(),
        ),

        ChangeNotifierProvider(
          create: (_) => CitiesProvider(),
        ),

        ChangeNotifierProvider(
          create: (_) => TermsProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => AboutUsProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => SettingsProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => NotificationsProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => SplashProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => SearchProvider(),
        ),

        ChangeNotifierProvider(
          create: (_) => HistoriesProvider(),
        ),
        //...

        // provider

        ChangeNotifierProvider(
          create: (_) => PropertyProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => CommissionsProvider(),
        ),
        // ...

        // user
        ChangeNotifierProvider(
          create: (_) => PostOrderProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => MyOrdersProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ProductsProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => MyFavouriteProductProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => MyFavouriteProvider(),
        ),
        //...
      ],
          child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: Splash(),
      ),
    );
  }
}
