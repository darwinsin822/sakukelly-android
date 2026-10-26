.class final Lcom/sakukelly/music/domain/scrobbling/LastFmService$drainScrobbleQueue$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LastFmService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/domain/scrobbling/LastFmService;->drainScrobbleQueue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sakukelly/music/data/db/ScrobbleDao;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.sakukelly.music.domain.scrobbling.LastFmService$drainScrobbleQueue$2"
    f = "LastFmService.kt"
    i = {
        0x1
    }
    l = {
        0x87,
        0x8b,
        0x96,
        0x98
    }
    m = "invokeSuspend"
    n = {
        "item"
    }
    s = {
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $apiKey:Ljava/lang/String;

.field final synthetic $dao:Lcom/sakukelly/music/data/db/ScrobbleDao;

.field final synthetic $secret:Ljava/lang/String;

.field final synthetic $session:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/sakukelly/music/domain/scrobbling/LastFmService;


# direct methods
.method constructor <init>(Lcom/sakukelly/music/data/db/ScrobbleDao;Lcom/sakukelly/music/domain/scrobbling/LastFmService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sakukelly/music/data/db/ScrobbleDao;",
            "Lcom/sakukelly/music/domain/scrobbling/LastFmService;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sakukelly/music/domain/scrobbling/LastFmService$drainScrobbleQueue$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$drainScrobbleQueue$2;->$dao:Lcom/sakukelly/music/data/db/ScrobbleDao;

    iput-object p2, p0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$drainScrobbleQueue$2;->this$0:Lcom/sakukelly/music/domain/scrobbling/LastFmService;

    iput-object p3, p0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$drainScrobbleQueue$2;->$apiKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$drainScrobbleQueue$2;->$secret:Ljava/lang/String;

    iput-object p5, p0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$drainScrobbleQueue$2;->$session:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance p1, Lcom/sakukelly/music/domain/scrobbling/LastFmService$drainScrobbleQueue$2;

    iget-object v1, p0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$drainScrobbleQueue$2;->$dao:Lcom/sakukelly/music/data/db/ScrobbleDao;

    iget-object v2, p0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$drainScrobbleQueue$2;->this$0:Lcom/sakukelly/music/domain/scrobbling/LastFmService;

    iget-object v3, p0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$drainScrobbleQueue$2;->$apiKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$drainScrobbleQueue$2;->$secret:Ljava/lang/String;

    iget-object v5, p0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$drainScrobbleQueue$2;->$session:Ljava/lang/String;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/sakukelly/music/domain/scrobbling/LastFmService$drainScrobbleQueue$2;-><init>(Lcom/sakukelly/music/data/db/ScrobbleDao;Lcom/sakukelly/music/domain/scrobbling/LastFmService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/sakukelly/music/domain/scrobbling/LastFmService$drainScrobbleQueue$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/sakukelly/music/domain/scrobbling/LastFmService$drainScrobbleQueue$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/sakukelly/music/domain/scrobbling/LastFmService$drainScrobbleQueue$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/sakukelly/music/domain/scrobbling/LastFmService$drainScrobbleQueue$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 134
    iget v2, v0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$drainScrobbleQueue$2;->label:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    iget-object v2, v0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$drainScrobbleQueue$2;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    iget-object v2, v0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$drainScrobbleQueue$2;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/sakukelly/music/data/model/ScrobbleQueueItem;

    iget-object v6, v0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$drainScrobbleQueue$2;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/util/Iterator;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v7, p1

    goto :goto_3

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_1

    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 135
    iget-object v2, v0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$drainScrobbleQueue$2;->$dao:Lcom/sakukelly/music/data/db/ScrobbleDao;

    move-object v7, v0

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput v6, v0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$drainScrobbleQueue$2;->label:I

    const-string v6, "lastfm"

    const/16 v8, 0x19

    invoke-interface {v2, v6, v8, v7}, Lcom/sakukelly/music/data/db/ScrobbleDao;->getPending(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    return-object v1

    .line 134
    :cond_5
    :goto_1
    check-cast v2, Ljava/util/List;

    .line 136
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 138
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sakukelly/music/data/model/ScrobbleQueueItem;

    .line 139
    iget-object v7, v0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$drainScrobbleQueue$2;->this$0:Lcom/sakukelly/music/domain/scrobbling/LastFmService;

    .line 140
    iget-object v8, v0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$drainScrobbleQueue$2;->$apiKey:Ljava/lang/String;

    .line 141
    iget-object v9, v0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$drainScrobbleQueue$2;->$secret:Ljava/lang/String;

    .line 142
    iget-object v10, v0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$drainScrobbleQueue$2;->$session:Ljava/lang/String;

    .line 143
    invoke-virtual {v6}, Lcom/sakukelly/music/data/model/ScrobbleQueueItem;->getArtist()Ljava/lang/String;

    move-result-object v11

    .line 144
    invoke-virtual {v6}, Lcom/sakukelly/music/data/model/ScrobbleQueueItem;->getTitle()Ljava/lang/String;

    move-result-object v12

    .line 145
    invoke-virtual {v6}, Lcom/sakukelly/music/data/model/ScrobbleQueueItem;->getAlbum()Ljava/lang/String;

    move-result-object v13

    .line 146
    invoke-virtual {v6}, Lcom/sakukelly/music/data/model/ScrobbleQueueItem;->getDurationSeconds()I

    move-result v14

    .line 147
    invoke-virtual {v6}, Lcom/sakukelly/music/data/model/ScrobbleQueueItem;->getListenedAt()J

    move-result-wide v15

    move-object/from16 v17, v0

    check-cast v17, Lkotlin/coroutines/Continuation;

    .line 139
    iput-object v2, v0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$drainScrobbleQueue$2;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$drainScrobbleQueue$2;->L$1:Ljava/lang/Object;

    iput v5, v0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$drainScrobbleQueue$2;->label:I

    invoke-virtual/range {v7 .. v17}, Lcom/sakukelly/music/domain/scrobbling/LastFmService;->scrobble(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_7

    return-object v1

    :cond_7
    move-object/from16 v18, v6

    move-object v6, v2

    move-object/from16 v2, v18

    :goto_3
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_9

    .line 150
    iget-object v7, v0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$drainScrobbleQueue$2;->$dao:Lcom/sakukelly/music/data/db/ScrobbleDao;

    invoke-virtual {v2}, Lcom/sakukelly/music/data/model/ScrobbleQueueItem;->getId()J

    move-result-wide v9

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/Continuation;

    iput-object v6, v0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$drainScrobbleQueue$2;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$drainScrobbleQueue$2;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$drainScrobbleQueue$2;->label:I

    invoke-interface {v7, v9, v10, v2}, Lcom/sakukelly/music/data/db/ScrobbleDao;->markDone(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_8

    return-object v1

    :cond_8
    move-object v2, v6

    goto :goto_2

    .line 152
    :cond_9
    iget-object v7, v0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$drainScrobbleQueue$2;->$dao:Lcom/sakukelly/music/data/db/ScrobbleDao;

    invoke-virtual {v2}, Lcom/sakukelly/music/data/model/ScrobbleQueueItem;->getId()J

    move-result-wide v9

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/Continuation;

    iput-object v6, v0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$drainScrobbleQueue$2;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$drainScrobbleQueue$2;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$drainScrobbleQueue$2;->label:I

    invoke-interface {v7, v9, v10, v2}, Lcom/sakukelly/music/data/db/ScrobbleDao;->incrementAttempts(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_8

    return-object v1

    .line 155
    :cond_a
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method
