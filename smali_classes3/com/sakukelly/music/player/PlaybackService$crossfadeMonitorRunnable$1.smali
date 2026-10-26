.class public final Lcom/sakukelly/music/player/PlaybackService$crossfadeMonitorRunnable$1;
.super Ljava/lang/Object;
.source "PlaybackService.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/player/PlaybackService;-><init>()V
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
        "com/sakukelly/music/player/PlaybackService$crossfadeMonitorRunnable$1",
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
.field final synthetic this$0:Lcom/sakukelly/music/player/PlaybackService;


# direct methods
.method constructor <init>(Lcom/sakukelly/music/player/PlaybackService;)V
    .locals 0

    iput-object p1, p0, Lcom/sakukelly/music/player/PlaybackService$crossfadeMonitorRunnable$1;->this$0:Lcom/sakukelly/music/player/PlaybackService;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 47
    iget-object v0, p0, Lcom/sakukelly/music/player/PlaybackService$crossfadeMonitorRunnable$1;->this$0:Lcom/sakukelly/music/player/PlaybackService;

    invoke-static {v0}, Lcom/sakukelly/music/player/PlaybackService;->access$getPlayer$p(Lcom/sakukelly/music/player/PlaybackService;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "player"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sakukelly/music/player/PlaybackService$crossfadeMonitorRunnable$1;->this$0:Lcom/sakukelly/music/player/PlaybackService;

    invoke-static {v0}, Lcom/sakukelly/music/player/PlaybackService;->access$isCrossfadingIn$p(Lcom/sakukelly/music/player/PlaybackService;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 48
    iget-object v0, p0, Lcom/sakukelly/music/player/PlaybackService$crossfadeMonitorRunnable$1;->this$0:Lcom/sakukelly/music/player/PlaybackService;

    invoke-static {v0}, Lcom/sakukelly/music/player/PlaybackService;->access$getPlayer$p(Lcom/sakukelly/music/player/PlaybackService;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getDuration()J

    move-result-wide v3

    .line 49
    iget-object v0, p0, Lcom/sakukelly/music/player/PlaybackService$crossfadeMonitorRunnable$1;->this$0:Lcom/sakukelly/music/player/PlaybackService;

    invoke-static {v0}, Lcom/sakukelly/music/player/PlaybackService;->access$getPlayer$p(Lcom/sakukelly/music/player/PlaybackService;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getCurrentPosition()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-lez v0, :cond_6

    cmp-long v0, v5, v7

    if-ltz v0, :cond_6

    sub-long v5, v3, v5

    .line 54
    iget-object v0, p0, Lcom/sakukelly/music/player/PlaybackService$crossfadeMonitorRunnable$1;->this$0:Lcom/sakukelly/music/player/PlaybackService;

    invoke-static {v0}, Lcom/sakukelly/music/player/PlaybackService;->access$getCrossfadeEnabled$p(Lcom/sakukelly/music/player/PlaybackService;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sakukelly/music/player/PlaybackService$crossfadeMonitorRunnable$1;->this$0:Lcom/sakukelly/music/player/PlaybackService;

    invoke-static {v0}, Lcom/sakukelly/music/player/PlaybackService;->access$getCrossfadeDurationMs$p(Lcom/sakukelly/music/player/PlaybackService;)J

    move-result-wide v9

    cmp-long v0, v9, v7

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/sakukelly/music/player/PlaybackService$crossfadeMonitorRunnable$1;->this$0:Lcom/sakukelly/music/player/PlaybackService;

    invoke-static {v0}, Lcom/sakukelly/music/player/PlaybackService;->access$getCrossfadeDurationMs$p(Lcom/sakukelly/music/player/PlaybackService;)J

    move-result-wide v9

    const/4 v0, 0x2

    int-to-long v11, v0

    mul-long/2addr v9, v11

    cmp-long v0, v3, v9

    if-lez v0, :cond_6

    cmp-long v0, v7, v5

    const/high16 v3, 0x3f800000    # 1.0f

    if-gtz v0, :cond_4

    .line 55
    iget-object v0, p0, Lcom/sakukelly/music/player/PlaybackService$crossfadeMonitorRunnable$1;->this$0:Lcom/sakukelly/music/player/PlaybackService;

    invoke-static {v0}, Lcom/sakukelly/music/player/PlaybackService;->access$getCrossfadeDurationMs$p(Lcom/sakukelly/music/player/PlaybackService;)J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-gtz v0, :cond_4

    .line 56
    iget-object v0, p0, Lcom/sakukelly/music/player/PlaybackService$crossfadeMonitorRunnable$1;->this$0:Lcom/sakukelly/music/player/PlaybackService;

    const/4 v4, 0x1

    invoke-static {v0, v4}, Lcom/sakukelly/music/player/PlaybackService;->access$setCrossfadingOut$p(Lcom/sakukelly/music/player/PlaybackService;Z)V

    long-to-float v0, v5

    .line 57
    iget-object v4, p0, Lcom/sakukelly/music/player/PlaybackService$crossfadeMonitorRunnable$1;->this$0:Lcom/sakukelly/music/player/PlaybackService;

    invoke-static {v4}, Lcom/sakukelly/music/player/PlaybackService;->access$getCrossfadeDurationMs$p(Lcom/sakukelly/music/player/PlaybackService;)J

    move-result-wide v4

    long-to-float v4, v4

    div-float/2addr v0, v4

    const v4, 0x3ca3d70a    # 0.02f

    invoke-static {v0, v4, v3}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v0

    .line 58
    iget-object v3, p0, Lcom/sakukelly/music/player/PlaybackService$crossfadeMonitorRunnable$1;->this$0:Lcom/sakukelly/music/player/PlaybackService;

    invoke-static {v3}, Lcom/sakukelly/music/player/PlaybackService;->access$getPlayer$p(Lcom/sakukelly/music/player/PlaybackService;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_3
    invoke-interface {v3, v0}, Landroidx/media3/exoplayer/ExoPlayer;->setVolume(F)V

    goto :goto_0

    .line 59
    :cond_4
    iget-object v0, p0, Lcom/sakukelly/music/player/PlaybackService$crossfadeMonitorRunnable$1;->this$0:Lcom/sakukelly/music/player/PlaybackService;

    invoke-static {v0}, Lcom/sakukelly/music/player/PlaybackService;->access$isCrossfadingOut$p(Lcom/sakukelly/music/player/PlaybackService;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sakukelly/music/player/PlaybackService$crossfadeMonitorRunnable$1;->this$0:Lcom/sakukelly/music/player/PlaybackService;

    invoke-static {v0}, Lcom/sakukelly/music/player/PlaybackService;->access$getCrossfadeDurationMs$p(Lcom/sakukelly/music/player/PlaybackService;)J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-lez v0, :cond_6

    .line 60
    iget-object v0, p0, Lcom/sakukelly/music/player/PlaybackService$crossfadeMonitorRunnable$1;->this$0:Lcom/sakukelly/music/player/PlaybackService;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/sakukelly/music/player/PlaybackService;->access$setCrossfadingOut$p(Lcom/sakukelly/music/player/PlaybackService;Z)V

    .line 61
    iget-object v0, p0, Lcom/sakukelly/music/player/PlaybackService$crossfadeMonitorRunnable$1;->this$0:Lcom/sakukelly/music/player/PlaybackService;

    invoke-static {v0}, Lcom/sakukelly/music/player/PlaybackService;->access$getPlayer$p(Lcom/sakukelly/music/player/PlaybackService;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_5
    invoke-interface {v0, v3}, Landroidx/media3/exoplayer/ExoPlayer;->setVolume(F)V

    .line 68
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/sakukelly/music/player/PlaybackService$crossfadeMonitorRunnable$1;->this$0:Lcom/sakukelly/music/player/PlaybackService;

    invoke-static {v0}, Lcom/sakukelly/music/player/PlaybackService;->access$getPlayer$p(Lcom/sakukelly/music/player/PlaybackService;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move-object v1, v0

    :goto_1
    invoke-interface {v1}, Landroidx/media3/exoplayer/ExoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 69
    iget-object v0, p0, Lcom/sakukelly/music/player/PlaybackService$crossfadeMonitorRunnable$1;->this$0:Lcom/sakukelly/music/player/PlaybackService;

    invoke-static {v0}, Lcom/sakukelly/music/player/PlaybackService;->access$getHandler$p(Lcom/sakukelly/music/player/PlaybackService;)Landroid/os/Handler;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    return-void
.end method
