import 'package:pdf/widgets.dart' as pw;

import '../../../widgets/bank_slip_widgets/bank_slip_widget.dart';
import 'column_with_test_description_widget.dart';

class DefaultColumnWidget {
  static pw.Widget init(BankSlipWidget bankSlip,
      {required String fistValue,
      required String lastValue,
      required String fistText,
      required String lastText}) {
    return pw.Column(
      children: [
        ColumnWithTestDescriptionWidget.init(bankSlip,
            text: fistText, description: fistValue),
        pw.SizedBox(height: 15.0),
        ColumnWithTestDescriptionWidget.init(bankSlip,
            text: lastText, description: lastValue),
      ],
    );
  }
}
