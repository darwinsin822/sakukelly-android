.class final Lcom/sakukelly/music/player/PlaybackService$onCreate$1$1;
.super Ljava/lang/Object;
.source "PlaybackService.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/player/PlaybackService$onCreate$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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

    iput-object p1, p0, Lcom/sakukelly/music/player/PlaybackService$onCreate$1$1;->this$0:Lcom/sakukelly/music/player/PlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 107
    iget-object p2, p0, Lcom/sakukelly/music/player/PlaybackService$onCreate$1$1;->this$0:Lcom/sakukelly/music/player/PlaybackService;

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {p2, v0, v1}, Lcom/sakukelly/music/player/PlaybackService;->access$setCrossfadeDurationMs$p(Lcom/sakukelly/music/player/PlaybackService;J)V

    .line 108
    iget-object p2, p0, Lcom/sakukelly/music/player/PlaybackService$onCreate$1$1;->this$0:Lcom/sakukelly/music/player/PlaybackService;

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p2, p1}, Lcom/sakukelly/music/player/PlaybackService;->access$setCrossfadeEnabled$p(Lcom/sakukelly/music/player/PlaybackService;Z)V

    .line 109
    iget-object p1, p0, Lcom/sakukelly/music/player/PlaybackService$onCreate$1$1;->this$0:Lcom/sakukelly/music/player/PlaybackService;

    invoke-static {p1}, Lcom/sakukelly/music/player/PlaybackService;->access$getCrossfadeEnabled$p(Lcom/sakukelly/music/player/PlaybackService;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 110
    iget-object p1, p0, Lcom/sakukelly/music/player/PlaybackService$onCreate$1$1;->this$0:Lcom/sakukelly/music/player/PlaybackService;

    invoke-static {p1}, Lcom/sakukelly/music/player/PlaybackService;->access$getPlayer$p(Lcom/sakukelly/music/player/PlaybackService;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "player"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_1
    const/high16 p2, 0x3f800000    # 1.0f

    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/ExoPlayer;->setVolume(F)V

    .line 112
    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 106
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/sakukelly/music/player/PlaybackService$onCreate$1$1;->emit(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
