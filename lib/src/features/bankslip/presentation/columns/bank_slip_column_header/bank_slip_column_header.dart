import 'package:pdf/widgets.dart' as pw;

import '../../widgets/bank_slip_widgets/bank_slip_widget.dart';
import 'components/header_information.dart';

class BankSlipColumnHeader {
  static pw.Widget init(BankSlipWidget bankSlip) {
    return pw.Padding(
        padding: const pw.EdgeInsets.only(bottom: 20.0, top: 20.0),
        child:
            pw.Row(crossAxisAlignment: pw.CrossAxisAlignment.start, children: [
          pw.Column(
            mainAxisAlignment: pw.MainAxisAlignment.center,
            children: [pw.SizedBox(height: 8.0), bankSlip.logoDark()],
          ),
          pw.SizedBox(
            width: 10,
          ),
          pw.SizedBox(
            child: HeaderInformation.init(
              bankSlip,
              title: 'EDP Sao Paulo Distribuicao de Energia S. A',
              description: 'Rua WERNER VON SIEMENS, 111, LPA DE BAIXO\n'
                  'CXPST 44191-0 CONJ 22 BLOCO A SALA 1\n'
                  'CEP:05.069-900 - SAO PAULO - SP',
            ),
            width: 190,
          ),
          pw.SizedBox(
            width: 25,
          ),
          pw.SizedBox(
            child: HeaderInformation.init(bankSlip,
                description: 'CNPJ 02.302.100/0001-06\n'
                    'I.E. 115.026474.116\n'
                    'Insc Única Reg. Exp.\n'
                    'Processo SF-5-13753/2000'),
            width: 100,
          ),
        ]));
  }
}
