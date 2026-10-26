.class public Lcom/sakukelly/music/ui/PlaylistHelper;
.super Ljava/lang/Object;
.source "PlaylistHelper.java"

# static fields
.field public static sActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSongToPlaylist(Landroid/content/Context;Ljava/lang/String;Lcom/sakukelly/music/data/model/Song;)V
    .locals 2

    .line 123
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sakukelly/music/ui/PlaylistHelper$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/sakukelly/music/ui/PlaylistHelper$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sakukelly/music/data/model/Song;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 143
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 144
    return-void

    .line 123
    :cond_1
    :goto_0
    return-void
.end method

.method public static confirmDeletePlaylist(Landroid/content/Context;Ljava/lang/String;Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;)V
    .locals 3

    .line 339
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 340
    const-string v1, "\u00bfEliminar lista?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u00bfDeseas eliminar la lista \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'? No se borrar\u00e1n los archivos de audio."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 341
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sakukelly/music/ui/PlaylistHelper$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/sakukelly/music/ui/PlaylistHelper$7;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;)V

    .line 342
    const-string p0, "Eliminar"

    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 370
    const-string p1, "Cancelar"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 371
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-static {p0}, Lcom/sakukelly/music/ui/PlaylistHelper;->styleLiquidDialog(Landroid/app/Dialog;)V

    .line 372
    return-void
.end method

.method public static getAllLibrarySongs(Landroid/content/Context;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/sakukelly/music/data/model/Song;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/sakukelly/music/ui/PlaylistHelper;->getWritableDb(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_5

    .line 73
    const-string v2, "SELECT s.path, s.title, s.artist, s.album, s.genre, s.year, s.duration, s.isFavorite, s.rating, s.loudnessLufs, s.mbid, s.artworkUri FROM songs s ORDER BY s.title COLLATE NOCASE ASC"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v4}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_5

    .line 79
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 80
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 81
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 82
    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 83
    const/4 v4, 0x3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 84
    const/4 v4, 0x4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 85
    const/4 v4, 0x5

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 86
    const/4 v4, 0x6

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 87
    const/4 v4, 0x7

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v13, 0x1

    goto :goto_1

    :cond_0
    const/4 v13, 0x0

    .line 88
    :goto_1
    const/16 v2, 0x8

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 89
    const/16 v2, 0x9

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    const/4 v15, 0x0

    if-eqz v4, :cond_1

    move-object v2, v15

    goto :goto_2

    :cond_1
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 90
    :goto_2
    const/16 v4, 0xa

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_2

    move-object/from16 v16, v15

    goto :goto_3

    :cond_2
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v16, v4

    .line 91
    :goto_3
    const/16 v4, 0xb

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v17, v15

    goto :goto_4

    :cond_3
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v17, v4

    .line 92
    :goto_4
    new-instance v15, Lcom/sakukelly/music/data/model/Song;

    move-object v4, v15

    move-object v3, v15

    move-object v15, v2

    invoke-direct/range {v4 .. v17}, Lcom/sakukelly/music/data/model/Song;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZILjava/lang/Float;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    const/4 v3, 0x0

    goto :goto_0

    .line 94
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_5
    goto :goto_5

    .line 97
    :catch_0
    move-exception v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    :goto_5
    return-object v1
.end method

.method public static getAllPlaylists(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    :try_start_0
    invoke-static {p0}, Lcom/sakukelly/music/ui/PlaylistHelper;->getWritableDb(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object p0

    .line 107
    if-eqz p0, :cond_1

    .line 108
    const-string v1, "SELECT name FROM playlists ORDER BY name COLLATE NOCASE ASC"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {p0, v1, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object p0

    .line 109
    if-eqz p0, :cond_1

    .line 110
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 113
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_1
    goto :goto_1

    .line 116
    :catch_0
    move-exception p0

    .line 117
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 119
    :goto_1
    return-object v0
.end method

.method public static getPlaylistSongs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sakukelly/music/data/model/Song;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/sakukelly/music/ui/PlaylistHelper;->getWritableDb(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_5

    .line 37
    const-string v2, "SELECT s.path, s.title, s.artist, s.album, s.genre, s.year, s.duration, s.isFavorite, s.rating, s.loudnessLufs, s.mbid, s.artworkUri FROM songs s INNER JOIN playlist_songs ps ON s.path = ps.songPath WHERE ps.playlistName = ? ORDER BY ps.position ASC"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-interface {v0, v2, v4}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_5

    .line 44
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 45
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 46
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 47
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 48
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 49
    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 50
    const/4 v2, 0x5

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 51
    const/4 v2, 0x6

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 52
    const/4 v2, 0x7

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v15, 0x1

    goto :goto_1

    :cond_0
    const/4 v15, 0x0

    .line 53
    :goto_1
    const/16 v2, 0x8

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 54
    const/16 v2, 0x9

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    move-object/from16 v17, v6

    goto :goto_2

    :cond_1
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    move-object/from16 v17, v2

    .line 55
    :goto_2
    const/16 v2, 0xa

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v18, v6

    goto :goto_3

    :cond_2
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v18, v2

    .line 56
    :goto_3
    const/16 v2, 0xb

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v19, v6

    goto :goto_4

    :cond_3
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v19, v2

    .line 57
    :goto_4
    new-instance v2, Lcom/sakukelly/music/data/model/Song;

    move-object v6, v2

    invoke-direct/range {v6 .. v19}, Lcom/sakukelly/music/data/model/Song;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZILjava/lang/Float;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    goto :goto_0

    .line 59
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_5
    goto :goto_5

    .line 62
    :catch_0
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    :goto_5
    return-object v1
.end method

.method public static getWritableDb(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 1

    .line 25
    :try_start_0
    sget-object v0, Lcom/sakukelly/music/data/db/AppDatabase;->Companion:Lcom/sakukelly/music/data/db/AppDatabase$Companion;

    invoke-virtual {v0, p0}, Lcom/sakukelly/music/data/db/AppDatabase$Companion;->getDatabase(Landroid/content/Context;)Lcom/sakukelly/music/data/db/AppDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sakukelly/music/data/db/AppDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p0

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 26
    :catch_0
    move-exception p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 28
    const/4 p0, 0x0

    return-object p0
.end method

.method public static onPlaylistClick(Landroid/content/Context;Ljava/lang/String;Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;)V
    .locals 2

    .line 192
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sakukelly/music/ui/PlaylistHelper$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sakukelly/music/ui/PlaylistHelper$4;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 228
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 229
    return-void

    .line 192
    :cond_1
    :goto_0
    return-void
.end method

.method public static playPlaylist(Landroid/content/Context;Ljava/lang/String;Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;)V
    .locals 2

    .line 171
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sakukelly/music/ui/PlaylistHelper$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/sakukelly/music/ui/PlaylistHelper$3;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 188
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 189
    return-void

    .line 171
    :cond_1
    :goto_0
    return-void
.end method

.method public static removeSongFromPlaylist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 147
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sakukelly/music/ui/PlaylistHelper$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/sakukelly/music/ui/PlaylistHelper$2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 167
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 168
    return-void

    .line 147
    :cond_1
    :goto_0
    return-void
.end method

.method public static showAddSongsDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 232
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sakukelly/music/ui/PlaylistHelper$5;

    invoke-direct {v1, p0, p1}, Lcom/sakukelly/music/ui/PlaylistHelper$5;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 263
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 264
    return-void

    .line 232
    :cond_1
    :goto_0
    return-void
.end method

.method public static showAddToPlaylistDialog(Landroid/content/Context;Lcom/sakukelly/music/data/model/Song;Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;)V
    .locals 1

    .line 375
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 376
    :cond_0
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/sakukelly/music/ui/PlaylistHelper$8;

    invoke-direct {v0, p0, p1}, Lcom/sakukelly/music/ui/PlaylistHelper$8;-><init>(Landroid/content/Context;Lcom/sakukelly/music/data/model/Song;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 407
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 408
    return-void

    .line 375
    :cond_1
    :goto_0
    return-void
.end method

.method public static showManageSongsDialog(Landroid/content/Context;Ljava/lang/String;Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;)V
    .locals 2

    .line 267
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sakukelly/music/ui/PlaylistHelper$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/sakukelly/music/ui/PlaylistHelper$6;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 335
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 336
    return-void

    .line 267
    :cond_1
    :goto_0
    return-void
.end method

.method public static createLiquidGlassDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v0, 0x2
    new-array v0, v0, [I
    const v1, -0x11e1efcb    # 0xEE1E1035
    const/4 v2, 0x0
    aput v1, v0, v2
    const v1, -0xaf2edcd     # 0xF50D1233
    const/4 v2, 0x1
    aput v1, v0, v2

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;
    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/4 v0, 0x0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/high16 v0, 0x42200000    # 40.0f
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v0, 0x3
    const v2, -0x7784d042   # 0x887B2FBE
    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-object v1
.end method

.method public static createPillDrawable(IIF)Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    if-eqz p1, :cond_0
    const/4 v1, 0x2
    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_0
    return-object v0
.end method

.method public static styleLiquidDialog(Landroid/app/Dialog;)V
    .locals 2

    if-eqz p0, :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;
    move-result-object v0
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sakukelly/music/ui/PlaylistHelper;->createLiquidGlassDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object v1
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public static showAddToPlaylistFromCallback(Ljava/lang/Object;)V
    .locals 7

    if-nez p0, :cond_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :try_start_1
    const-string v2, "$song"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sakukelly/music/data/model/Song;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_direct

    move-object v0, v2

    :catch_direct
    if-nez v0, :cond_find_done

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_scan
    if-ge v3, v2, :cond_find_done

    aget-object v4, v1, v3

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/sakukelly/music/data/model/Song;

    if-eqz v5, :cond_scan_next

    check-cast v4, Lcom/sakukelly/music/data/model/Song;

    move-object v0, v4

    goto :cond_find_done

    :cond_scan_next
    add-int/lit8 v3, v3, 0x1

    goto :goto_scan

    :cond_find_done
    if-eqz v0, :cond_1

    sget-object v1, Lcom/sakukelly/music/ui/PlaylistHelper;->sActivity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/sakukelly/music/ui/PlaylistHelper;->showAddToPlaylistDialog(Landroid/content/Context;Lcom/sakukelly/music/data/model/Song;Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_end

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_end
    return-void
.end method
