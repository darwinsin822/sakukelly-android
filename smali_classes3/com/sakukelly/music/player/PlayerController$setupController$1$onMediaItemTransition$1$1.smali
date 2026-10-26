.class final Lcom/sakukelly/music/player/PlayerController$setupController$1$onMediaItemTransition$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PlayerController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/player/PlayerController$setupController$1;->onMediaItemTransition(Landroidx/media3/common/MediaItem;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.sakukelly.music.player.PlayerController$setupController$1$onMediaItemTransition$1$1"
    f = "PlayerController.kt"
    i = {
        0x0,
        0x1,
        0x2
    }
    l = {
        0x7b,
        0x7d,
        0x80,
        0x88
    }
    m = "invokeSuspend"
    n = {
        "db",
        "db",
        "db"
    }
    s = {
        "L$0",
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $path:Ljava/lang/String;

.field final synthetic $queueSong:Lcom/sakukelly/music/data/model/Song;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/sakukelly/music/player/PlayerController;


# direct methods
.method constructor <init>(Lcom/sakukelly/music/player/PlayerController;Lcom/sakukelly/music/data/model/Song;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sakukelly/music/player/PlayerController;",
            "Lcom/sakukelly/music/data/model/Song;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sakukelly/music/player/PlayerController$setupController$1$onMediaItemTransition$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sakukelly/music/player/PlayerController$setupController$1$onMediaItemTransition$1$1;->this$0:Lcom/sakukelly/music/player/PlayerController;

    iput-object p2, p0, Lcom/sakukelly/music/player/PlayerController$setupController$1$onMediaItemTransition$1$1;->$queueSong:Lcom/sakukelly/music/data/model/Song;

    iput-object p3, p0, Lcom/sakukelly/music/player/PlayerController$setupController$1$onMediaItemTransition$1$1;->$path:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/sakukelly/music/player/PlayerController$setupController$1$onMediaItemTransition$1$1;

    iget-object v0, p0, Lcom/sakukelly/music/player/PlayerController$setupController$1$onMediaItemTransition$1$1;->this$0:Lcom/sakukelly/music/player/PlayerController;

    iget-object v1, p0, Lcom/sakukelly/music/player/PlayerController$setupController$1$onMediaItemTransition$1$1;->$queueSong:Lcom/sakukelly/music/data/model/Song;

    iget-object v2, p0, Lcom/sakukelly/music/player/PlayerController$setupController$1$onMediaItemTransition$1$1;->$path:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/sakukelly/music/player/PlayerController$setupController$1$onMediaItemTransition$1$1;-><init>(Lcom/sakukelly/music/player/PlayerController;Lcom/sakukelly/music/data/model/Song;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/sakukelly/music/player/PlayerController$setupController$1$onMediaItemTransition$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sakukelly/music/player/PlayerController$setupController$1$onMediaItemTransition$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/sakukelly/music/player/PlayerController$setupController$1$onMediaItemTransition$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/sakukelly/music/player/PlayerController$setupController$1$onMediaItemTransition$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 121
    iget v2, v0, Lcom/sakukelly/music/player/PlayerController$setupController$1$onMediaItemTransition$1$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v7, :cond_3

    if-eq v2, v6, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v4, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v2, v0, Lcom/sakukelly/music/player/PlayerController$setupController$1$onMediaItemTransition$1$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/sakukelly/music/data/db/AppDatabase;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    iget-object v2, v0, Lcom/sakukelly/music/player/PlayerController$setupController$1$onMediaItemTransition$1$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/sakukelly/music/data/db/AppDatabase;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object v2, v0, Lcom/sakukelly/music/player/PlayerController$setupController$1$onMediaItemTransition$1$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/sakukelly/music/data/db/AppDatabase;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v7, p1

    goto :goto_0

    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 122
    sget-object v2, Lcom/sakukelly/music/data/db/AppDatabase;->Companion:Lcom/sakukelly/music/data/db/AppDatabase$Companion;

    iget-object v8, v0, Lcom/sakukelly/music/player/PlayerController$setupController$1$onMediaItemTransition$1$1;->this$0:Lcom/sakukelly/music/player/PlayerController;

    invoke-static {v8}, Lcom/sakukelly/music/player/PlayerController;->access$getContext$p(Lcom/sakukelly/music/player/PlayerController;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/sakukelly/music/data/db/AppDatabase$Companion;->getDatabase(Landroid/content/Context;)Lcom/sakukelly/music/data/db/AppDatabase;

    move-result-object v2

    .line 123
    iget-object v8, v0, Lcom/sakukelly/music/player/PlayerController$setupController$1$onMediaItemTransition$1$1;->$queueSong:Lcom/sakukelly/music/data/model/Song;

    if-nez v8, :cond_6

    invoke-virtual {v2}, Lcom/sakukelly/music/data/db/AppDatabase;->songDao()Lcom/sakukelly/music/data/db/SongDao;

    move-result-object v8

    iget-object v9, v0, Lcom/sakukelly/music/player/PlayerController$setupController$1$onMediaItemTransition$1$1;->$path:Ljava/lang/String;

    move-object v10, v0

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput-object v2, v0, Lcom/sakukelly/music/player/PlayerController$setupController$1$onMediaItemTransition$1$1;->L$0:Ljava/lang/Object;

    iput v7, v0, Lcom/sakukelly/music/player/PlayerController$setupController$1$onMediaItemTransition$1$1;->label:I

    invoke-interface {v8, v9, v10}, Lcom/sakukelly/music/data/db/SongDao;->getSongByPath(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_5

    return-object v1

    .line 121
    :cond_5
    :goto_0
    move-object v8, v7

    check-cast v8, Lcom/sakukelly/music/data/model/Song;

    :cond_6
    if-eqz v8, :cond_9

    .line 125
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v7

    check-cast v7, Lkotlin/coroutines/CoroutineContext;

    new-instance v9, Lcom/sakukelly/music/player/PlayerController$setupController$1$onMediaItemTransition$1$1$1;

    iget-object v10, v0, Lcom/sakukelly/music/player/PlayerController$setupController$1$onMediaItemTransition$1$1;->this$0:Lcom/sakukelly/music/player/PlayerController;

    invoke-direct {v9, v10, v8, v3}, Lcom/sakukelly/music/player/PlayerController$setupController$1$onMediaItemTransition$1$1$1;-><init>(Lcom/sakukelly/music/player/PlayerController;Lcom/sakukelly/music/data/model/Song;Lkotlin/coroutines/Continuation;)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    move-object v8, v0

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object v2, v0, Lcom/sakukelly/music/player/PlayerController$setupController$1$onMediaItemTransition$1$1;->L$0:Ljava/lang/Object;

    iput v6, v0, Lcom/sakukelly/music/player/PlayerController$setupController$1$onMediaItemTransition$1$1;->label:I

    invoke-static {v7, v9, v8}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_7

    return-object v1

    .line 128
    :cond_7
    :goto_1
    invoke-virtual {v2}, Lcom/sakukelly/music/data/db/AppDatabase;->historyDao()Lcom/sakukelly/music/data/db/HistoryDao;

    move-result-object v6

    .line 129
    new-instance v15, Lcom/sakukelly/music/data/model/HistoryEntry;

    .line 130
    iget-object v10, v0, Lcom/sakukelly/music/player/PlayerController$setupController$1$onMediaItemTransition$1$1;->$path:Ljava/lang/String;

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const/16 v16, 0x1

    const/16 v17, 0x0

    const-wide/16 v8, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v7, v15

    move-object v4, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    .line 129
    invoke-direct/range {v7 .. v16}, Lcom/sakukelly/music/data/model/HistoryEntry;-><init>(JLjava/lang/String;JZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v7, v0

    check-cast v7, Lkotlin/coroutines/Continuation;

    .line 128
    iput-object v2, v0, Lcom/sakukelly/music/player/PlayerController$setupController$1$onMediaItemTransition$1$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/sakukelly/music/player/PlayerController$setupController$1$onMediaItemTransition$1$1;->label:I

    invoke-interface {v6, v4, v7}, Lcom/sakukelly/music/data/db/HistoryDao;->insert(Lcom/sakukelly/music/data/model/HistoryEntry;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_8

    return-object v1

    .line 136
    :cond_8
    :goto_2
    invoke-virtual {v2}, Lcom/sakukelly/music/data/db/AppDatabase;->statsDao()Lcom/sakukelly/music/data/db/StatsDao;

    move-result-object v4

    iget-object v5, v0, Lcom/sakukelly/music/player/PlayerController$setupController$1$onMediaItemTransition$1$1;->$path:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v10, v0

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput-object v3, v0, Lcom/sakukelly/music/player/PlayerController$setupController$1$onMediaItemTransition$1$1;->L$0:Ljava/lang/Object;

    const/4 v2, 0x4

    iput v2, v0, Lcom/sakukelly/music/player/PlayerController$setupController$1$onMediaItemTransition$1$1;->label:I

    const-wide/16 v8, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/sakukelly/music/data/db/StatsDao;->recordPlay(Ljava/lang/String;JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_9

    return-object v1

    .line 138
    :cond_9
    :goto_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method
