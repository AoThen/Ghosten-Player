import 'package:api/api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../components/gap.dart';
import '../../../validators/validators.dart';

class SeriesMetadata extends StatefulWidget {
  final TVSeries series;

  const SeriesMetadata({super.key, required this.series});

  @override
  State<SeriesMetadata> createState() => _SeriesMetadataState();
}

class _SeriesMetadataState extends State<SeriesMetadata> {
  late final _controller1 = TextEditingController(text: widget.series.title);
  late final _controller2 = TextEditingController(text: widget.series.airDate?.year.toString());
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(AppLocalizations.of(context)!.titleEditMetadata),
      scrollable: true,
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              autofocus: true,
              controller: _controller1,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.title),
                border: const UnderlineInputBorder(),
                filled: true,
                isDense: true,
                labelText: AppLocalizations.of(context)!.formLabelTitle,
              ),
              validator: (value) => requiredValidator(context, value),
              onEditingComplete: () => FocusScope.of(context).nextFocus(),
            ),
            Gap.vMD,
            TextFormField(
              autofocus: true,
              controller: _controller2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.calendar_month_outlined),
                border: const UnderlineInputBorder(),
                filled: true,
                isDense: true,
                labelText: AppLocalizations.of(context)!.formLabelYear,
              ),
              validator: (value) => yearValidator(context, value),
              onEditingComplete: () => FocusScope.of(context).nextFocus(),
            )
          ],
        ),
      ),
      actions: <Widget>[
        FilledButton(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              Navigator.of(context).pop((_controller1.text, int.tryParse(_controller2.text)));
            }
          },
          child: Text(AppLocalizations.of(context)!.buttonConfirm),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(AppLocalizations.of(context)!.buttonCancel),
        ),
      ],
    );
  }
}
