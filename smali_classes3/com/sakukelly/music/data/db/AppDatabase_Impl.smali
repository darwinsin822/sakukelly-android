.class public final Lcom/sakukelly/music/data/db/AppDatabase_Impl;
.super Lcom/sakukelly/music/data/db/AppDatabase;
.source "AppDatabase_Impl.java"


# instance fields
.field private volatile _downloadDao:Lcom/sakukelly/music/data/db/DownloadDao;

.field private volatile _historyDao:Lcom/sakukelly/music/data/db/HistoryDao;

.field private volatile _playlistDao:Lcom/sakukelly/music/data/db/PlaylistDao;

.field private volatile _scrobbleDao:Lcom/sakukelly/music/data/db/ScrobbleDao;

.field private volatile _songDao:Lcom/sakukelly/music/data/db/SongDao;

.field private volatile _statsDao:Lcom/sakukelly/music/data/db/StatsDao;

.field private volatile _streamDao:Lcom/sakukelly/music/data/db/StreamDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/sakukelly/music/data/db/AppDatabase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sakukelly/music/data/db/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/sakukelly/music/data/db/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sakukelly/music/data/db/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/sakukelly/music/data/db/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$202(Lcom/sakukelly/music/data/db/AppDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/sakukelly/music/data/db/AppDatabase_Impl;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sakukelly/music/data/db/AppDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/sakukelly/music/data/db/AppDatabase_Impl;->internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sakukelly/music/data/db/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/sakukelly/music/data/db/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public clearAllTables()V
    .locals 4

    .line 258
    const-string v0, "VACUUM"

    const-string v1, "PRAGMA wal_checkpoint(FULL)"

    invoke-super {p0}, Lcom/sakukelly/music/data/db/AppDatabase;->assertNotMainThread()V

    .line 259
    invoke-super {p0}, Lcom/sakukelly/music/data/db/AppDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v2

    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v2

    .line 261
    :try_start_0
    invoke-super {p0}, Lcom/sakukelly/music/data/db/AppDatabase;->beginTransaction()V

    .line 262
    const-string v3, "DELETE FROM `songs`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 263
    const-string v3, "DELETE FROM `stream_items`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 264
    const-string v3, "DELETE FROM `playlists`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 265
    const-string v3, "DELETE FROM `playlist_songs`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 266
    const-string v3, "DELETE FROM `history_entries`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 267
    const-string v3, "DELETE FROM `play_stats`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 268
    const-string v3, "DELETE FROM `scrobble_queue`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 269
    const-string v3, "DELETE FROM `downloads`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 270
    invoke-super {p0}, Lcom/sakukelly/music/data/db/AppDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    invoke-super {p0}, Lcom/sakukelly/music/data/db/AppDatabase;->endTransaction()V

    .line 273
    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 274
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_0

    .line 275
    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v3

    .line 272
    invoke-super {p0}, Lcom/sakukelly/music/data/db/AppDatabase;->endTransaction()V

    .line 273
    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 274
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_1

    .line 275
    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 277
    :cond_1
    throw v3
.end method

.method protected createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 6

    .line 251
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 252
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 253
    new-instance v3, Landroidx/room/InvalidationTracker;

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "songs"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "stream_items"

    aput-object v5, v4, v1

    const/4 v1, 0x2

    const-string v5, "playlists"

    aput-object v5, v4, v1

    const/4 v1, 0x3

    const-string v5, "playlist_songs"

    aput-object v5, v4, v1

    const/4 v1, 0x4

    const-string v5, "history_entries"

    aput-object v5, v4, v1

    const/4 v1, 0x5

    const-string v5, "play_stats"

    aput-object v5, v4, v1

    const/4 v1, 0x6

    const-string v5, "scrobble_queue"

    aput-object v5, v4, v1

    const/4 v1, 0x7

    const-string v5, "downloads"

    aput-object v5, v4, v1

    invoke-direct {v3, p0, v0, v2, v4}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v3
.end method

.method protected createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "config"
        }
    .end annotation

    .line 46
    new-instance v0, Landroidx/room/RoomOpenHelper;

    new-instance v1, Lcom/sakukelly/music/data/db/AppDatabase_Impl$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sakukelly/music/data/db/AppDatabase_Impl$1;-><init>(Lcom/sakukelly/music/data/db/AppDatabase_Impl;I)V

    const-string v2, "34d368342ac9fd37ec5603761cc7c4e9"

    const-string v3, "40e46eeda91fbe590fd0687f22c63481"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v0

    .line 244
    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p1

    return-object p1
.end method

.method public downloadDao()Lcom/sakukelly/music/data/db/DownloadDao;
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/sakukelly/music/data/db/AppDatabase_Impl;->_downloadDao:Lcom/sakukelly/music/data/db/DownloadDao;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/sakukelly/music/data/db/AppDatabase_Impl;->_downloadDao:Lcom/sakukelly/music/data/db/DownloadDao;

    return-object v0

    .line 398
    :cond_0
    monitor-enter p0

    .line 399
    :try_start_0
    iget-object v0, p0, Lcom/sakukelly/music/data/db/AppDatabase_Impl;->_downloadDao:Lcom/sakukelly/music/data/db/DownloadDao;

    if-nez v0, :cond_1

    .line 400
    new-instance v0, Lcom/sakukelly/music/data/db/DownloadDao_Impl;

    invoke-direct {v0, p0}, Lcom/sakukelly/music/data/db/DownloadDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/sakukelly/music/data/db/AppDatabase_Impl;->_downloadDao:Lcom/sakukelly/music/data/db/DownloadDao;

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/sakukelly/music/data/db/AppDatabase_Impl;->_downloadDao:Lcom/sakukelly/music/data/db/DownloadDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 403
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAutoMigrations(Ljava/util/Map;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "autoMigrationSpecs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/room/migration/Migration;",
            ">;"
        }
    .end annotation

    .line 305
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public getRequiredAutoMigrationSpecs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;>;"
        }
    .end annotation

    .line 297
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method protected getRequiredTypeConverters()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation

    .line 283
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 284
    const-class v1, Lcom/sakukelly/music/data/db/SongDao;

    invoke-static {}, Lcom/sakukelly/music/data/db/SongDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-class v1, Lcom/sakukelly/music/data/db/StreamDao;

    invoke-static {}, Lcom/sakukelly/music/data/db/StreamDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-class v1, Lcom/sakukelly/music/data/db/PlaylistDao;

    invoke-static {}, Lcom/sakukelly/music/data/db/PlaylistDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-class v1, Lcom/sakukelly/music/data/db/HistoryDao;

    invoke-static {}, Lcom/sakukelly/music/data/db/HistoryDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-class v1, Lcom/sakukelly/music/data/db/StatsDao;

    invoke-static {}, Lcom/sakukelly/music/data/db/StatsDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-class v1, Lcom/sakukelly/music/data/db/ScrobbleDao;

    invoke-static {}, Lcom/sakukelly/music/data/db/ScrobbleDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-class v1, Lcom/sakukelly/music/data/db/DownloadDao;

    invoke-static {}, Lcom/sakukelly/music/data/db/DownloadDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public historyDao()Lcom/sakukelly/music/data/db/HistoryDao;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/sakukelly/music/data/db/AppDatabase_Impl;->_historyDao:Lcom/sakukelly/music/data/db/HistoryDao;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/sakukelly/music/data/db/AppDatabase_Impl;->_historyDao:Lcom/sakukelly/music/data/db/HistoryDao;

    return-object v0

    .line 356
    :cond_0
    monitor-enter p0

    .line 357
    :try_start_0
    iget-object v0, p0, Lcom/sakukelly/music/data/db/AppDatabase_Impl;->_historyDao:Lcom/sakukelly/music/data/db/HistoryDao;

    if-nez v0, :cond_1

    .line 358
    new-instance v0, Lcom/sakukelly/music/data/db/HistoryDao_Impl;

    invoke-direct {v0, p0}, Lcom/sakukelly/music/data/db/HistoryDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/sakukelly/music/data/db/AppDatabase_Impl;->_historyDao:Lcom/sakukelly/music/data/db/HistoryDao;

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/sakukelly/music/data/db/AppDatabase_Impl;->_historyDao:Lcom/sakukelly/music/data/db/HistoryDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 361
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public playlistDao()Lcom/sakukelly/music/data/db/PlaylistDao;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/sakukelly/music/data/db/AppDatabase_Impl;->_playlistDao:Lcom/sakukelly/music/data/db/PlaylistDao;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/sakukelly/music/data/db/AppDatabase_Impl;->_playlistDao:Lcom/sakukelly/music/data/db/PlaylistDao;

    return-object v0

    .line 342
    :cond_0
    monitor-enter p0

    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/sakukelly/music/data/db/AppDatabase_Impl;->_playlistDao:Lcom/sakukelly/music/data/db/PlaylistDao;

    if-nez v0, :cond_1

    .line 344
    new-instance v0, Lcom/sakukelly/music/data/db/PlaylistDao_Impl;

    invoke-direct {v0, p0}, Lcom/sakukelly/music/data/db/PlaylistDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/sakukelly/music/data/db/AppDatabase_Impl;->_playlistDao:Lcom/sakukelly/music/data/db/PlaylistDao;

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/sakukelly/music/data/db/AppDatabase_Impl;->_playlistDao:Lcom/sakukelly/music/data/db/PlaylistDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 347
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public scrobbleDao()Lcom/sakukelly/music/data/db/ScrobbleDao;
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/sakukelly/music/data/db/AppDatabase_Impl;->_scrobbleDao:Lcom/sakukelly/music/data/db/ScrobbleDao;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/sakukelly/music/data/db/AppDatabase_Impl;->_scrobbleDao:Lcom/sakukelly/music/data/db/ScrobbleDao;

    return-object v0

    .line 384
    :cond_0
    monitor-enter p0

    .line 385
    :try_start_0
    iget-object v0, p0, Lcom/sakukelly/music/data/db/AppDatabase_Impl;->_scrobbleDao:Lcom/sakukelly/music/data/db/ScrobbleDao;

    if-nez v0, :cond_1

    .line 386
    new-instance v0, Lcom/sakukelly/music/data/db/ScrobbleDao_Impl;

    invoke-direct {v0, p0}, Lcom/sakukelly/music/data/db/ScrobbleDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/sakukelly/music/data/db/AppDatabase_Impl;->_scrobbleDao:Lcom/sakukelly/music/data/db/ScrobbleDao;

    .line 388
    :cond_1
    iget-object v0, p0, Lcom/sakukelly/music/data/db/AppDatabase_Impl;->_scrobbleDao:Lcom/sakukelly/music/data/db/ScrobbleDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 389
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public songDao()Lcom/sakukelly/music/data/db/SongDao;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/sakukelly/music/data/db/AppDatabase_Impl;->_songDao:Lcom/sakukelly/music/data/db/SongDao;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/sakukelly/music/data/db/AppDatabase_Impl;->_songDao:Lcom/sakukelly/music/data/db/SongDao;

    return-object v0

    .line 314
    :cond_0
    monitor-enter p0

    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/sakukelly/music/data/db/AppDatabase_Impl;->_songDao:Lcom/sakukelly/music/data/db/SongDao;

    if-nez v0, :cond_1

    .line 316
    new-instance v0, Lcom/sakukelly/music/data/db/SongDao_Impl;

    invoke-direct {v0, p0}, Lcom/sakukelly/music/data/db/SongDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/sakukelly/music/data/db/AppDatabase_Impl;->_songDao:Lcom/sakukelly/music/data/db/SongDao;

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/sakukelly/music/data/db/AppDatabase_Impl;->_songDao:Lcom/sakukelly/music/data/db/SongDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 319
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public statsDao()Lcom/sakukelly/music/data/db/StatsDao;
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/sakukelly/music/data/db/AppDatabase_Impl;->_statsDao:Lcom/sakukelly/music/data/db/StatsDao;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/sakukelly/music/data/db/AppDatabase_Impl;->_statsDao:Lcom/sakukelly/music/data/db/StatsDao;

    return-object v0

    .line 370
    :cond_0
    monitor-enter p0

    .line 371
    :try_start_0
    iget-object v0, p0, Lcom/sakukelly/music/data/db/AppDatabase_Impl;->_statsDao:Lcom/sakukelly/music/data/db/StatsDao;

    if-nez v0, :cond_1

    .line 372
    new-instance v0, Lcom/sakukelly/music/data/db/StatsDao_Impl;

    invoke-direct {v0, p0}, Lcom/sakukelly/music/data/db/StatsDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/sakukelly/music/data/db/AppDatabase_Impl;->_statsDao:Lcom/sakukelly/music/data/db/StatsDao;

    .line 374
    :cond_1
    iget-object v0, p0, Lcom/sakukelly/music/data/db/AppDatabase_Impl;->_statsDao:Lcom/sakukelly/music/data/db/StatsDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 375
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public streamDao()Lcom/sakukelly/music/data/db/StreamDao;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/sakukelly/music/data/db/AppDatabase_Impl;->_streamDao:Lcom/sakukelly/music/data/db/StreamDao;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/sakukelly/music/data/db/AppDatabase_Impl;->_streamDao:Lcom/sakukelly/music/data/db/StreamDao;

    return-object v0

    .line 328
    :cond_0
    monitor-enter p0

    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/sakukelly/music/data/db/AppDatabase_Impl;->_streamDao:Lcom/sakukelly/music/data/db/StreamDao;

    if-nez v0, :cond_1

    .line 330
    new-instance v0, Lcom/sakukelly/music/data/db/StreamDao_Impl;

    invoke-direct {v0, p0}, Lcom/sakukelly/music/data/db/StreamDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/sakukelly/music/data/db/AppDatabase_Impl;->_streamDao:Lcom/sakukelly/music/data/db/StreamDao;

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/sakukelly/music/data/db/AppDatabase_Impl;->_streamDao:Lcom/sakukelly/music/data/db/StreamDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 333
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
