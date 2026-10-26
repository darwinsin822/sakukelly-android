.class public final Lcom/sakukelly/music/player/PlaybackService$onCreate$6;
.super Ljava/lang/Object;
.source "PlaybackService.kt"

# interfaces
.implements Landroidx/media3/common/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/player/PlaybackService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlaybackService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlaybackService.kt\ncom/sakukelly/music/player/PlaybackService$onCreate$6\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,322:1\n1#2:323\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00005\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH\u0016J \u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0011H\u0016\u00a8\u0006\u0012"
    }
    d2 = {
        "com/sakukelly/music/player/PlaybackService$onCreate$6",
        "Landroidx/media3/common/Player$Listener;",
        "onMediaItemTransition",
        "",
        "mediaItem",
        "Landroidx/media3/common/MediaItem;",
        "reason",
        "",
        "onIsPlayingChanged",
        "isPlaying",
        "",
        "onPositionDiscontinuity",
        "oldPosition",
        "Landroidx/media3/common/Player$PositionInfo;",
        "newPosition",
        "onPlayerError",
        "error",
        "Landroidx/media3/common/PlaybackException;",
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

    iput-object p1, p0, Lcom/sakukelly/music/player/PlaybackService$onCreate$6;->this$0:Lcom/sakukelly/music/player/PlaybackService;

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIsPlayingChanged(Z)V
    .locals 2

    .line 251
    invoke-super {p0, p1}, Landroidx/media3/common/Player$Listener;->onIsPlayingChanged(Z)V

    .line 252
    iget-object v0, p0, Lcom/sakukelly/music/player/PlaybackService$onCreate$6;->this$0:Lcom/sakukelly/music/player/PlaybackService;

    invoke-static {v0}, Lcom/sakukelly/music/player/PlaybackService;->access$getHandler$p(Lcom/sakukelly/music/player/PlaybackService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sakukelly/music/player/PlaybackService$onCreate$6;->this$0:Lcom/sakukelly/music/player/PlaybackService;

    invoke-static {v1}, Lcom/sakukelly/music/player/PlaybackService;->access$getCrossfadeMonitorRunnable$p(Lcom/sakukelly/music/player/PlaybackService;)Lcom/sakukelly/music/player/PlaybackService$crossfadeMonitorRunnable$1;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_0

    .line 254
    iget-object p1, p0, Lcom/sakukelly/music/player/PlaybackService$onCreate$6;->this$0:Lcom/sakukelly/music/player/PlaybackService;

    invoke-static {p1}, Lcom/sakukelly/music/player/PlaybackService;->access$getHandler$p(Lcom/sakukelly/music/player/PlaybackService;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/sakukelly/music/player/PlaybackService$onCreate$6;->this$0:Lcom/sakukelly/music/player/PlaybackService;

    invoke-static {v0}, Lcom/sakukelly/music/player/PlaybackService;->access$getCrossfadeMonitorRunnable$p(Lcom/sakukelly/music/player/PlaybackService;)Lcom/sakukelly/music/player/PlaybackService$crossfadeMonitorRunnable$1;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onMediaItemTransition(Landroidx/media3/common/MediaItem;I)V
    .locals 2

    .line 238
    invoke-super {p0, p1, p2}, Landroidx/media3/common/Player$Listener;->onMediaItemTransition(Landroidx/media3/common/MediaItem;I)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 239
    iget-object p1, p0, Lcom/sakukelly/music/player/PlaybackService$onCreate$6;->this$0:Lcom/sakukelly/music/player/PlaybackService;

    invoke-static {p1}, Lcom/sakukelly/music/player/PlaybackService;->access$getCrossfadeEnabled$p(Lcom/sakukelly/music/player/PlaybackService;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sakukelly/music/player/PlaybackService$onCreate$6;->this$0:Lcom/sakukelly/music/player/PlaybackService;

    invoke-static {p1}, Lcom/sakukelly/music/player/PlaybackService;->access$getCrossfadeDurationMs$p(Lcom/sakukelly/music/player/PlaybackService;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    .line 240
    iget-object p1, p0, Lcom/sakukelly/music/player/PlaybackService$onCreate$6;->this$0:Lcom/sakukelly/music/player/PlaybackService;

    invoke-static {p1}, Lcom/sakukelly/music/player/PlaybackService;->access$getCrossfadeDurationMs$p(Lcom/sakukelly/music/player/PlaybackService;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/sakukelly/music/player/PlaybackService;->access$startFadeIn(Lcom/sakukelly/music/player/PlaybackService;J)V

    goto :goto_0

    .line 242
    :cond_0
    iget-object p1, p0, Lcom/sakukelly/music/player/PlaybackService$onCreate$6;->this$0:Lcom/sakukelly/music/player/PlaybackService;

    invoke-static {p1}, Lcom/sakukelly/music/player/PlaybackService;->access$getFadeInRunnable$p(Lcom/sakukelly/music/player/PlaybackService;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/sakukelly/music/player/PlaybackService$onCreate$6;->this$0:Lcom/sakukelly/music/player/PlaybackService;

    invoke-static {p2}, Lcom/sakukelly/music/player/PlaybackService;->access$getHandler$p(Lcom/sakukelly/music/player/PlaybackService;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 243
    :cond_1
    iget-object p1, p0, Lcom/sakukelly/music/player/PlaybackService$onCreate$6;->this$0:Lcom/sakukelly/music/player/PlaybackService;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sakukelly/music/player/PlaybackService;->access$setCrossfadingIn$p(Lcom/sakukelly/music/player/PlaybackService;Z)V

    .line 244
    iget-object p1, p0, Lcom/sakukelly/music/player/PlaybackService$onCreate$6;->this$0:Lcom/sakukelly/music/player/PlaybackService;

    invoke-static {p1, p2}, Lcom/sakukelly/music/player/PlaybackService;->access$setCrossfadingOut$p(Lcom/sakukelly/music/player/PlaybackService;Z)V

    .line 245
    iget-object p1, p0, Lcom/sakukelly/music/player/PlaybackService$onCreate$6;->this$0:Lcom/sakukelly/music/player/PlaybackService;

    invoke-static {p1}, Lcom/sakukelly/music/player/PlaybackService;->access$getPlayer$p(Lcom/sakukelly/music/player/PlaybackService;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "player"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_2
    const/high16 p2, 0x3f800000    # 1.0f

    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/ExoPlayer;->setVolume(F)V

    .line 247
    :goto_0
    iget-object p1, p0, Lcom/sakukelly/music/player/PlaybackService$onCreate$6;->this$0:Lcom/sakukelly/music/player/PlaybackService;

    invoke-static {p1}, Lcom/sakukelly/music/player/PlaybackService;->access$prefetchNext(Lcom/sakukelly/music/player/PlaybackService;)V

    return-void
.end method

.method public onPlayerError(Landroidx/media3/common/PlaybackException;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    invoke-virtual {p1}, Landroidx/media3/common/PlaybackException;->printStackTrace()V

    return-void
.end method

.method public onPositionDiscontinuity(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V
    .locals 1

    const-string v0, "oldPosition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newPosition"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    invoke-super {p0, p1, p2, p3}, Landroidx/media3/common/Player$Listener;->onPositionDiscontinuity(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V

    const/4 p1, 0x1

    if-ne p3, p1, :cond_2

    .line 265
    iget-object p1, p0, Lcom/sakukelly/music/player/PlaybackService$onCreate$6;->this$0:Lcom/sakukelly/music/player/PlaybackService;

    invoke-static {p1}, Lcom/sakukelly/music/player/PlaybackService;->access$getFadeInRunnable$p(Lcom/sakukelly/music/player/PlaybackService;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/sakukelly/music/player/PlaybackService$onCreate$6;->this$0:Lcom/sakukelly/music/player/PlaybackService;

    invoke-static {p2}, Lcom/sakukelly/music/player/PlaybackService;->access$getHandler$p(Lcom/sakukelly/music/player/PlaybackService;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 266
    :cond_0
    iget-object p1, p0, Lcom/sakukelly/music/player/PlaybackService$onCreate$6;->this$0:Lcom/sakukelly/music/player/PlaybackService;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sakukelly/music/player/PlaybackService;->access$setCrossfadingIn$p(Lcom/sakukelly/music/player/PlaybackService;Z)V

    .line 267
    iget-object p1, p0, Lcom/sakukelly/music/player/PlaybackService$onCreate$6;->this$0:Lcom/sakukelly/music/player/PlaybackService;

    invoke-static {p1, p2}, Lcom/sakukelly/music/player/PlaybackService;->access$setCrossfadingOut$p(Lcom/sakukelly/music/player/PlaybackService;Z)V

    .line 268
    iget-object p1, p0, Lcom/sakukelly/music/player/PlaybackService$onCreate$6;->this$0:Lcom/sakukelly/music/player/PlaybackService;

    invoke-static {p1}, Lcom/sakukelly/music/player/PlaybackService;->access$getPlayer$p(Lcom/sakukelly/music/player/PlaybackService;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "player"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_1
    const/high16 p2, 0x3f800000    # 1.0f

    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/ExoPlayer;->setVolume(F)V

    :cond_2
    return-void
.end method
