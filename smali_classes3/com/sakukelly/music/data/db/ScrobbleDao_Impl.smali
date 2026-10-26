.class public final Lcom/sakukelly/music/data/db/ScrobbleDao_Impl;
.super Ljava/lang/Object;
.source "ScrobbleDao_Impl.java"

# interfaces
.implements Lcom/sakukelly/music/data/db/ScrobbleDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfScrobbleQueueItem:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/sakukelly/music/data/model/ScrobbleQueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfIncrementAttempts:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfMarkDone:Landroidx/room/SharedSQLiteStatement;


# direct methods
.method static bridge synthetic -$$Nest$fget__db(Lcom/sakukelly/music/data/db/ScrobbleDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    iget-object p0, p0, Lcom/sakukelly/music/data/db/ScrobbleDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget__insertionAdapterOfScrobbleQueueItem(Lcom/sakukelly/music/data/db/ScrobbleDao_Impl;)Landroidx/room/EntityInsertionAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sakukelly/music/data/db/ScrobbleDao_Impl;->__insertionAdapterOfScrobbleQueueItem:Landroidx/room/EntityInsertionAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget__preparedStmtOfIncrementAttempts(Lcom/sakukelly/music/data/db/ScrobbleDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/sakukelly/music/data/db/ScrobbleDao_Impl;->__preparedStmtOfIncrementAttempts:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget__preparedStmtOfMarkDone(Lcom/sakukelly/music/data/db/ScrobbleDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/sakukelly/music/data/db/ScrobbleDao_Impl;->__preparedStmtOfMarkDone:Landroidx/room/SharedSQLiteStatement;

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

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/sakukelly/music/data/db/ScrobbleDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 42
    new-instance v0, Lcom/sakukelly/music/data/db/ScrobbleDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/sakukelly/music/data/db/ScrobbleDao_Impl$1;-><init>(Lcom/sakukelly/music/data/db/ScrobbleDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/sakukelly/music/data/db/ScrobbleDao_Impl;->__insertionAdapterOfScrobbleQueueItem:Landroidx/room/EntityInsertionAdapter;

    .line 62
    new-instance v0, Lcom/sakukelly/music/data/db/ScrobbleDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/sakukelly/music/data/db/ScrobbleDao_Impl$2;-><init>(Lcom/sakukelly/music/data/db/ScrobbleDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/sakukelly/music/data/db/ScrobbleDao_Impl;->__preparedStmtOfMarkDone:Landroidx/room/SharedSQLiteStatement;

    .line 70
    new-instance v0, Lcom/sakukelly/music/data/db/ScrobbleDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/sakukelly/music/data/db/ScrobbleDao_Impl$3;-><init>(Lcom/sakukelly/music/data/db/ScrobbleDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/sakukelly/music/data/db/ScrobbleDao_Impl;->__preparedStmtOfIncrementAttempts:Landroidx/room/SharedSQLiteStatement;

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

    .line 206
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public enqueue(Lcom/sakukelly/music/data/model/ScrobbleQueueItem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "Lcom/sakukelly/music/data/model/ScrobbleQueueItem;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/sakukelly/music/data/db/ScrobbleDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/sakukelly/music/data/db/ScrobbleDao_Impl$4;

    invoke-direct {v1, p0, p1}, Lcom/sakukelly/music/data/db/ScrobbleDao_Impl$4;-><init>(Lcom/sakukelly/music/data/db/ScrobbleDao_Impl;Lcom/sakukelly/music/data/model/ScrobbleQueueItem;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getPending(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "service",
            "limit",
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
            "Ljava/util/List<",
            "Lcom/sakukelly/music/data/model/ScrobbleQueueItem;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 153
    const-string v0, "SELECT * FROM scrobble_queue WHERE service = ? ORDER BY listenedAt ASC LIMIT ?"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    const/4 v2, 0x1

    .line 155
    invoke-virtual {v0, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    int-to-long p1, p2

    .line 157
    invoke-virtual {v0, v1, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 158
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object p1

    .line 159
    iget-object p2, p0, Lcom/sakukelly/music/data/db/ScrobbleDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/sakukelly/music/data/db/ScrobbleDao_Impl$7;

    invoke-direct {v1, p0, v0}, Lcom/sakukelly/music/data/db/ScrobbleDao_Impl$7;-><init>(Lcom/sakukelly/music/data/db/ScrobbleDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v0, 0x0

    invoke-static {p2, v0, p1, v1, p3}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public incrementAttempts(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/sakukelly/music/data/db/ScrobbleDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/sakukelly/music/data/db/ScrobbleDao_Impl$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/sakukelly/music/data/db/ScrobbleDao_Impl$6;-><init>(Lcom/sakukelly/music/data/db/ScrobbleDao_Impl;J)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p3}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public markDone(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/sakukelly/music/data/db/ScrobbleDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/sakukelly/music/data/db/ScrobbleDao_Impl$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/sakukelly/music/data/db/ScrobbleDao_Impl$5;-><init>(Lcom/sakukelly/music/data/db/ScrobbleDao_Impl;J)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p3}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
