.class public final Lcom/sakukelly/music/data/db/SongDao_Impl;
.super Ljava/lang/Object;
.source "SongDao_Impl.java"

# interfaces
.implements Lcom/sakukelly/music/data/db/SongDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfSong:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/sakukelly/music/data/model/Song;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfSong:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/sakukelly/music/data/model/Song;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDeleteAllSongs:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdateFavorite:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdateLoudness:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdateRating:Landroidx/room/SharedSQLiteStatement;

.field private final __updateAdapterOfSong:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/sakukelly/music/data/model/Song;",
            ">;"
        }
    .end annotation
.end field

.field private final __upsertionAdapterOfSong:Landroidx/room/EntityUpsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityUpsertionAdapter<",
            "Lcom/sakukelly/music/data/model/Song;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fget__db(Lcom/sakukelly/music/data/db/SongDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    iget-object p0, p0, Lcom/sakukelly/music/data/db/SongDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget__deletionAdapterOfSong(Lcom/sakukelly/music/data/db/SongDao_Impl;)Landroidx/room/EntityDeletionOrUpdateAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sakukelly/music/data/db/SongDao_Impl;->__deletionAdapterOfSong:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget__insertionAdapterOfSong(Lcom/sakukelly/music/data/db/SongDao_Impl;)Landroidx/room/EntityInsertionAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sakukelly/music/data/db/SongDao_Impl;->__insertionAdapterOfSong:Landroidx/room/EntityInsertionAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget__preparedStmtOfDeleteAllSongs(Lcom/sakukelly/music/data/db/SongDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/sakukelly/music/data/db/SongDao_Impl;->__preparedStmtOfDeleteAllSongs:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget__preparedStmtOfUpdateFavorite(Lcom/sakukelly/music/data/db/SongDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/sakukelly/music/data/db/SongDao_Impl;->__preparedStmtOfUpdateFavorite:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget__preparedStmtOfUpdateLoudness(Lcom/sakukelly/music/data/db/SongDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/sakukelly/music/data/db/SongDao_Impl;->__preparedStmtOfUpdateLoudness:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget__preparedStmtOfUpdateRating(Lcom/sakukelly/music/data/db/SongDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/sakukelly/music/data/db/SongDao_Impl;->__preparedStmtOfUpdateRating:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget__updateAdapterOfSong(Lcom/sakukelly/music/data/db/SongDao_Impl;)Landroidx/room/EntityDeletionOrUpdateAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sakukelly/music/data/db/SongDao_Impl;->__updateAdapterOfSong:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget__upsertionAdapterOfSong(Lcom/sakukelly/music/data/db/SongDao_Impl;)Landroidx/room/EntityUpsertionAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sakukelly/music/data/db/SongDao_Impl;->__upsertionAdapterOfSong:Landroidx/room/EntityUpsertionAdapter;

    return-object p0
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "__db"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/sakukelly/music/data/db/SongDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 59
    new-instance v0, Lcom/sakukelly/music/data/db/SongDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/sakukelly/music/data/db/SongDao_Impl$1;-><init>(Lcom/sakukelly/music/data/db/SongDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/sakukelly/music/data/db/SongDao_Impl;->__insertionAdapterOfSong:Landroidx/room/EntityInsertionAdapter;

    .line 96
    new-instance v0, Lcom/sakukelly/music/data/db/SongDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/sakukelly/music/data/db/SongDao_Impl$2;-><init>(Lcom/sakukelly/music/data/db/SongDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/sakukelly/music/data/db/SongDao_Impl;->__deletionAdapterOfSong:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 109
    new-instance v0, Lcom/sakukelly/music/data/db/SongDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/sakukelly/music/data/db/SongDao_Impl$3;-><init>(Lcom/sakukelly/music/data/db/SongDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/sakukelly/music/data/db/SongDao_Impl;->__updateAdapterOfSong:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 147
    new-instance v0, Lcom/sakukelly/music/data/db/SongDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/sakukelly/music/data/db/SongDao_Impl$4;-><init>(Lcom/sakukelly/music/data/db/SongDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/sakukelly/music/data/db/SongDao_Impl;->__preparedStmtOfUpdateLoudness:Landroidx/room/SharedSQLiteStatement;

    .line 155
    new-instance v0, Lcom/sakukelly/music/data/db/SongDao_Impl$5;

    invoke-direct {v0, p0, p1}, Lcom/sakukelly/music/data/db/SongDao_Impl$5;-><init>(Lcom/sakukelly/music/data/db/SongDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/sakukelly/music/data/db/SongDao_Impl;->__preparedStmtOfUpdateFavorite:Landroidx/room/SharedSQLiteStatement;

    .line 163
    new-instance v0, Lcom/sakukelly/music/data/db/SongDao_Impl$6;

    invoke-direct {v0, p0, p1}, Lcom/sakukelly/music/data/db/SongDao_Impl$6;-><init>(Lcom/sakukelly/music/data/db/SongDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/sakukelly/music/data/db/SongDao_Impl;->__preparedStmtOfUpdateRating:Landroidx/room/SharedSQLiteStatement;

    .line 171
    new-instance v0, Lcom/sakukelly/music/data/db/SongDao_Impl$7;

    invoke-direct {v0, p0, p1}, Lcom/sakukelly/music/data/db/SongDao_Impl$7;-><init>(Lcom/sakukelly/music/data/db/SongDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/sakukelly/music/data/db/SongDao_Impl;->__preparedStmtOfDeleteAllSongs:Landroidx/room/SharedSQLiteStatement;

    .line 179
    new-instance v0, Landroidx/room/EntityUpsertionAdapter;

    new-instance v1, Lcom/sakukelly/music/data/db/SongDao_Impl$8;

    invoke-direct {v1, p0, p1}, Lcom/sakukelly/music/data/db/SongDao_Impl$8;-><init>(Lcom/sakukelly/music/data/db/SongDao_Impl;Landroidx/room/RoomDatabase;)V

    new-instance v2, Lcom/sakukelly/music/data/db/SongDao_Impl$9;

    invoke-direct {v2, p0, p1}, Lcom/sakukelly/music/data/db/SongDao_Impl$9;-><init>(Lcom/sakukelly/music/data/db/SongDao_Impl;Landroidx/room/RoomDatabase;)V

    invoke-direct {v0, v1, v2}, Landroidx/room/EntityUpsertionAdapter;-><init>(Landroidx/room/EntityInsertionAdapter;Landroidx/room/EntityDeletionOrUpdateAdapter;)V

    iput-object v0, p0, Lcom/sakukelly/music/data/db/SongDao_Impl;->__upsertionAdapterOfSong:Landroidx/room/EntityUpsertionAdapter;

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

    .line 1217
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delete(Lcom/sakukelly/music/data/model/Song;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "song",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sakukelly/music/data/model/Song;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/sakukelly/music/data/db/SongDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/sakukelly/music/data/db/SongDao_Impl$12;

    invoke-direct {v1, p0, p1}, Lcom/sakukelly/music/data/db/SongDao_Impl$12;-><init>(Lcom/sakukelly/music/data/db/SongDao_Impl;Lcom/sakukelly/music/data/model/Song;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deleteAllSongs(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 414
    iget-object v0, p0, Lcom/sakukelly/music/data/db/SongDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/sakukelly/music/data/db/SongDao_Impl$17;

    invoke-direct {v1, p0}, Lcom/sakukelly/music/data/db/SongDao_Impl$17;-><init>(Lcom/sakukelly/music/data/db/SongDao_Impl;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1, p1}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAllSongs()Lkotlinx/coroutines/flow/Flow;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lcom/sakukelly/music/data/model/Song;",
            ">;>;"
        }
    .end annotation

    .line 456
    const-string v0, "SELECT * FROM songs ORDER BY artist, album, title"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 457
    iget-object v2, p0, Lcom/sakukelly/music/data/db/SongDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "songs"

    aput-object v4, v3, v1

    new-instance v4, Lcom/sakukelly/music/data/db/SongDao_Impl$19;

    invoke-direct {v4, p0, v0}, Lcom/sakukelly/music/data/db/SongDao_Impl$19;-><init>(Lcom/sakukelly/music/data/db/SongDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {v2, v1, v3, v4}, Landroidx/room/CoroutinesRoom;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    return-object v0
.end method

.method public getAllSongsSync(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/sakukelly/music/data/model/Song;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 535
    const-string v0, "SELECT * FROM songs ORDER BY artist, album, title"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 536
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object v2

    .line 537
    iget-object v3, p0, Lcom/sakukelly/music/data/db/SongDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v4, Lcom/sakukelly/music/data/db/SongDao_Impl$20;

    invoke-direct {v4, p0, v0}, Lcom/sakukelly/music/data/db/SongDao_Impl$20;-><init>(Lcom/sakukelly/music/data/db/SongDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {v3, v1, v2, v4, p1}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getFavorites()Lkotlinx/coroutines/flow/Flow;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lcom/sakukelly/music/data/model/Song;",
            ">;>;"
        }
    .end annotation

    .line 696
    const-string v0, "SELECT * FROM songs WHERE isFavorite = 1 ORDER BY artist, album, title"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 697
    iget-object v2, p0, Lcom/sakukelly/music/data/db/SongDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "songs"

    aput-object v4, v3, v1

    new-instance v4, Lcom/sakukelly/music/data/db/SongDao_Impl$22;

    invoke-direct {v4, p0, v0}, Lcom/sakukelly/music/data/db/SongDao_Impl$22;-><init>(Lcom/sakukelly/music/data/db/SongDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {v2, v1, v3, v4}, Landroidx/room/CoroutinesRoom;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    return-object v0
.end method

.method public getFavoritesSync(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/sakukelly/music/data/model/Song;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 775
    const-string v0, "SELECT * FROM songs WHERE isFavorite = 1 ORDER BY artist, album, title"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 776
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object v2

    .line 777
    iget-object v3, p0, Lcom/sakukelly/music/data/db/SongDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v4, Lcom/sakukelly/music/data/db/SongDao_Impl$23;

    invoke-direct {v4, p0, v0}, Lcom/sakukelly/music/data/db/SongDao_Impl$23;-><init>(Lcom/sakukelly/music/data/db/SongDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {v3, v1, v2, v4, p1}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getMostPlayed(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "limit",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/sakukelly/music/data/model/Song;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 968
    const-string v0, "\n        SELECT s.* FROM songs s \n        INNER JOIN play_stats p ON s.path = p.path \n        ORDER BY p.plays DESC \n        LIMIT ?\n    "

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    int-to-long v2, p1

    .line 970
    invoke-virtual {v0, v1, v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 971
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object p1

    .line 972
    iget-object v1, p0, Lcom/sakukelly/music/data/db/SongDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v2, Lcom/sakukelly/music/data/db/SongDao_Impl$26;

    invoke-direct {v2, p0, v0}, Lcom/sakukelly/music/data/db/SongDao_Impl$26;-><init>(Lcom/sakukelly/music/data/db/SongDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v0, 0x0

    invoke-static {v1, v0, p1, v2, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRecentlyPlayed(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "limit",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/sakukelly/music/data/model/Song;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1053
    const-string v0, "\n        SELECT s.* FROM songs s \n        INNER JOIN history_entries h ON s.path = h.path \n        WHERE h.isStream = 0\n        ORDER BY h.playedAt DESC \n        LIMIT ?\n    "

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    int-to-long v2, p1

    .line 1055
    invoke-virtual {v0, v1, v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 1056
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object p1

    .line 1057
    iget-object v1, p0, Lcom/sakukelly/music/data/db/SongDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v2, Lcom/sakukelly/music/data/db/SongDao_Impl$27;

    invoke-direct {v2, p0, v0}, Lcom/sakukelly/music/data/db/SongDao_Impl$27;-><init>(Lcom/sakukelly/music/data/db/SongDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v0, 0x0

    invoke-static {v1, v0, p1, v2, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getSongByPath(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "path",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sakukelly/music/data/model/Song;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 885
    const-string v0, "SELECT * FROM songs WHERE path = ? LIMIT 1"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 887
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 888
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object p1

    .line 889
    iget-object v1, p0, Lcom/sakukelly/music/data/db/SongDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v2, Lcom/sakukelly/music/data/db/SongDao_Impl$25;

    invoke-direct {v2, p0, v0}, Lcom/sakukelly/music/data/db/SongDao_Impl$25;-><init>(Lcom/sakukelly/music/data/db/SongDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v0, 0x0

    invoke-static {v1, v0, p1, v2, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getSongsForPlaylist(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;
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

    .line 1136
    const-string v0, "\n        SELECT s.* FROM songs s \n        INNER JOIN playlist_songs ps ON s.path = ps.songPath \n        WHERE ps.playlistName = ? \n        ORDER BY ps.position ASC\n    "

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 1138
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 1139
    iget-object p1, p0, Lcom/sakukelly/music/data/db/SongDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "songs"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "playlist_songs"

    aput-object v3, v2, v1

    new-instance v1, Lcom/sakukelly/music/data/db/SongDao_Impl$28;

    invoke-direct {v1, p0, v0}, Lcom/sakukelly/music/data/db/SongDao_Impl$28;-><init>(Lcom/sakukelly/music/data/db/SongDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {p1, v4, v2, v1}, Landroidx/room/CoroutinesRoom;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1
.end method

.method public insert(Lcom/sakukelly/music/data/model/Song;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "song",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sakukelly/music/data/model/Song;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/sakukelly/music/data/db/SongDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/sakukelly/music/data/db/SongDao_Impl$10;

    invoke-direct {v1, p0, p1}, Lcom/sakukelly/music/data/db/SongDao_Impl$10;-><init>(Lcom/sakukelly/music/data/db/SongDao_Impl;Lcom/sakukelly/music/data/model/Song;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public insertAll(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "songs",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sakukelly/music/data/model/Song;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/sakukelly/music/data/db/SongDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/sakukelly/music/data/db/SongDao_Impl$11;

    invoke-direct {v1, p0, p1}, Lcom/sakukelly/music/data/db/SongDao_Impl$11;-><init>(Lcom/sakukelly/music/data/db/SongDao_Impl;Ljava/util/List;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isFavorite(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "path",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 851
    const-string v0, "SELECT isFavorite FROM songs WHERE path = ? LIMIT 1"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 853
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 854
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object p1

    .line 855
    iget-object v1, p0, Lcom/sakukelly/music/data/db/SongDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v2, Lcom/sakukelly/music/data/db/SongDao_Impl$24;

    invoke-direct {v2, p0, v0}, Lcom/sakukelly/music/data/db/SongDao_Impl$24;-><init>(Lcom/sakukelly/music/data/db/SongDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v0, 0x0

    invoke-static {v1, v0, p1, v2, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public searchSongs(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "query"
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

    .line 611
    const-string v0, "SELECT * FROM songs WHERE title LIKE \'%\' || ? || \'%\' OR artist LIKE \'%\' || ? || \'%\' OR album LIKE \'%\' || ? || \'%\' ORDER BY artist, album, title"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    const/4 v2, 0x1

    .line 613
    invoke-virtual {v0, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    const/4 v3, 0x2

    .line 615
    invoke-virtual {v0, v3, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 617
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 618
    iget-object p1, p0, Lcom/sakukelly/music/data/db/SongDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "songs"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/sakukelly/music/data/db/SongDao_Impl$21;

    invoke-direct {v2, p0, v0}, Lcom/sakukelly/music/data/db/SongDao_Impl$21;-><init>(Lcom/sakukelly/music/data/db/SongDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {p1, v3, v1, v2}, Landroidx/room/CoroutinesRoom;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1
.end method

.method public update(Lcom/sakukelly/music/data/model/Song;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "song",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sakukelly/music/data/model/Song;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/sakukelly/music/data/db/SongDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/sakukelly/music/data/db/SongDao_Impl$13;

    invoke-direct {v1, p0, p1}, Lcom/sakukelly/music/data/db/SongDao_Impl$13;-><init>(Lcom/sakukelly/music/data/db/SongDao_Impl;Lcom/sakukelly/music/data/model/Song;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public updateFavorite(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "path",
            "isFavorite",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/sakukelly/music/data/db/SongDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/sakukelly/music/data/db/SongDao_Impl$15;

    invoke-direct {v1, p0, p2, p1}, Lcom/sakukelly/music/data/db/SongDao_Impl$15;-><init>(Lcom/sakukelly/music/data/db/SongDao_Impl;ZLjava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p3}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public updateLoudness(Ljava/lang/String;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "path",
            "loudness",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lcom/sakukelly/music/data/db/SongDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/sakukelly/music/data/db/SongDao_Impl$14;

    invoke-direct {v1, p0, p2, p1}, Lcom/sakukelly/music/data/db/SongDao_Impl$14;-><init>(Lcom/sakukelly/music/data/db/SongDao_Impl;FLjava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p3}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public updateRating(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "path",
            "rating",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 387
    iget-object v0, p0, Lcom/sakukelly/music/data/db/SongDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/sakukelly/music/data/db/SongDao_Impl$16;

    invoke-direct {v1, p0, p2, p1}, Lcom/sakukelly/music/data/db/SongDao_Impl$16;-><init>(Lcom/sakukelly/music/data/db/SongDao_Impl;ILjava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p3}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public upsert(Lcom/sakukelly/music/data/model/Song;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "song",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sakukelly/music/data/model/Song;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 437
    iget-object v0, p0, Lcom/sakukelly/music/data/db/SongDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/sakukelly/music/data/db/SongDao_Impl$18;

    invoke-direct {v1, p0, p1}, Lcom/sakukelly/music/data/db/SongDao_Impl$18;-><init>(Lcom/sakukelly/music/data/db/SongDao_Impl;Lcom/sakukelly/music/data/model/Song;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
