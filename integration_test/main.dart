import 'package:flutter_test/flutter_test.dart';

import 'package:my_wit_wallet/globals.dart' as globals;
import 'test_utils.dart';

void main() async {
  globals.testingActive = true;

  group("End To End Mnemonic Tests", () {
    testWidgets("Create Mnemonic Test", e2eCreateMnemonicTest);
    testWidgets("Import Mnemonic Test", e2eImportMnemonicTest, skip: true);
    testWidgets("Import Xprv Test", e2eImportXprvTest, skip: true);
    testWidgets("Export Node Xprv Test", e2eExportXprvTest, skip: true);
    testWidgets("Export Hd Xprv Test", e2eExportHdXprvTest, skip: true);
    testWidgets("Sign message Test", e2eSignMessageTest, skip: true);
    testWidgets('Update current wallet', e2eUpdateCurrentWalletTest,
        skip: true);
    testWidgets("Auth preferences Test", e2eAuthPreferencesTest, skip: true);
    testWidgets("Show node stats Test", e2eShowNodeStatsTest, skip: true);
    testWidgets("Re-establish wallets", e2eReEstablishWallets, skip: true);
    testWidgets("Import Xprv From Sheikah Test", e2eImportXprvFromSheikahTest,
        skip: true);
    testWidgets("Update theme color", e2eUpdateThemeColorTest, skip: true);
  });
}
