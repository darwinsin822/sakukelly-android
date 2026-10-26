.class public final Lcom/sakukelly/music/data/db/DownloadDao_Impl;
.super Ljava/lang/Object;
.source "DownloadDao_Impl.java"

# interfaces
.implements Lcom/sakukelly/music/data/db/DownloadDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfDownload:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/sakukelly/music/data/model/Download;",
            ">;"
        }
    .end annotation
.end field

.field private final __upsertionAdapterOfDownload:Landroidx/room/EntityUpsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityUpsertionAdapter<",
            "Lcom/sakukelly/music/data/model/Download;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fget__db(Lcom/sakukelly/music/data/db/DownloadDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    iget-object p0, p0, Lcom/sakukelly/music/data/db/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget__deletionAdapterOfDownload(Lcom/sakukelly/music/data/db/DownloadDao_Impl;)Landroidx/room/EntityDeletionOrUpdateAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sakukelly/music/data/db/DownloadDao_Impl;->__deletionAdapterOfDownload:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget__upsertionAdapterOfDownload(Lcom/sakukelly/music/data/db/DownloadDao_Impl;)Landroidx/room/EntityUpsertionAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sakukelly/music/data/db/DownloadDao_Impl;->__upsertionAdapterOfDownload:Landroidx/room/EntityUpsertionAdapter;

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

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/sakukelly/music/data/db/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 41
    new-instance v0, Lcom/sakukelly/music/data/db/DownloadDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/sakukelly/music/data/db/DownloadDao_Impl$1;-><init>(Lcom/sakukelly/music/data/db/DownloadDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/sakukelly/music/data/db/DownloadDao_Impl;->__deletionAdapterOfDownload:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 54
    new-instance v0, Landroidx/room/EntityUpsertionAdapter;

    new-instance v1, Lcom/sakukelly/music/data/db/DownloadDao_Impl$2;

    invoke-direct {v1, p0, p1}, Lcom/sakukelly/music/data/db/DownloadDao_Impl$2;-><init>(Lcom/sakukelly/music/data/db/DownloadDao_Impl;Landroidx/room/RoomDatabase;)V

    new-instance v2, Lcom/sakukelly/music/data/db/DownloadDao_Impl$3;

    invoke-direct {v2, p0, p1}, Lcom/sakukelly/music/data/db/DownloadDao_Impl$3;-><init>(Lcom/sakukelly/music/data/db/DownloadDao_Impl;Landroidx/room/RoomDatabase;)V

    invoke-direct {v0, v1, v2}, Landroidx/room/EntityUpsertionAdapter;-><init>(Landroidx/room/EntityInsertionAdapter;Landroidx/room/EntityDeletionOrUpdateAdapter;)V

    iput-object v0, p0, Lcom/sakukelly/music/data/db/DownloadDao_Impl;->__upsertionAdapterOfDownload:Landroidx/room/EntityUpsertionAdapter;

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

    .line 177
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delete(Lcom/sakukelly/music/data/model/Download;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "download",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sakukelly/music/data/model/Download;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/sakukelly/music/data/db/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/sakukelly/music/data/db/DownloadDao_Impl$4;

    invoke-direct {v1, p0, p1}, Lcom/sakukelly/music/data/db/DownloadDao_Impl$4;-><init>(Lcom/sakukelly/music/data/db/DownloadDao_Impl;Lcom/sakukelly/music/data/model/Download;)V

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
            "Lcom/sakukelly/music/data/model/Download;",
            ">;>;"
        }
    .end annotation

    .line 131
    const-string v0, "SELECT * FROM downloads ORDER BY downloadedAt DESC"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 132
    iget-object v2, p0, Lcom/sakukelly/music/data/db/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "downloads"

    aput-object v4, v3, v1

    new-instance v4, Lcom/sakukelly/music/data/db/DownloadDao_Impl$6;

    invoke-direct {v4, p0, v0}, Lcom/sakukelly/music/data/db/DownloadDao_Impl$6;-><init>(Lcom/sakukelly/music/data/db/DownloadDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {v2, v1, v3, v4}, Landroidx/room/CoroutinesRoom;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    return-object v0
.end method

.method public upsert(Lcom/sakukelly/music/data/model/Download;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "download",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sakukelly/music/data/model/Download;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/sakukelly/music/data/db/DownloadDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/sakukelly/music/data/db/DownloadDao_Impl$5;

    invoke-direct {v1, p0, p1}, Lcom/sakukelly/music/data/db/DownloadDao_Impl$5;-><init>(Lcom/sakukelly/music/data/db/DownloadDao_Impl;Lcom/sakukelly/music/data/model/Download;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
