.class final Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$2$1;
.super Ljava/lang/Object;
.source "PlayerViewModel.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;


# direct methods
.method constructor <init>(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$2$1;->this$0:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Lcom/sakukelly/music/data/model/Song;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sakukelly/music/data/model/Song;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$2$1$emit$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$2$1$emit$1;

    iget v1, v0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$2$1$emit$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$2$1$emit$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$2$1$emit$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$2$1$emit$1;

    invoke-direct {v0, p0, p2}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$2$1$emit$1;-><init>(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$2$1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$2$1$emit$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 225
    iget v2, v0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$2$1$emit$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$2$1$emit$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/sakukelly/music/data/model/Song;

    iget-object v2, v0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$2$1$emit$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$2$1;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-eqz p1, :cond_8

    .line 227
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$2$1$dbFav$1;

    iget-object v6, p0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$2$1;->this$0:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    invoke-direct {v2, v6, p1, v5}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$2$1$dbFav$1;-><init>(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lcom/sakukelly/music/data/model/Song;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    iput-object p0, v0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$2$1$emit$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$2$1$emit$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$2$1$emit$1;->label:I

    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 225
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    if-eqz p2, :cond_5

    .line 234
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/sakukelly/music/data/model/Song;->isFavorite()Z

    move-result p2

    .line 235
    :goto_2
    iget-object v4, v2, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$2$1;->this$0:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    invoke-static {v4}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;->access$get_isFavorite$p(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 236
    invoke-virtual {p1}, Lcom/sakukelly/music/data/model/Song;->isFavorite()Z

    move-result v4

    if-eq v4, p2, :cond_6

    .line 237
    iget-object v4, v2, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$2$1;->this$0:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    invoke-static {v4}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;->access$getPlayerController$p(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;)Lcom/sakukelly/music/player/PlayerController;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sakukelly/music/data/model/Song;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, p2}, Lcom/sakukelly/music/player/PlayerController;->updateSongFavorite(Ljava/lang/String;Z)V

    .line 239
    :cond_6
    iget-object p2, v2, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$2$1;->this$0:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    iput-object v5, v0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$2$1$emit$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$2$1$emit$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$2$1$emit$1;->label:I

    invoke-static {p2, p1, v0}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;->access$loadLyrics(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lcom/sakukelly/music/data/model/Song;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    .line 243
    :cond_7
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 241
    :cond_8
    iget-object p1, p0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$2$1;->this$0:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    invoke-static {p1}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;->access$get_isFavorite$p(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 243
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 225
    check-cast p1, Lcom/sakukelly/music/data/model/Song;

    invoke-virtual {p0, p1, p2}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$2$1;->emit(Lcom/sakukelly/music/data/model/Song;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
