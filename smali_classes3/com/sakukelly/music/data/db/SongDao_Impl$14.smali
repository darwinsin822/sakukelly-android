.class Lcom/sakukelly/music/data/db/SongDao_Impl$14;
.super Ljava/lang/Object;
.source "SongDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/data/db/SongDao_Impl;->updateLoudness(Ljava/lang/String;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.field final synthetic this$0:Lcom/sakukelly/music/data/db/SongDao_Impl;

.field final synthetic val$loudness:F

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sakukelly/music/data/db/SongDao_Impl;FLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$loudness",
            "val$path"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 330
    iput-object p1, p0, Lcom/sakukelly/music/data/db/SongDao_Impl$14;->this$0:Lcom/sakukelly/music/data/db/SongDao_Impl;

    iput p2, p0, Lcom/sakukelly/music/data/db/SongDao_Impl$14;->val$loudness:F

    iput-object p3, p0, Lcom/sakukelly/music/data/db/SongDao_Impl$14;->val$path:Ljava/lang/String;

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

    .line 330
    invoke-virtual {p0}, Lcom/sakukelly/music/data/db/SongDao_Impl$14;->call()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public call()Lkotlin/Unit;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/sakukelly/music/data/db/SongDao_Impl$14;->this$0:Lcom/sakukelly/music/data/db/SongDao_Impl;

    invoke-static {v0}, Lcom/sakukelly/music/data/db/SongDao_Impl;->-$$Nest$fget__preparedStmtOfUpdateLoudness(Lcom/sakukelly/music/data/db/SongDao_Impl;)Landroidx/room/SharedSQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 336
    iget v1, p0, Lcom/sakukelly/music/data/db/SongDao_Impl$14;->val$loudness:F

    float-to-double v1, v1

    const/4 v3, 0x1

    invoke-interface {v0, v3, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindDouble(ID)V

    const/4 v1, 0x2

    .line 338
    iget-object v2, p0, Lcom/sakukelly/music/data/db/SongDao_Impl$14;->val$path:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 340
    :try_start_0
    iget-object v1, p0, Lcom/sakukelly/music/data/db/SongDao_Impl$14;->this$0:Lcom/sakukelly/music/data/db/SongDao_Impl;

    invoke-static {v1}, Lcom/sakukelly/music/data/db/SongDao_Impl;->-$$Nest$fget__db(Lcom/sakukelly/music/data/db/SongDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 342
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 343
    iget-object v1, p0, Lcom/sakukelly/music/data/db/SongDao_Impl$14;->this$0:Lcom/sakukelly/music/data/db/SongDao_Impl;

    invoke-static {v1}, Lcom/sakukelly/music/data/db/SongDao_Impl;->-$$Nest$fget__db(Lcom/sakukelly/music/data/db/SongDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    .line 344
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    :try_start_2
    iget-object v2, p0, Lcom/sakukelly/music/data/db/SongDao_Impl$14;->this$0:Lcom/sakukelly/music/data/db/SongDao_Impl;

    invoke-static {v2}, Lcom/sakukelly/music/data/db/SongDao_Impl;->-$$Nest$fget__db(Lcom/sakukelly/music/data/db/SongDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 349
    iget-object v2, p0, Lcom/sakukelly/music/data/db/SongDao_Impl$14;->this$0:Lcom/sakukelly/music/data/db/SongDao_Impl;

    invoke-static {v2}, Lcom/sakukelly/music/data/db/SongDao_Impl;->-$$Nest$fget__preparedStmtOfUpdateLoudness(Lcom/sakukelly/music/data/db/SongDao_Impl;)Landroidx/room/SharedSQLiteStatement;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-object v1

    :catchall_0
    move-exception v1

    .line 346
    :try_start_3
    iget-object v2, p0, Lcom/sakukelly/music/data/db/SongDao_Impl$14;->this$0:Lcom/sakukelly/music/data/db/SongDao_Impl;

    invoke-static {v2}, Lcom/sakukelly/music/data/db/SongDao_Impl;->-$$Nest$fget__db(Lcom/sakukelly/music/data/db/SongDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 347
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    .line 349
    iget-object v2, p0, Lcom/sakukelly/music/data/db/SongDao_Impl$14;->this$0:Lcom/sakukelly/music/data/db/SongDao_Impl;

    invoke-static {v2}, Lcom/sakukelly/music/data/db/SongDao_Impl;->-$$Nest$fget__preparedStmtOfUpdateLoudness(Lcom/sakukelly/music/data/db/SongDao_Impl;)Landroidx/room/SharedSQLiteStatement;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 350
    throw v1
.end method
