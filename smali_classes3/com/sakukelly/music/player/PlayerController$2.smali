.class final Lcom/sakukelly/music/player/PlayerController$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PlayerController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/player/PlayerController;-><init>(Landroid/content/Context;)V
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
    c = "com.sakukelly.music.player.PlayerController$2"
    f = "PlayerController.kt"
    i = {
        0x0
    }
    l = {
        0x55
    }
    m = "invokeSuspend"
    n = {
        "$this$launch"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/sakukelly/music/player/PlayerController;


# direct methods
.method constructor <init>(Lcom/sakukelly/music/player/PlayerController;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sakukelly/music/player/PlayerController;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sakukelly/music/player/PlayerController$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sakukelly/music/player/PlayerController$2;->this$0:Lcom/sakukelly/music/player/PlayerController;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v0, Lcom/sakukelly/music/player/PlayerController$2;

    iget-object v1, p0, Lcom/sakukelly/music/player/PlayerController$2;->this$0:Lcom/sakukelly/music/player/PlayerController;

    invoke-direct {v0, v1, p2}, Lcom/sakukelly/music/player/PlayerController$2;-><init>(Lcom/sakukelly/music/player/PlayerController;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/sakukelly/music/player/PlayerController$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/sakukelly/music/player/PlayerController$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/sakukelly/music/player/PlayerController$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/sakukelly/music/player/PlayerController$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/sakukelly/music/player/PlayerController$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 77
    iget v1, p0, Lcom/sakukelly/music/player/PlayerController$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sakukelly/music/player/PlayerController$2;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sakukelly/music/player/PlayerController$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    move-object v1, p1

    .line 78
    :cond_2
    :goto_0
    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 79
    iget-object p1, p0, Lcom/sakukelly/music/player/PlayerController$2;->this$0:Lcom/sakukelly/music/player/PlayerController;

    invoke-static {p1}, Lcom/sakukelly/music/player/PlayerController;->access$get_isPlaying$p(Lcom/sakukelly/music/player/PlayerController;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sakukelly/music/player/PlayerController$2;->this$0:Lcom/sakukelly/music/player/PlayerController;

    invoke-virtual {p1}, Lcom/sakukelly/music/player/PlayerController;->getMediaController()Landroidx/media3/session/MediaController;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 80
    iget-object p1, p0, Lcom/sakukelly/music/player/PlayerController$2;->this$0:Lcom/sakukelly/music/player/PlayerController;

    invoke-virtual {p1}, Lcom/sakukelly/music/player/PlayerController;->getMediaController()Landroidx/media3/session/MediaController;

    move-result-object p1

    const-wide/16 v3, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/media3/session/MediaController;->getCurrentPosition()J

    move-result-wide v5

    goto :goto_1

    :cond_3
    move-wide v5, v3

    .line 81
    :goto_1
    iget-object p1, p0, Lcom/sakukelly/music/player/PlayerController$2;->this$0:Lcom/sakukelly/music/player/PlayerController;

    invoke-virtual {p1}, Lcom/sakukelly/music/player/PlayerController;->getMediaController()Landroidx/media3/session/MediaController;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroidx/media3/session/MediaController;->getDuration()J

    move-result-wide v7

    goto :goto_2

    :cond_4
    move-wide v7, v3

    .line 82
    :goto_2
    iget-object p1, p0, Lcom/sakukelly/music/player/PlayerController$2;->this$0:Lcom/sakukelly/music/player/PlayerController;

    invoke-static {p1}, Lcom/sakukelly/music/player/PlayerController;->access$get_progress$p(Lcom/sakukelly/music/player/PlayerController;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    invoke-static {v5, v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    cmp-long p1, v7, v3

    if-lez p1, :cond_5

    .line 83
    iget-object p1, p0, Lcom/sakukelly/music/player/PlayerController$2;->this$0:Lcom/sakukelly/music/player/PlayerController;

    invoke-static {p1}, Lcom/sakukelly/music/player/PlayerController;->access$get_duration$p(Lcom/sakukelly/music/player/PlayerController;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    invoke-static {v7, v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    const-wide/16 v3, 0xfa

    goto :goto_delay

    .line 85
    :cond_5
    const-wide/16 v3, 0x3e8

    :goto_delay
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput-object v1, p0, Lcom/sakukelly/music/player/PlayerController$2;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/sakukelly/music/player/PlayerController$2;->label:I

    invoke-static {v3, v4, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 87
    :cond_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
