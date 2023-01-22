import 'dart:math' as math;

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

part 'box_layout.dart';
part 'clock_check_box.dart';
part 'image.dart';
part 'input_date.dart';
part 'pdf_text.dart';

class BankSlipWidget extends _BoxLayout
    with _InputDate, _ClockCheckBox, _PdfText, _Image {}
