.class Lcom/sakukelly/music/data/db/PlaylistDao_Impl$6;
.super Ljava/lang/Object;
.source "PlaylistDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/data/db/PlaylistDao_Impl;->addSongToPlaylist(Lcom/sakukelly/music/data/model/PlaylistSong;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.field final synthetic this$0:Lcom/sakukelly/music/data/db/PlaylistDao_Impl;

.field final synthetic val$playlistSong:Lcom/sakukelly/music/data/model/PlaylistSong;


# direct methods
.method constructor <init>(Lcom/sakukelly/music/data/db/PlaylistDao_Impl;Lcom/sakukelly/music/data/model/PlaylistSong;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$playlistSong"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lcom/sakukelly/music/data/db/PlaylistDao_Impl$6;->this$0:Lcom/sakukelly/music/data/db/PlaylistDao_Impl;

    iput-object p2, p0, Lcom/sakukelly/music/data/db/PlaylistDao_Impl$6;->val$playlistSong:Lcom/sakukelly/music/data/model/PlaylistSong;

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

    .line 115
    invoke-virtual {p0}, Lcom/sakukelly/music/data/db/PlaylistDao_Impl$6;->call()Lkotlin/Unit;

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

    .line 119
    iget-object v0, p0, Lcom/sakukelly/music/data/db/PlaylistDao_Impl$6;->this$0:Lcom/sakukelly/music/data/db/PlaylistDao_Impl;

    invoke-static {v0}, Lcom/sakukelly/music/data/db/PlaylistDao_Impl;->-$$Nest$fget__db(Lcom/sakukelly/music/data/db/PlaylistDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/sakukelly/music/data/db/PlaylistDao_Impl$6;->this$0:Lcom/sakukelly/music/data/db/PlaylistDao_Impl;

    invoke-static {v0}, Lcom/sakukelly/music/data/db/PlaylistDao_Impl;->-$$Nest$fget__insertionAdapterOfPlaylistSong(Lcom/sakukelly/music/data/db/PlaylistDao_Impl;)Landroidx/room/EntityInsertionAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sakukelly/music/data/db/PlaylistDao_Impl$6;->val$playlistSong:Lcom/sakukelly/music/data/model/PlaylistSong;

    invoke-virtual {v0, v1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lcom/sakukelly/music/data/db/PlaylistDao_Impl$6;->this$0:Lcom/sakukelly/music/data/db/PlaylistDao_Impl;

    invoke-static {v0}, Lcom/sakukelly/music/data/db/PlaylistDao_Impl;->-$$Nest$fget__db(Lcom/sakukelly/music/data/db/PlaylistDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    .line 123
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    iget-object v1, p0, Lcom/sakukelly/music/data/db/PlaylistDao_Impl$6;->this$0:Lcom/sakukelly/music/data/db/PlaylistDao_Impl;

    invoke-static {v1}, Lcom/sakukelly/music/data/db/PlaylistDao_Impl;->-$$Nest$fget__db(Lcom/sakukelly/music/data/db/PlaylistDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sakukelly/music/data/db/PlaylistDao_Impl$6;->this$0:Lcom/sakukelly/music/data/db/PlaylistDao_Impl;

    invoke-static {v1}, Lcom/sakukelly/music/data/db/PlaylistDao_Impl;->-$$Nest$fget__db(Lcom/sakukelly/music/data/db/PlaylistDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 126
    throw v0
.end method
