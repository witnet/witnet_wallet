import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_wit_wallet/bloc/transactions/value_transfer/vtt_create/vtt_create_bloc.dart';
import 'package:flutter/material.dart';
import 'package:my_wit_wallet/util/get_localization.dart';
import 'package:my_wit_wallet/util/storage/database/transaction_adapter.dart';
import 'package:my_wit_wallet/util/storage/database/wallet.dart';
import 'package:my_wit_wallet/widgets/speed_up_tx.dart';
import 'package:my_wit_wallet/widgets/transaction_details.dart';
import 'package:my_wit_wallet/theme/wallet_theme.dart';
import 'package:my_wit_wallet/widgets/transaction_item.dart';

typedef void VoidCallback(GeneralTransaction? value);
typedef void ShowPaginationCallback(bool value);

class TransactionsList extends StatefulWidget {
  final ThemeData themeData;
  final VoidCallback setDetails;
  final GeneralTransaction? details;
  final Wallet currentWallet;
  final List<GeneralTransaction> transactions;
  final ShowPaginationCallback showPagination;
  TransactionsList(
      {Key? key,
      required this.themeData,
      required this.details,
      required this.setDetails,
      required this.transactions,
      required this.showPagination,
      required this.currentWallet})
      : super(key: key);

  @override
  TransactionsListState createState() => TransactionsListState();
}

class TransactionsListState extends State<TransactionsList> {
  GeneralTransaction? transactionDetails;
  final ScrollController _scroller = ScrollController();
  GeneralTransaction? speedUpTransaction;
  dynamic nextAction;
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _scroller.dispose();
    super.dispose();
  }

  void setTxSpeedUpStatus(GeneralTransaction? speedUpTx) {
    setState(() {
      speedUpTransaction = speedUpTx;
    });
    if (speedUpTx != null) {
      widget.showPagination(false);
    } else {
      widget.showPagination(true);
    }
  }

  void _clearBuildVtt() {
    BlocProvider.of<VTTCreateBloc>(context).add(ResetTransactionEvent());
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    if (speedUpTransaction != null) {
      return SpeedUpVtt(
          speedUpTx: speedUpTransaction!,
          closeSetting: () => {
                _clearBuildVtt(),
                setTxSpeedUpStatus(null),
              });
    }

    if (widget.details != null) {
      return TransactionDetails(
        transaction: widget.details!,
        goToList: () => widget.setDetails(null),
      );
    }

    if (widget.transactions.length > 0) {
      return ListView.builder(
        controller: _scroller,
        padding: EdgeInsets.only(top: 16),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: widget.transactions.length,
        itemBuilder: (context, index) {
          return TransactionsItem(
              transaction: widget.transactions[index],
              speedUpTx: setTxSpeedUpStatus,
              showDetails: widget.setDetails);
        },
      );
    } else {
      return Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 24,
                  ),
                  svgThemeImage(theme, name: 'no-transactions', height: 152),
                  SizedBox(
                    height: 24,
                  ),
                  Text(localization.txEmptyState)
                ]),
          )
        ],
      );
    }
  }
}
