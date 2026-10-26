.class public final Lcom/sakukelly/music/data/db/StreamDao_Impl;
.super Ljava/lang/Object;
.source "StreamDao_Impl.java"

# interfaces
.implements Lcom/sakukelly/music/data/db/StreamDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __preparedStmtOfToggleFavorite:Landroidx/room/SharedSQLiteStatement;

.field private final __upsertionAdapterOfStreamItem:Landroidx/room/EntityUpsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityUpsertionAdapter<",
            "Lcom/sakukelly/music/data/model/StreamItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fget__db(Lcom/sakukelly/music/data/db/StreamDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    iget-object p0, p0, Lcom/sakukelly/music/data/db/StreamDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget__preparedStmtOfToggleFavorite(Lcom/sakukelly/music/data/db/StreamDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/sakukelly/music/data/db/StreamDao_Impl;->__preparedStmtOfToggleFavorite:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget__upsertionAdapterOfStreamItem(Lcom/sakukelly/music/data/db/StreamDao_Impl;)Landroidx/room/EntityUpsertionAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sakukelly/music/data/db/StreamDao_Impl;->__upsertionAdapterOfStreamItem:Landroidx/room/EntityUpsertionAdapter;

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

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/sakukelly/music/data/db/StreamDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 44
    new-instance v0, Lcom/sakukelly/music/data/db/StreamDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/sakukelly/music/data/db/StreamDao_Impl$1;-><init>(Lcom/sakukelly/music/data/db/StreamDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/sakukelly/music/data/db/StreamDao_Impl;->__preparedStmtOfToggleFavorite:Landroidx/room/SharedSQLiteStatement;

    .line 52
    new-instance v0, Landroidx/room/EntityUpsertionAdapter;

    new-instance v1, Lcom/sakukelly/music/data/db/StreamDao_Impl$2;

    invoke-direct {v1, p0, p1}, Lcom/sakukelly/music/data/db/StreamDao_Impl$2;-><init>(Lcom/sakukelly/music/data/db/StreamDao_Impl;Landroidx/room/RoomDatabase;)V

    new-instance v2, Lcom/sakukelly/music/data/db/StreamDao_Impl$3;

    invoke-direct {v2, p0, p1}, Lcom/sakukelly/music/data/db/StreamDao_Impl$3;-><init>(Lcom/sakukelly/music/data/db/StreamDao_Impl;Landroidx/room/RoomDatabase;)V

    invoke-direct {v0, v1, v2}, Landroidx/room/EntityUpsertionAdapter;-><init>(Landroidx/room/EntityInsertionAdapter;Landroidx/room/EntityDeletionOrUpdateAdapter;)V

    iput-object v0, p0, Lcom/sakukelly/music/data/db/StreamDao_Impl;->__upsertionAdapterOfStreamItem:Landroidx/room/EntityUpsertionAdapter;

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

    .line 292
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAllFavorites()Lkotlinx/coroutines/flow/Flow;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lcom/sakukelly/music/data/model/StreamItem;",
            ">;>;"
        }
    .end annotation

    .line 186
    const-string v0, "SELECT * FROM stream_items WHERE isFavorite = 1"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 187
    iget-object v2, p0, Lcom/sakukelly/music/data/db/StreamDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "stream_items"

    aput-object v4, v3, v1

    new-instance v4, Lcom/sakukelly/music/data/db/StreamDao_Impl$7;

    invoke-direct {v4, p0, v0}, Lcom/sakukelly/music/data/db/StreamDao_Impl$7;-><init>(Lcom/sakukelly/music/data/db/StreamDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {v2, v1, v3, v4}, Landroidx/room/CoroutinesRoom;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    return-object v0
.end method

.method public getById(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "id",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sakukelly/music/data/model/StreamItem;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 138
    const-string v0, "SELECT * FROM stream_items WHERE id = ? LIMIT 1"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 140
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 141
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object p1

    .line 142
    iget-object v1, p0, Lcom/sakukelly/music/data/db/StreamDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v2, Lcom/sakukelly/music/data/db/StreamDao_Impl$6;

    invoke-direct {v2, p0, v0}, Lcom/sakukelly/music/data/db/StreamDao_Impl$6;-><init>(Lcom/sakukelly/music/data/db/StreamDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v0, 0x0

    invoke-static {v1, v0, p1, v2, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRecentStreams(I)Lkotlinx/coroutines/flow/Flow;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "limit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lcom/sakukelly/music/data/model/StreamItem;",
            ">;>;"
        }
    .end annotation

    .line 241
    const-string v0, "\n        SELECT s.* FROM stream_items s \n        INNER JOIN history_entries h ON s.id = h.path \n        WHERE h.isStream = 1\n        ORDER BY h.playedAt DESC \n        LIMIT ?\n    "

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    int-to-long v2, p1

    .line 243
    invoke-virtual {v0, v1, v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 244
    iget-object p1, p0, Lcom/sakukelly/music/data/db/StreamDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "stream_items"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "history_entries"

    aput-object v3, v2, v1

    new-instance v1, Lcom/sakukelly/music/data/db/StreamDao_Impl$8;

    invoke-direct {v1, p0, v0}, Lcom/sakukelly/music/data/db/StreamDao_Impl$8;-><init>(Lcom/sakukelly/music/data/db/StreamDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {p1, v4, v2, v1}, Landroidx/room/CoroutinesRoom;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1
.end method

.method public toggleFavorite(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "id",
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

    .line 94
    iget-object v0, p0, Lcom/sakukelly/music/data/db/StreamDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/sakukelly/music/data/db/StreamDao_Impl$4;

    invoke-direct {v1, p0, p1}, Lcom/sakukelly/music/data/db/StreamDao_Impl$4;-><init>(Lcom/sakukelly/music/data/db/StreamDao_Impl;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public upsert(Lcom/sakukelly/music/data/model/StreamItem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "item",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sakukelly/music/data/model/StreamItem;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/sakukelly/music/data/db/StreamDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/sakukelly/music/data/db/StreamDao_Impl$5;

    invoke-direct {v1, p0, p1}, Lcom/sakukelly/music/data/db/StreamDao_Impl$5;-><init>(Lcom/sakukelly/music/data/db/StreamDao_Impl;Lcom/sakukelly/music/data/model/StreamItem;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
