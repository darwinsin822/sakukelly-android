.class final Lcom/sakukelly/music/player/PlaybackService$onCreate$2$1;
.super Ljava/lang/Object;
.source "PlaybackService.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/player/PlaybackService$onCreate$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
.field final synthetic this$0:Lcom/sakukelly/music/player/PlaybackService;


# direct methods
.method constructor <init>(Lcom/sakukelly/music/player/PlaybackService;)V
    .locals 0

    iput-object p1, p0, Lcom/sakukelly/music/player/PlaybackService$onCreate$2$1;->this$0:Lcom/sakukelly/music/player/PlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 117
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/sakukelly/music/player/PlaybackService$onCreate$2$1;->emit(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final emit(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 118
    iget-object p2, p0, Lcom/sakukelly/music/player/PlaybackService$onCreate$2$1;->this$0:Lcom/sakukelly/music/player/PlaybackService;

    invoke-static {p2, p1}, Lcom/sakukelly/music/player/PlaybackService;->access$setSkipSilencePrefEnabled$p(Lcom/sakukelly/music/player/PlaybackService;Z)V

    .line 120
    :try_start_0
    iget-object p2, p0, Lcom/sakukelly/music/player/PlaybackService$onCreate$2$1;->this$0:Lcom/sakukelly/music/player/PlaybackService;

    invoke-static {p2}, Lcom/sakukelly/music/player/PlaybackService;->access$getPlayer$p(Lcom/sakukelly/music/player/PlaybackService;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, "player"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_0
    const/4 p1, 0x0

    invoke-interface {p2, p1}, Landroidx/media3/exoplayer/ExoPlayer;->setSkipSilenceEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 122
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 124
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
