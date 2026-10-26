.class Lcom/sakukelly/music/data/db/StreamDao_Impl$5;
.super Ljava/lang/Object;
.source "StreamDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/data/db/StreamDao_Impl;->upsert(Lcom/sakukelly/music/data/model/StreamItem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.field final synthetic this$0:Lcom/sakukelly/music/data/db/StreamDao_Impl;

.field final synthetic val$item:Lcom/sakukelly/music/data/model/StreamItem;


# direct methods
.method constructor <init>(Lcom/sakukelly/music/data/db/StreamDao_Impl;Lcom/sakukelly/music/data/model/StreamItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$item"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lcom/sakukelly/music/data/db/StreamDao_Impl$5;->this$0:Lcom/sakukelly/music/data/db/StreamDao_Impl;

    iput-object p2, p0, Lcom/sakukelly/music/data/db/StreamDao_Impl$5;->val$item:Lcom/sakukelly/music/data/model/StreamItem;

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

    .line 119
    invoke-virtual {p0}, Lcom/sakukelly/music/data/db/StreamDao_Impl$5;->call()Lkotlin/Unit;

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

    .line 123
    iget-object v0, p0, Lcom/sakukelly/music/data/db/StreamDao_Impl$5;->this$0:Lcom/sakukelly/music/data/db/StreamDao_Impl;

    invoke-static {v0}, Lcom/sakukelly/music/data/db/StreamDao_Impl;->-$$Nest$fget__db(Lcom/sakukelly/music/data/db/StreamDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/sakukelly/music/data/db/StreamDao_Impl$5;->this$0:Lcom/sakukelly/music/data/db/StreamDao_Impl;

    invoke-static {v0}, Lcom/sakukelly/music/data/db/StreamDao_Impl;->-$$Nest$fget__upsertionAdapterOfStreamItem(Lcom/sakukelly/music/data/db/StreamDao_Impl;)Landroidx/room/EntityUpsertionAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sakukelly/music/data/db/StreamDao_Impl$5;->val$item:Lcom/sakukelly/music/data/model/StreamItem;

    invoke-virtual {v0, v1}, Landroidx/room/EntityUpsertionAdapter;->upsert(Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/sakukelly/music/data/db/StreamDao_Impl$5;->this$0:Lcom/sakukelly/music/data/db/StreamDao_Impl;

    invoke-static {v0}, Lcom/sakukelly/music/data/db/StreamDao_Impl;->-$$Nest$fget__db(Lcom/sakukelly/music/data/db/StreamDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    .line 127
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    iget-object v1, p0, Lcom/sakukelly/music/data/db/StreamDao_Impl$5;->this$0:Lcom/sakukelly/music/data/db/StreamDao_Impl;

    invoke-static {v1}, Lcom/sakukelly/music/data/db/StreamDao_Impl;->-$$Nest$fget__db(Lcom/sakukelly/music/data/db/StreamDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sakukelly/music/data/db/StreamDao_Impl$5;->this$0:Lcom/sakukelly/music/data/db/StreamDao_Impl;

    invoke-static {v1}, Lcom/sakukelly/music/data/db/StreamDao_Impl;->-$$Nest$fget__db(Lcom/sakukelly/music/data/db/StreamDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 130
    throw v0
.end method
