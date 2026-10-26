.class final Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$loadLyrics$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PlayerViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;->loadLyrics(Lcom/sakukelly/music/data/model/Song;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.sakukelly.music.ui.viewmodel.PlayerViewModel$loadLyrics$2"
    f = "PlayerViewModel.kt"
    i = {}
    l = {
        0xfb
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $song:Lcom/sakukelly/music/data/model/Song;

.field label:I

.field final synthetic this$0:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;


# direct methods
.method constructor <init>(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lcom/sakukelly/music/data/model/Song;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;",
            "Lcom/sakukelly/music/data/model/Song;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$loadLyrics$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$loadLyrics$2;->this$0:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    iput-object p2, p0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$loadLyrics$2;->$song:Lcom/sakukelly/music/data/model/Song;

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

    new-instance p1, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$loadLyrics$2;

    iget-object v0, p0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$loadLyrics$2;->this$0:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    iget-object v1, p0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$loadLyrics$2;->$song:Lcom/sakukelly/music/data/model/Song;

    invoke-direct {p1, v0, v1, p2}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$loadLyrics$2;-><init>(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lcom/sakukelly/music/data/model/Song;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$loadLyrics$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$loadLyrics$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$loadLyrics$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$loadLyrics$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 249
    iget v1, p0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$loadLyrics$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 251
    :try_start_1
    iget-object p1, p0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$loadLyrics$2;->this$0:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    invoke-static {p1}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;->access$getLyricsRepository$p(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;)Lcom/sakukelly/music/domain/lyrics/LyricsRepository;

    move-result-object p1

    iget-object v1, p0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$loadLyrics$2;->$song:Lcom/sakukelly/music/data/model/Song;

    invoke-virtual {v1}, Lcom/sakukelly/music/data/model/Song;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$loadLyrics$2;->$song:Lcom/sakukelly/music/data/model/Song;

    invoke-virtual {v3}, Lcom/sakukelly/music/data/model/Song;->getArtist()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$loadLyrics$2;->$song:Lcom/sakukelly/music/data/model/Song;

    invoke-virtual {v4}, Lcom/sakukelly/music/data/model/Song;->getPath()Ljava/lang/String;

    move-result-object v4

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$loadLyrics$2;->label:I

    invoke-virtual {p1, v1, v3, v4, v5}, Lcom/sakukelly/music/domain/lyrics/LyricsRepository;->getLyrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 249
    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    .line 252
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_3

    .line 253
    iget-object v0, p0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$loadLyrics$2;->this$0:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    invoke-static {v0}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;->access$get_currentLyrics$p(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_2

    .line 255
    :cond_3
    iget-object p1, p0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$loadLyrics$2;->this$0:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    invoke-static {p1}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;->access$get_currentLyrics$p(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    const/4 v0, 0x3

    .line 256
    new-array v0, v0, [Lkotlin/Pair;

    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v1

    const-string v3, "\u266a..."

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/high16 v1, 0x40400000    # 3.0f

    .line 257
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v3, p0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$loadLyrics$2;->$song:Lcom/sakukelly/music/data/model/Song;

    invoke-virtual {v3}, Lcom/sakukelly/music/data/model/Song;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v2

    const/high16 v1, 0x40c00000    # 6.0f

    .line 258
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v2, p0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$loadLyrics$2;->$song:Lcom/sakukelly/music/data/model/Song;

    invoke-virtual {v2}, Lcom/sakukelly/music/data/model/Song;->getArtist()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 255
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 262
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 263
    iget-object p1, p0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$loadLyrics$2;->this$0:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    invoke-static {p1}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;->access$get_currentLyrics$p(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 265
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
