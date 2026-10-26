.class final Lcom/sakukelly/music/player/PlayerController$onTrackEnded$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PlayerController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/player/PlayerController;->onTrackEnded()V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlayerController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlayerController.kt\ncom/sakukelly/music/player/PlayerController$onTrackEnded$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,388:1\n774#2:389\n865#2,2:390\n*S KotlinDebug\n*F\n+ 1 PlayerController.kt\ncom/sakukelly/music/player/PlayerController$onTrackEnded$1\n*L\n175#1:389\n175#1:390,2\n*E\n"
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
    c = "com.sakukelly.music.player.PlayerController$onTrackEnded$1"
    f = "PlayerController.kt"
    i = {}
    l = {
        0xac,
        0xb7
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $current:Lcom/sakukelly/music/data/model/Song;

.field label:I

.field final synthetic this$0:Lcom/sakukelly/music/player/PlayerController;


# direct methods
.method constructor <init>(Lcom/sakukelly/music/player/PlayerController;Lcom/sakukelly/music/data/model/Song;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sakukelly/music/player/PlayerController;",
            "Lcom/sakukelly/music/data/model/Song;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sakukelly/music/player/PlayerController$onTrackEnded$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sakukelly/music/player/PlayerController$onTrackEnded$1;->this$0:Lcom/sakukelly/music/player/PlayerController;

    iput-object p2, p0, Lcom/sakukelly/music/player/PlayerController$onTrackEnded$1;->$current:Lcom/sakukelly/music/data/model/Song;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lcom/sakukelly/music/player/PlayerController$onTrackEnded$1;

    iget-object v0, p0, Lcom/sakukelly/music/player/PlayerController$onTrackEnded$1;->this$0:Lcom/sakukelly/music/player/PlayerController;

    iget-object v1, p0, Lcom/sakukelly/music/player/PlayerController$onTrackEnded$1;->$current:Lcom/sakukelly/music/data/model/Song;

    invoke-direct {p1, v0, v1, p2}, Lcom/sakukelly/music/player/PlayerController$onTrackEnded$1;-><init>(Lcom/sakukelly/music/player/PlayerController;Lcom/sakukelly/music/data/model/Song;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/sakukelly/music/player/PlayerController$onTrackEnded$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/sakukelly/music/player/PlayerController$onTrackEnded$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/sakukelly/music/player/PlayerController$onTrackEnded$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/sakukelly/music/player/PlayerController$onTrackEnded$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 170
    iget v1, p0, Lcom/sakukelly/music/player/PlayerController$onTrackEnded$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 171
    sget-object p1, Lcom/sakukelly/music/data/db/AppDatabase;->Companion:Lcom/sakukelly/music/data/db/AppDatabase$Companion;

    iget-object v1, p0, Lcom/sakukelly/music/player/PlayerController$onTrackEnded$1;->this$0:Lcom/sakukelly/music/player/PlayerController;

    invoke-static {v1}, Lcom/sakukelly/music/player/PlayerController;->access$getContext$p(Lcom/sakukelly/music/player/PlayerController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sakukelly/music/data/db/AppDatabase$Companion;->getDatabase(Landroid/content/Context;)Lcom/sakukelly/music/data/db/AppDatabase;

    move-result-object p1

    .line 172
    invoke-virtual {p1}, Lcom/sakukelly/music/data/db/AppDatabase;->songDao()Lcom/sakukelly/music/data/db/SongDao;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lcom/sakukelly/music/player/PlayerController$onTrackEnded$1;->label:I

    invoke-interface {p1, v1}, Lcom/sakukelly/music/data/db/SongDao;->getAllSongsSync(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 170
    :cond_3
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 173
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_8

    .line 174
    iget-object v1, p0, Lcom/sakukelly/music/player/PlayerController$onTrackEnded$1;->this$0:Lcom/sakukelly/music/player/PlayerController;

    invoke-static {v1}, Lcom/sakukelly/music/player/PlayerController;->access$getSessionPlayedPaths$p(Lcom/sakukelly/music/player/PlayerController;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 175
    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    iget-object v4, p0, Lcom/sakukelly/music/player/PlayerController$onTrackEnded$1;->this$0:Lcom/sakukelly/music/player/PlayerController;

    .line 389
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .line 390
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/sakukelly/music/data/model/Song;

    .line 175
    invoke-static {v4}, Lcom/sakukelly/music/player/PlayerController;->access$getSessionPlayedPaths$p(Lcom/sakukelly/music/player/PlayerController;)Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v7}, Lcom/sakukelly/music/data/model/Song;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v7, v3

    if-eqz v7, :cond_4

    .line 390
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 391
    :cond_5
    check-cast v5, Ljava/util/List;

    goto :goto_2

    .line 177
    :cond_6
    iget-object v1, p0, Lcom/sakukelly/music/player/PlayerController$onTrackEnded$1;->this$0:Lcom/sakukelly/music/player/PlayerController;

    invoke-static {v1}, Lcom/sakukelly/music/player/PlayerController;->access$getSessionPlayedPaths$p(Lcom/sakukelly/music/player/PlayerController;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 178
    iget-object v1, p0, Lcom/sakukelly/music/player/PlayerController$onTrackEnded$1;->this$0:Lcom/sakukelly/music/player/PlayerController;

    invoke-static {v1}, Lcom/sakukelly/music/player/PlayerController;->access$getSessionPlayedPaths$p(Lcom/sakukelly/music/player/PlayerController;)Ljava/util/HashSet;

    move-result-object v1

    iget-object v4, p0, Lcom/sakukelly/music/player/PlayerController$onTrackEnded$1;->$current:Lcom/sakukelly/music/data/model/Song;

    invoke-virtual {v4}, Lcom/sakukelly/music/data/model/Song;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object v5, p1

    .line 181
    :goto_2
    move-object v1, v5

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_7

    move-object p1, v5

    .line 182
    :cond_7
    iget-object v1, p0, Lcom/sakukelly/music/player/PlayerController$onTrackEnded$1;->this$0:Lcom/sakukelly/music/player/PlayerController;

    invoke-static {v1}, Lcom/sakukelly/music/player/PlayerController;->access$getRecommendationEngine$p(Lcom/sakukelly/music/player/PlayerController;)Lcom/sakukelly/music/domain/recommendations/SmartRecommendationEngine;

    move-result-object v1

    iget-object v3, p0, Lcom/sakukelly/music/player/PlayerController$onTrackEnded$1;->$current:Lcom/sakukelly/music/data/model/Song;

    iget-object v4, p0, Lcom/sakukelly/music/player/PlayerController$onTrackEnded$1;->this$0:Lcom/sakukelly/music/player/PlayerController;

    invoke-static {v4}, Lcom/sakukelly/music/player/PlayerController;->access$get_queue$p(Lcom/sakukelly/music/player/PlayerController;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v1, v3, p1, v4}, Lcom/sakukelly/music/domain/recommendations/SmartRecommendationEngine;->getNextSong(Lcom/sakukelly/music/data/model/Song;Ljava/util/List;Ljava/util/List;)Lcom/sakukelly/music/data/model/Song;

    move-result-object p1

    .line 183
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lcom/sakukelly/music/player/PlayerController$onTrackEnded$1$1;

    iget-object v4, p0, Lcom/sakukelly/music/player/PlayerController$onTrackEnded$1;->this$0:Lcom/sakukelly/music/player/PlayerController;

    const/4 v5, 0x0

    invoke-direct {v3, v4, p1, v5}, Lcom/sakukelly/music/player/PlayerController$onTrackEnded$1$1;-><init>(Lcom/sakukelly/music/player/PlayerController;Lcom/sakukelly/music/data/model/Song;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/sakukelly/music/player/PlayerController$onTrackEnded$1;->label:I

    invoke-static {v1, v3, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    .line 187
    :cond_8
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
