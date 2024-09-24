import 'package:api/api.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' hide PopupMenuItem;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../components/gap.dart';
import '../../components/logo.dart';
import '../../components/updater.dart';
import '../../const.dart';
import '../../providers/user_config.dart';

class SystemSettingsUpdater extends StatefulWidget {
  const SystemSettingsUpdater({super.key});

  @override
  State<SystemSettingsUpdater> createState() => SystemSettingsUpdaterState();
}

class SystemSettingsUpdaterState extends State<SystemSettingsUpdater> {
  late final userConfig = Provider.of<UserConfig>(context, listen: true);
  bool _loading = false;
  bool _updated = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Logo(size: 100),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Badge(
                          label: Text(appVersion),
                          offset: Offset(16, -4),
                          child: Text(appName, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                        ),
                        Text(buildDate, style: Theme.of(context).textTheme.labelLarge),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  ListTile(
                    title: Text(AppLocalizations.of(context)!.autoCheckForUpdates),
                    trailing: Switch(
                      value: userConfig.autoUpdate,
                      onChanged: (value) => setState(() => userConfig.setAutoUpdate(value)),
                    ),
                  ),
                ],
              ),
            ),
            FilledButton(
              autofocus: kIsAndroidTV,
              onPressed: _loading || _updated
                  ? null
                  : () async {
                      setState(() => _loading = true);
                      _updated = await Api.checkUpdate(
                        updateUrl,
                        Version.fromString(appVersion),
                        needUpdate: (data, url) => showModalBottomSheet(
                            context: context,
                            constraints: const BoxConstraints(minWidth: double.infinity, maxHeight: 260),
                            builder: (context) => UpdateBottomSheet(data, url: url)),
                      );
                      setState(() => _loading = false);
                    },
              child: _loading
                  ? Row(mainAxisSize: MainAxisSize.min, children: [
                      Text(AppLocalizations.of(context)!.checkForUpdates),
                      Gap.hMD,
                      const SizedBox(width: 10, height: 10, child: CircularProgressIndicator(strokeWidth: 2)),
                    ])
                  : _updated
                      ? Text(AppLocalizations.of(context)!.isLatestVersion)
                      : Text(AppLocalizations.of(context)!.checkForUpdates),
            ),
            Gap.vMD,
          ],
        ),
      ),
    );
  }
}
