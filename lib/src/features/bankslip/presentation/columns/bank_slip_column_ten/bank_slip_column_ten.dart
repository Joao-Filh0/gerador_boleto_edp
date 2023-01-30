import 'package:gerador_boleto_edp/src/features/bankslip/presentation/columns/bank_slip_column_ten/components/billing_period_widget.dart';
import 'package:pdf/widgets.dart' as pw;

import '../../widgets/bank_slip_widgets/bank_slip_widget.dart';
import 'components/tariff_flag_widget.dart';

class BankSlipColumnTen {
  static pw.Widget init(BankSlipWidget bankSlip) {
    return pw.SizedBox(
        height: 100.0,
        child: pw.Row(children: [
          pw.Expanded(
            flex: 3,
            child: bankSlip.boxLayout(
              color: BoxLayoutTitleColor.secondary,
              title: 'Bandeira Tarifárias',
              body: TariffFlagWidget.init(bankSlip),
            ),
          ),
          pw.SizedBox(width: 10.0),
          pw.Expanded(
            flex: 2,
            child: BillingPeriodWidget.init(bankSlip),
          ),
        ]));
  }
}
