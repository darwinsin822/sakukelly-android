.class Lcom/sakukelly/music/data/db/HistoryDao_Impl$2;
.super Ljava/lang/Object;
.source "HistoryDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/data/db/HistoryDao_Impl;->insert(Lcom/sakukelly/music/data/model/HistoryEntry;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sakukelly/music/data/db/HistoryDao_Impl;

.field final synthetic val$entry:Lcom/sakukelly/music/data/model/HistoryEntry;


# direct methods
.method constructor <init>(Lcom/sakukelly/music/data/db/HistoryDao_Impl;Lcom/sakukelly/music/data/model/HistoryEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/sakukelly/music/data/db/HistoryDao_Impl$2;->this$0:Lcom/sakukelly/music/data/db/HistoryDao_Impl;

    iput-object p2, p0, Lcom/sakukelly/music/data/db/HistoryDao_Impl$2;->val$entry:Lcom/sakukelly/music/data/model/HistoryEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Lcom/sakukelly/music/data/db/HistoryDao_Impl$2;->call()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public call()Lkotlin/Unit;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/sakukelly/music/data/db/HistoryDao_Impl$2;->this$0:Lcom/sakukelly/music/data/db/HistoryDao_Impl;

    invoke-static {v0}, Lcom/sakukelly/music/data/db/HistoryDao_Impl;->-$$Nest$fget__db(Lcom/sakukelly/music/data/db/HistoryDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/sakukelly/music/data/db/HistoryDao_Impl$2;->this$0:Lcom/sakukelly/music/data/db/HistoryDao_Impl;

    invoke-static {v0}, Lcom/sakukelly/music/data/db/HistoryDao_Impl;->-$$Nest$fget__insertionAdapterOfHistoryEntry(Lcom/sakukelly/music/data/db/HistoryDao_Impl;)Landroidx/room/EntityInsertionAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sakukelly/music/data/db/HistoryDao_Impl$2;->val$entry:Lcom/sakukelly/music/data/model/HistoryEntry;

    invoke-virtual {v0, v1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lcom/sakukelly/music/data/db/HistoryDao_Impl$2;->this$0:Lcom/sakukelly/music/data/db/HistoryDao_Impl;

    invoke-static {v0}, Lcom/sakukelly/music/data/db/HistoryDao_Impl;->-$$Nest$fget__db(Lcom/sakukelly/music/data/db/HistoryDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    .line 68
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    iget-object v1, p0, Lcom/sakukelly/music/data/db/HistoryDao_Impl$2;->this$0:Lcom/sakukelly/music/data/db/HistoryDao_Impl;

    invoke-static {v1}, Lcom/sakukelly/music/data/db/HistoryDao_Impl;->-$$Nest$fget__db(Lcom/sakukelly/music/data/db/HistoryDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sakukelly/music/data/db/HistoryDao_Impl$2;->this$0:Lcom/sakukelly/music/data/db/HistoryDao_Impl;

    invoke-static {v1}, Lcom/sakukelly/music/data/db/HistoryDao_Impl;->-$$Nest$fget__db(Lcom/sakukelly/music/data/db/HistoryDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 71
    throw v0
.end method
