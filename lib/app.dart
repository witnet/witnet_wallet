import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:witnet_wallet/bloc/bloc_providers.dart';
import 'package:witnet_wallet/screens/create_wallet/create_wallet_screen.dart';
import 'package:witnet_wallet/screens/dashboard/view/dashboard_screen.dart';
import 'package:witnet_wallet/screens/login/view/login_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:witnet_wallet/screens/preferences/preferences_screen.dart';
import 'package:witnet_wallet/screens/receive_transaction/receive_tx_screen.dart';
import 'package:witnet_wallet/screens/send_transaction/send_vtt_screen.dart';
import 'package:witnet_wallet/theme/wallet_theme.dart';

import 'bloc/theme/theme_bloc.dart';

class WitnetWalletApp extends StatelessWidget {
  final WalletTheme initialTheme;

  WitnetWalletApp(this.initialTheme);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: getProviders(context, initialTheme),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        buildWhen: (previousState, state) {
          return previousState != state;
        },
        builder: _buildWithTheme,
      ),
    );
  }
}

Widget _buildWithTheme(BuildContext context, ThemeState state) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Material App',
    localizationsDelegates: [
      AppLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    // usage example: Text(AppLocalizations.of(context)!.helloWorld);
    supportedLocales: [
      Locale('en', ''), // English, no country code
      Locale('es', ''), // Spanish, no country code
      Locale('ru', ''), // Russian, no country code
    ],
    home: LoginScreen(),
    theme: state.themeData,
    routes: {
      CreateWalletScreen.route: (context) => CreateWalletScreen(),
      DashboardScreen.route: (context) => DashboardScreen(),
      CreateVttScreen.route: (context) => CreateVttScreen(),
      PreferencePage.route: (context) => PreferencePage(),
      ReceiveTransactionScreen.route: (context) => ReceiveTransactionScreen()
    },
    onUnknownRoute: (RouteSettings settings) {
      return MaterialPageRoute<void>(
        settings: settings,
        builder: (BuildContext context) =>
            Scaffold(body: Center(child: Text('Not Found'))),
      );
    },
  );
}
