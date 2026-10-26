.class public final Lcom/sakukelly/music/data/db/HistoryDao_Impl;
.super Ljava/lang/Object;
.source "HistoryDao_Impl.java"

# interfaces
.implements Lcom/sakukelly/music/data/db/HistoryDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfHistoryEntry:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/sakukelly/music/data/model/HistoryEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fget__db(Lcom/sakukelly/music/data/db/HistoryDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    iget-object p0, p0, Lcom/sakukelly/music/data/db/HistoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget__insertionAdapterOfHistoryEntry(Lcom/sakukelly/music/data/db/HistoryDao_Impl;)Landroidx/room/EntityInsertionAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sakukelly/music/data/db/HistoryDao_Impl;->__insertionAdapterOfHistoryEntry:Landroidx/room/EntityInsertionAdapter;

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

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/sakukelly/music/data/db/HistoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 37
    new-instance v0, Lcom/sakukelly/music/data/db/HistoryDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/sakukelly/music/data/db/HistoryDao_Impl$1;-><init>(Lcom/sakukelly/music/data/db/HistoryDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/sakukelly/music/data/db/HistoryDao_Impl;->__insertionAdapterOfHistoryEntry:Landroidx/room/EntityInsertionAdapter;

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

    .line 128
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getRecent(I)Lkotlinx/coroutines/flow/Flow;
    .locals 4
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
            "Lcom/sakukelly/music/data/model/HistoryEntry;",
            ">;>;"
        }
    .end annotation

    .line 79
    const-string v0, "SELECT * FROM history_entries ORDER BY playedAt DESC LIMIT ?"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    int-to-long v2, p1

    .line 81
    invoke-virtual {v0, v1, v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 82
    iget-object p1, p0, Lcom/sakukelly/music/data/db/HistoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "history_entries"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/sakukelly/music/data/db/HistoryDao_Impl$3;

    invoke-direct {v2, p0, v0}, Lcom/sakukelly/music/data/db/HistoryDao_Impl$3;-><init>(Lcom/sakukelly/music/data/db/HistoryDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {p1, v3, v1, v2}, Landroidx/room/CoroutinesRoom;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1
.end method

.method public insert(Lcom/sakukelly/music/data/model/HistoryEntry;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "entry",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sakukelly/music/data/model/HistoryEntry;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/sakukelly/music/data/db/HistoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/sakukelly/music/data/db/HistoryDao_Impl$2;

    invoke-direct {v1, p0, p1}, Lcom/sakukelly/music/data/db/HistoryDao_Impl$2;-><init>(Lcom/sakukelly/music/data/db/HistoryDao_Impl;Lcom/sakukelly/music/data/model/HistoryEntry;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
