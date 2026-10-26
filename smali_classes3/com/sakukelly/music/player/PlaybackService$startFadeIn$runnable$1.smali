.class public final Lcom/sakukelly/music/player/PlaybackService$startFadeIn$runnable$1;
.super Ljava/lang/Object;
.source "PlaybackService.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/player/PlaybackService;->startFadeIn(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/sakukelly/music/player/PlaybackService$startFadeIn$runnable$1",
        "Ljava/lang/Runnable;",
        "run",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $durationMs:J

.field final synthetic $startTime:J

.field final synthetic this$0:Lcom/sakukelly/music/player/PlaybackService;


# direct methods
.method constructor <init>(JJLcom/sakukelly/music/player/PlaybackService;)V
    .locals 0

    iput-wide p1, p0, Lcom/sakukelly/music/player/PlaybackService$startFadeIn$runnable$1;->$startTime:J

    iput-wide p3, p0, Lcom/sakukelly/music/player/PlaybackService$startFadeIn$runnable$1;->$durationMs:J

    iput-object p5, p0, Lcom/sakukelly/music/player/PlaybackService$startFadeIn$runnable$1;->this$0:Lcom/sakukelly/music/player/PlaybackService;

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 287
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sakukelly/music/player/PlaybackService$startFadeIn$runnable$1;->$startTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    .line 288
    iget-wide v1, p0, Lcom/sakukelly/music/player/PlaybackService$startFadeIn$runnable$1;->$durationMs:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x3ca3d70a    # 0.02f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v0

    .line 289
    iget-object v1, p0, Lcom/sakukelly/music/player/PlaybackService$startFadeIn$runnable$1;->this$0:Lcom/sakukelly/music/player/PlaybackService;

    invoke-static {v1}, Lcom/sakukelly/music/player/PlaybackService;->access$getPlayer$p(Lcom/sakukelly/music/player/PlaybackService;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "player"

    if-nez v1, :cond_0

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_0
    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/ExoPlayer;->setVolume(F)V

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 290
    iget-object v0, p0, Lcom/sakukelly/music/player/PlaybackService$startFadeIn$runnable$1;->this$0:Lcom/sakukelly/music/player/PlaybackService;

    invoke-static {v0}, Lcom/sakukelly/music/player/PlaybackService;->access$getPlayer$p(Lcom/sakukelly/music/player/PlaybackService;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_1
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 291
    iget-object v0, p0, Lcom/sakukelly/music/player/PlaybackService$startFadeIn$runnable$1;->this$0:Lcom/sakukelly/music/player/PlaybackService;

    invoke-static {v0}, Lcom/sakukelly/music/player/PlaybackService;->access$getHandler$p(Lcom/sakukelly/music/player/PlaybackService;)Landroid/os/Handler;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 293
    :cond_2
    iget-object v0, p0, Lcom/sakukelly/music/player/PlaybackService$startFadeIn$runnable$1;->this$0:Lcom/sakukelly/music/player/PlaybackService;

    invoke-static {v0}, Lcom/sakukelly/music/player/PlaybackService;->access$getPlayer$p(Lcom/sakukelly/music/player/PlaybackService;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v3, v0

    :goto_0
    invoke-interface {v3, v2}, Landroidx/media3/exoplayer/ExoPlayer;->setVolume(F)V

    .line 294
    iget-object v0, p0, Lcom/sakukelly/music/player/PlaybackService$startFadeIn$runnable$1;->this$0:Lcom/sakukelly/music/player/PlaybackService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sakukelly/music/player/PlaybackService;->access$setCrossfadingIn$p(Lcom/sakukelly/music/player/PlaybackService;Z)V

    :goto_1
    return-void
.end method
