.class final Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$toggleFavorite$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PlayerViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;->toggleFavorite(Lcom/sakukelly/music/data/model/Song;)V
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
    c = "com.sakukelly.music.ui.viewmodel.PlayerViewModel$toggleFavorite$1"
    f = "PlayerViewModel.kt"
    i = {
        0x0
    }
    l = {
        0xb6
    }
    m = "invokeSuspend"
    n = {
        "newFav"
    }
    s = {
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $song:Lcom/sakukelly/music/data/model/Song;

.field I$0:I

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
            "Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$toggleFavorite$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$toggleFavorite$1;->this$0:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    iput-object p2, p0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$toggleFavorite$1;->$song:Lcom/sakukelly/music/data/model/Song;

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

    new-instance p1, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$toggleFavorite$1;

    iget-object v0, p0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$toggleFavorite$1;->this$0:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    iget-object v1, p0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$toggleFavorite$1;->$song:Lcom/sakukelly/music/data/model/Song;

    invoke-direct {p1, v0, v1, p2}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$toggleFavorite$1;-><init>(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lcom/sakukelly/music/data/model/Song;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$toggleFavorite$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$toggleFavorite$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$toggleFavorite$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$toggleFavorite$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 169
    iget v1, p0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$toggleFavorite$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget v0, p0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$toggleFavorite$1;->I$0:I

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 170
    iget-object p1, p0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$toggleFavorite$1;->this$0:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    invoke-virtual {p1}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;->getCurrentSong()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sakukelly/music/data/model/Song;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sakukelly/music/data/model/Song;->getPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v1

    :goto_0
    iget-object v3, p0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$toggleFavorite$1;->$song:Lcom/sakukelly/music/data/model/Song;

    invoke-virtual {v3}, Lcom/sakukelly/music/data/model/Song;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 171
    iget-object p1, p0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$toggleFavorite$1;->this$0:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    invoke-static {p1}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;->access$get_isFavorite$p(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_1

    .line 173
    :cond_3
    iget-object p1, p0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$toggleFavorite$1;->$song:Lcom/sakukelly/music/data/model/Song;

    invoke-virtual {p1}, Lcom/sakukelly/music/data/model/Song;->isFavorite()Z

    move-result p1

    :goto_1
    xor-int/2addr p1, v2

    .line 178
    iget-object v3, p0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$toggleFavorite$1;->this$0:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    invoke-virtual {v3}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;->getCurrentSong()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v3

    invoke-interface {v3}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sakukelly/music/data/model/Song;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/sakukelly/music/data/model/Song;->getPath()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    move-object v3, v1

    :goto_2
    iget-object v4, p0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$toggleFavorite$1;->$song:Lcom/sakukelly/music/data/model/Song;

    invoke-virtual {v4}, Lcom/sakukelly/music/data/model/Song;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 179
    iget-object v3, p0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$toggleFavorite$1;->this$0:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    invoke-static {v3}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;->access$get_isFavorite$p(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 182
    :cond_5
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$toggleFavorite$1$1;

    iget-object v5, p0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$toggleFavorite$1;->this$0:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    iget-object v6, p0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$toggleFavorite$1;->$song:Lcom/sakukelly/music/data/model/Song;

    invoke-direct {v4, v5, v6, p1, v1}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$toggleFavorite$1$1;-><init>(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lcom/sakukelly/music/data/model/Song;ZLkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput p1, p0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$toggleFavorite$1;->I$0:I

    iput v2, p0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$toggleFavorite$1;->label:I

    invoke-static {v3, v4, v1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_6

    return-object v0

    :cond_6
    move v0, p1

    .line 185
    :goto_3
    iget-object p1, p0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$toggleFavorite$1;->this$0:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    invoke-static {p1}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;->access$getPlayerController$p(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;)Lcom/sakukelly/music/player/PlayerController;

    move-result-object p1

    iget-object v1, p0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$toggleFavorite$1;->$song:Lcom/sakukelly/music/data/model/Song;

    invoke-virtual {v1}, Lcom/sakukelly/music/data/model/Song;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p1, v1, v2}, Lcom/sakukelly/music/player/PlayerController;->updateSongFavorite(Ljava/lang/String;Z)V

    .line 186
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
