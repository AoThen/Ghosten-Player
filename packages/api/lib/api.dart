import 'src/api_platform_interface.dart';

export 'src/api_platform_interface.dart' show navigatorKey, routeObserver;
export 'src/errors.dart';
export 'src/models.dart';

class Api {
  static final Uri baseUrl = ApiPlatform.instance.baseUrl;
  static final Stream<double?> progress$ = ApiPlatform.instance.progress$;
  static final Stream<double?> needUpdate$ = ApiPlatform.instance.needUpdate$;

  static final databasePath = ApiPlatform.instance.databasePath;
  static final supportedHdrTypes = ApiPlatform.instance.supportedHdrTypes;
  static final syncData = ApiPlatform.instance.syncData;
  static final initialized = ApiPlatform.instance.initialized;
  static final rollbackData = ApiPlatform.instance.rollbackData;
  static final resetData = ApiPlatform.instance.resetData;
  static final log = ApiPlatform.instance.log;
  static final requestStoragePermission = ApiPlatform.instance.requestStoragePermission;
  static final fileList = ApiPlatform.instance.fileList;
  static final fileRename = ApiPlatform.instance.fileRename;
  static final fileRemove = ApiPlatform.instance.fileRemove;
  static final fileMkdir = ApiPlatform.instance.fileMkdir;
  static final playerHistory = ApiPlatform.instance.playerHistory;
  static final downloadTaskCreate = ApiPlatform.instance.downloadTaskCreate;
  static final downloadTaskPauseById = ApiPlatform.instance.downloadTaskPauseById;
  static final downloadTaskResumeById = ApiPlatform.instance.downloadTaskResumeById;
  static final downloadTaskDeleteById = ApiPlatform.instance.downloadTaskDeleteById;
  static final downloadTaskQueryByAll = ApiPlatform.instance.downloadTaskQueryByAll;
  static final sessionStatus = ApiPlatform.instance.sessionStatus;
  static final sessionCreate = ApiPlatform.instance.sessionCreate;
  static final dnsOverrideQueryAll = ApiPlatform.instance.dnsOverrideQueryAll;
  static final dnsOverrideInsert = ApiPlatform.instance.dnsOverrideInsert;
  static final dnsOverrideUpdateById = ApiPlatform.instance.dnsOverrideUpdateById;
  static final dnsOverrideDeleteById = ApiPlatform.instance.dnsOverrideDeleteById;
  static final serverQueryAll = ApiPlatform.instance.serverQueryAll;
  static final serverInsert = ApiPlatform.instance.serverInsert;
  static final serverActiveById = ApiPlatform.instance.serverActiveById;
  static final serverDeleteById = ApiPlatform.instance.serverDeleteById;
  static final playlistQueryAll = ApiPlatform.instance.playlistQueryAll;
  static final playlistQueryById = ApiPlatform.instance.playlistQueryById;
  static final playlistInsert = ApiPlatform.instance.playlistInsert;
  static final playlistUpdateById = ApiPlatform.instance.playlistUpdateById;
  static final playlistDeleteById = ApiPlatform.instance.playlistDeleteById;
  static final playlistRefreshById = ApiPlatform.instance.playlistRefreshById;
  static final playlistChannelsQueryById = ApiPlatform.instance.playlistChannelsQueryById;
  static final driverQueryAll = ApiPlatform.instance.driverQueryAll;
  static final driverInsert = ApiPlatform.instance.driverInsert;
  static final driverDeleteById = ApiPlatform.instance.driverDeleteById;
  static final movieRecommendation = ApiPlatform.instance.movieRecommendation;
  static final movieQueryAll = ApiPlatform.instance.movieQueryAll;
  static final movieQueryByFilter = ApiPlatform.instance.movieQueryByFilter;
  static final movieQueryById = ApiPlatform.instance.movieQueryById;
  static final movieNextToPlayQueryAll = ApiPlatform.instance.movieNextToPlayQueryAll;
  static final movieMetadataUpdateById = ApiPlatform.instance.movieMetadataUpdateById;
  static final movieSubtitleUpdateById = ApiPlatform.instance.movieSubtitleUpdateById;
  static final movieUpdateById = ApiPlatform.instance.movieUpdateById;
  static final movieRenameById = ApiPlatform.instance.movieRenameById;
  static final movieDeleteById = ApiPlatform.instance.movieDeleteById;
  static final tvRecommendation = ApiPlatform.instance.tvRecommendation;
  static final tvSeriesQueryAll = ApiPlatform.instance.tvSeriesQueryAll;
  static final tvSeriesQueryByFilter = ApiPlatform.instance.tvSeriesQueryByFilter;
  static final tvSeriesQueryById = ApiPlatform.instance.tvSeriesQueryById;
  static final tvSeriesNextToPlayQueryAll = ApiPlatform.instance.tvSeriesNextToPlayQueryAll;
  static final tvSeriesUpdateById = ApiPlatform.instance.tvSeriesUpdateById;
  static final tvSeriesSyncById = ApiPlatform.instance.tvSeriesSyncById;
  static final tvSeriesMetadataUpdateById = ApiPlatform.instance.tvSeriesMetadataUpdateById;
  static final tvSeriesRenameById = ApiPlatform.instance.tvSeriesRenameById;
  static final tvSeriesDeleteById = ApiPlatform.instance.tvSeriesDeleteById;
  static final tvSeasonQueryById = ApiPlatform.instance.tvSeasonQueryById;
  static final tvSeasonNumberUpdate = ApiPlatform.instance.tvSeasonNumberUpdate;
  static final tvSeasonDeleteById = ApiPlatform.instance.tvSeasonDeleteById;
  static final tvEpisodeQueryById = ApiPlatform.instance.tvEpisodeQueryById;
  static final tvEpisodeMetadataUpdateById = ApiPlatform.instance.tvEpisodeMetadataUpdateById;
  static final tvEpisodeSubtitleUpdateById = ApiPlatform.instance.tvEpisodeSubtitleUpdateById;
  static final tvEpisodeDeleteById = ApiPlatform.instance.tvEpisodeDeleteById;
  static final libraryQueryAll = ApiPlatform.instance.libraryQueryAll;
  static final libraryInsert = ApiPlatform.instance.libraryInsert;
  static final libraryRefreshById = ApiPlatform.instance.libraryRefreshById;
  static final libraryDeleteById = ApiPlatform.instance.libraryDeleteById;
  static final genreQueryAll = ApiPlatform.instance.genreQueryAll;
  static final studioQueryAll = ApiPlatform.instance.studioQueryAll;
  static final keywordQueryAll = ApiPlatform.instance.keywordQueryAll;
  static final actorQueryAll = ApiPlatform.instance.actorQueryAll;
  static final markWatched = ApiPlatform.instance.markWatched;
  static final markFavorite = ApiPlatform.instance.markFavorite;
  static final updatePlayedStatus = ApiPlatform.instance.updatePlayedStatus;
  static final setSkipTime = ApiPlatform.instance.setSkipTime;
  static final checkUpdate = ApiPlatform.instance.checkUpdate;
  static final networkDiagnostics = ApiPlatform.instance.networkDiagnostics;
  static final logQueryPage = ApiPlatform.instance.logQueryPage;
  static final dlnaDiscover = ApiPlatform.instance.dlnaDiscover;
  static final dlnaSetUri = ApiPlatform.instance.dlnaSetUri;
  static final dlnaPlay = ApiPlatform.instance.dlnaPlay;
  static final dlnaPause = ApiPlatform.instance.dlnaPause;
  static final dlnaStop = ApiPlatform.instance.dlnaStop;
  static final dlnaSeek = ApiPlatform.instance.dlnaSeek;
  static final dlnaGetPositionInfo = ApiPlatform.instance.dlnaGetPositionInfo;
  static final dlnaGetCurrentTransportActions = ApiPlatform.instance.dlnaGetCurrentTransportActions;
  static final dlnaGetMediaInfo = ApiPlatform.instance.dlnaGetMediaInfo;
  static final dlnaGetTransportInfo = ApiPlatform.instance.dlnaGetTransportInfo;
  static final dlnaNext = ApiPlatform.instance.dlnaNext;
  static final dlnaPrevious = ApiPlatform.instance.dlnaPrevious;
  static final dlnaSetPlayMode = ApiPlatform.instance.dlnaSetPlayMode;
  static final dlnaGetDeviceCapabilities = ApiPlatform.instance.dlnaGetDeviceCapabilities;
  static final dlnaSetMute = ApiPlatform.instance.dlnaSetMute;
  static final dlnaGetMute = ApiPlatform.instance.dlnaGetMute;
  static final dlnaSetVolume = ApiPlatform.instance.dlnaSetVolume;
  static final dlnaGetVolume = ApiPlatform.instance.dlnaGetVolume;
}
