.class public final Lcom/sakukelly/music/data/db/PlaylistDao_Impl;
.super Ljava/lang/Object;
.source "PlaylistDao_Impl.java"

# interfaces
.implements Lcom/sakukelly/music/data/db/PlaylistDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfPlaylist:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/sakukelly/music/data/model/Playlist;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfPlaylistSong:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/sakukelly/music/data/model/PlaylistSong;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDeletePlaylist:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfRemoveSongFromPlaylist:Landroidx/room/SharedSQLiteStatement;


# direct methods
.method static bridge synthetic -$$Nest$fget__db(Lcom/sakukelly/music/data/db/PlaylistDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    iget-object p0, p0, Lcom/sakukelly/music/data/db/PlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget__insertionAdapterOfPlaylist(Lcom/sakukelly/music/data/db/PlaylistDao_Impl;)Landroidx/room/EntityInsertionAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sakukelly/music/data/db/PlaylistDao_Impl;->__insertionAdapterOfPlaylist:Landroidx/room/EntityInsertionAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget__insertionAdapterOfPlaylistSong(Lcom/sakukelly/music/data/db/PlaylistDao_Impl;)Landroidx/room/EntityInsertionAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sakukelly/music/data/db/PlaylistDao_Impl;->__insertionAdapterOfPlaylistSong:Landroidx/room/EntityInsertionAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget__preparedStmtOfDeletePlaylist(Lcom/sakukelly/music/data/db/PlaylistDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/sakukelly/music/data/db/PlaylistDao_Impl;->__preparedStmtOfDeletePlaylist:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget__preparedStmtOfRemoveSongFromPlaylist(Lcom/sakukelly/music/data/db/PlaylistDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/sakukelly/music/data/db/PlaylistDao_Impl;->__preparedStmtOfRemoveSongFromPlaylist:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "__db"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/sakukelly/music/data/db/PlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 47
    new-instance v0, Lcom/sakukelly/music/data/db/PlaylistDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/sakukelly/music/data/db/PlaylistDao_Impl$1;-><init>(Lcom/sakukelly/music/data/db/PlaylistDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/sakukelly/music/data/db/PlaylistDao_Impl;->__insertionAdapterOfPlaylist:Landroidx/room/EntityInsertionAdapter;

    .line 60
    new-instance v0, Lcom/sakukelly/music/data/db/PlaylistDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/sakukelly/music/data/db/PlaylistDao_Impl$2;-><init>(Lcom/sakukelly/music/data/db/PlaylistDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/sakukelly/music/data/db/PlaylistDao_Impl;->__insertionAdapterOfPlaylistSong:Landroidx/room/EntityInsertionAdapter;

    .line 75
    new-instance v0, Lcom/sakukelly/music/data/db/PlaylistDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/sakukelly/music/data/db/PlaylistDao_Impl$3;-><init>(Lcom/sakukelly/music/data/db/PlaylistDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/sakukelly/music/data/db/PlaylistDao_Impl;->__preparedStmtOfDeletePlaylist:Landroidx/room/SharedSQLiteStatement;

    .line 83
    new-instance v0, Lcom/sakukelly/music/data/db/PlaylistDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/sakukelly/music/data/db/PlaylistDao_Impl$4;-><init>(Lcom/sakukelly/music/data/db/PlaylistDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/sakukelly/music/data/db/PlaylistDao_Impl;->__preparedStmtOfRemoveSongFromPlaylist:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method public static getRequiredConverters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 302
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addSongToPlaylist(Lcom/sakukelly/music/data/model/PlaylistSong;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "playlistSong",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sakukelly/music/data/model/PlaylistSong;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/sakukelly/music/data/db/PlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/sakukelly/music/data/db/PlaylistDao_Impl$6;

    invoke-direct {v1, p0, p1}, Lcom/sakukelly/music/data/db/PlaylistDao_Impl$6;-><init>(Lcom/sakukelly/music/data/db/PlaylistDao_Impl;Lcom/sakukelly/music/data/model/PlaylistSong;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createPlaylist(Lcom/sakukelly/music/data/model/Playlist;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "playlist",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sakukelly/music/data/model/Playlist;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/sakukelly/music/data/db/PlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/sakukelly/music/data/db/PlaylistDao_Impl$5;

    invoke-direct {v1, p0, p1}, Lcom/sakukelly/music/data/db/PlaylistDao_Impl$5;-><init>(Lcom/sakukelly/music/data/db/PlaylistDao_Impl;Lcom/sakukelly/music/data/model/Playlist;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deletePlaylist(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/sakukelly/music/data/db/PlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/sakukelly/music/data/db/PlaylistDao_Impl$7;

    invoke-direct {v1, p0, p1}, Lcom/sakukelly/music/data/db/PlaylistDao_Impl$7;-><init>(Lcom/sakukelly/music/data/db/PlaylistDao_Impl;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAll()Lkotlinx/coroutines/flow/Flow;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 187
    const-string v0, "SELECT name FROM playlists ORDER BY name ASC"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 188
    iget-object v2, p0, Lcom/sakukelly/music/data/db/PlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "playlists"

    aput-object v4, v3, v1

    new-instance v4, Lcom/sakukelly/music/data/db/PlaylistDao_Impl$9;

    invoke-direct {v4, p0, v0}, Lcom/sakukelly/music/data/db/PlaylistDao_Impl$9;-><init>(Lcom/sakukelly/music/data/db/PlaylistDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {v2, v1, v3, v4}, Landroidx/room/CoroutinesRoom;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    return-object v0
.end method

.method public getPlaylistSongs(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lcom/sakukelly/music/data/model/Song;",
            ">;>;"
        }
    .end annotation

    .line 221
    const-string v0, "\n        SELECT s.* FROM songs s \n        INNER JOIN playlist_songs ps ON s.path = ps.songPath \n        WHERE ps.playlistName = ? \n        ORDER BY ps.position ASC\n    "

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 223
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 224
    iget-object p1, p0, Lcom/sakukelly/music/data/db/PlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "songs"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "playlist_songs"

    aput-object v3, v2, v1

    new-instance v1, Lcom/sakukelly/music/data/db/PlaylistDao_Impl$10;

    invoke-direct {v1, p0, v0}, Lcom/sakukelly/music/data/db/PlaylistDao_Impl$10;-><init>(Lcom/sakukelly/music/data/db/PlaylistDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {p1, v4, v2, v1}, Landroidx/room/CoroutinesRoom;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1
.end method

.method public removeSongFromPlaylist(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "playlistName",
            "songPath",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/sakukelly/music/data/db/PlaylistDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/sakukelly/music/data/db/PlaylistDao_Impl$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/sakukelly/music/data/db/PlaylistDao_Impl$8;-><init>(Lcom/sakukelly/music/data/db/PlaylistDao_Impl;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p3}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
