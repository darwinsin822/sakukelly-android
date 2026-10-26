.class public final Lcom/sakukelly/music/data/db/StatsDao_Impl;
.super Ljava/lang/Object;
.source "StatsDao_Impl.java"

# interfaces
.implements Lcom/sakukelly/music/data/db/StatsDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfPlayStats:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/sakukelly/music/data/model/PlayStats;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfUpdateStatsPlay:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdateStatsSkip:Landroidx/room/SharedSQLiteStatement;


# direct methods
.method public static synthetic $r8$lambda$pz8O8MLvUj3todow7KqJJwJgHdc(Lcom/sakukelly/music/data/db/StatsDao_Impl;Ljava/lang/String;JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/sakukelly/music/data/db/StatsDao_Impl;->lambda$recordPlay$0(Ljava/lang/String;JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$v4Nf5BvDUQZxuE90vJvuXaW9eyc(Lcom/sakukelly/music/data/db/StatsDao_Impl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sakukelly/music/data/db/StatsDao_Impl;->lambda$recordSkip$1(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget__db(Lcom/sakukelly/music/data/db/StatsDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    iget-object p0, p0, Lcom/sakukelly/music/data/db/StatsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget__insertionAdapterOfPlayStats(Lcom/sakukelly/music/data/db/StatsDao_Impl;)Landroidx/room/EntityInsertionAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sakukelly/music/data/db/StatsDao_Impl;->__insertionAdapterOfPlayStats:Landroidx/room/EntityInsertionAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget__preparedStmtOfUpdateStatsPlay(Lcom/sakukelly/music/data/db/StatsDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/sakukelly/music/data/db/StatsDao_Impl;->__preparedStmtOfUpdateStatsPlay:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget__preparedStmtOfUpdateStatsSkip(Lcom/sakukelly/music/data/db/StatsDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/sakukelly/music/data/db/StatsDao_Impl;->__preparedStmtOfUpdateStatsSkip:Landroidx/room/SharedSQLiteStatement;

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

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/sakukelly/music/data/db/StatsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 45
    new-instance v0, Lcom/sakukelly/music/data/db/StatsDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/sakukelly/music/data/db/StatsDao_Impl$1;-><init>(Lcom/sakukelly/music/data/db/StatsDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/sakukelly/music/data/db/StatsDao_Impl;->__insertionAdapterOfPlayStats:Landroidx/room/EntityInsertionAdapter;

    .line 62
    new-instance v0, Lcom/sakukelly/music/data/db/StatsDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/sakukelly/music/data/db/StatsDao_Impl$2;-><init>(Lcom/sakukelly/music/data/db/StatsDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/sakukelly/music/data/db/StatsDao_Impl;->__preparedStmtOfUpdateStatsPlay:Landroidx/room/SharedSQLiteStatement;

    .line 70
    new-instance v0, Lcom/sakukelly/music/data/db/StatsDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/sakukelly/music/data/db/StatsDao_Impl$3;-><init>(Lcom/sakukelly/music/data/db/StatsDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/sakukelly/music/data/db/StatsDao_Impl;->__preparedStmtOfUpdateStatsSkip:Landroidx/room/SharedSQLiteStatement;

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

    .line 253
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$recordPlay$0(Ljava/lang/String;JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 101
    invoke-static/range {p0 .. p6}, Lcom/sakukelly/music/data/db/StatsDao$DefaultImpls;->recordPlay(Lcom/sakukelly/music/data/db/StatsDao;Ljava/lang/String;JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$recordSkip$1(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 106
    invoke-static {p0, p1, p2}, Lcom/sakukelly/music/data/db/StatsDao$DefaultImpls;->recordSkip(Lcom/sakukelly/music/data/db/StatsDao;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
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
            "Lcom/sakukelly/music/data/model/PlayStats;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 211
    const-string v0, "SELECT * FROM play_stats ORDER BY plays DESC LIMIT ?"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    int-to-long v2, p1

    .line 213
    invoke-virtual {v0, v1, v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 214
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object p1

    .line 215
    iget-object v1, p0, Lcom/sakukelly/music/data/db/StatsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v2, Lcom/sakukelly/music/data/db/StatsDao_Impl$8;

    invoke-direct {v2, p0, v0}, Lcom/sakukelly/music/data/db/StatsDao_Impl$8;-><init>(Lcom/sakukelly/music/data/db/StatsDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v0, 0x0

    invoke-static {v1, v0, p1, v2, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getStats(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "Lcom/sakukelly/music/data/model/PlayStats;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 167
    const-string v0, "SELECT * FROM play_stats WHERE path = ? LIMIT 1"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 169
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 170
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object p1

    .line 171
    iget-object v1, p0, Lcom/sakukelly/music/data/db/StatsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v2, Lcom/sakukelly/music/data/db/StatsDao_Impl$7;

    invoke-direct {v2, p0, v0}, Lcom/sakukelly/music/data/db/StatsDao_Impl$7;-><init>(Lcom/sakukelly/music/data/db/StatsDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v0, 0x0

    invoke-static {v1, v0, p1, v2, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public insertStats(Lcom/sakukelly/music/data/model/PlayStats;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "stats",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sakukelly/music/data/model/PlayStats;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/sakukelly/music/data/db/StatsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/sakukelly/music/data/db/StatsDao_Impl$4;

    invoke-direct {v1, p0, p1}, Lcom/sakukelly/music/data/db/StatsDao_Impl$4;-><init>(Lcom/sakukelly/music/data/db/StatsDao_Impl;Lcom/sakukelly/music/data/model/PlayStats;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public recordPlay(Ljava/lang/String;JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "path",
            "currentTime",
            "durationListened",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/sakukelly/music/data/db/StatsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v8, Lcom/sakukelly/music/data/db/StatsDao_Impl$$ExternalSyntheticLambda0;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/sakukelly/music/data/db/StatsDao_Impl$$ExternalSyntheticLambda0;-><init>(Lcom/sakukelly/music/data/db/StatsDao_Impl;Ljava/lang/String;JJ)V

    invoke-static {v0, v8, p6}, Landroidx/room/RoomDatabaseKt;->withTransaction(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public recordSkip(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/sakukelly/music/data/db/StatsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/sakukelly/music/data/db/StatsDao_Impl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/sakukelly/music/data/db/StatsDao_Impl$$ExternalSyntheticLambda1;-><init>(Lcom/sakukelly/music/data/db/StatsDao_Impl;Ljava/lang/String;)V

    invoke-static {v0, v1, p2}, Landroidx/room/RoomDatabaseKt;->withTransaction(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public updateStatsPlay(Ljava/lang/String;JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "path",
            "currentTime",
            "durationListened",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/sakukelly/music/data/db/StatsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v8, Lcom/sakukelly/music/data/db/StatsDao_Impl$5;

    move-object v1, v8

    move-object v2, p0

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/sakukelly/music/data/db/StatsDao_Impl$5;-><init>(Lcom/sakukelly/music/data/db/StatsDao_Impl;JJLjava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v8, p6}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public updateStatsSkip(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/sakukelly/music/data/db/StatsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/sakukelly/music/data/db/StatsDao_Impl$6;

    invoke-direct {v1, p0, p1}, Lcom/sakukelly/music/data/db/StatsDao_Impl$6;-><init>(Lcom/sakukelly/music/data/db/StatsDao_Impl;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
