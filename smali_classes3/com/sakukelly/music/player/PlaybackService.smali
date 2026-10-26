.class public final Lcom/sakukelly/music/player/PlaybackService;
.super Landroidx/media3/session/MediaSessionService;
.source "PlaybackService.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlaybackService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlaybackService.kt\ncom/sakukelly/music/player/PlaybackService\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,322:1\n1#2:323\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000]\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u001f\u0008\u0007\u0018\u00002\u00020\u0001B\t\u0008\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010!\u001a\u00020\"H\u0017J\u0010\u0010#\u001a\u00020\"2\u0006\u0010$\u001a\u00020\u0017H\u0002J\u0008\u0010%\u001a\u00020\"H\u0002J\u0012\u0010&\u001a\u0004\u0018\u00010\u00052\u0006\u0010\'\u001a\u00020(H\u0016J\u0008\u0010)\u001a\u00020\"H\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001e\u001a\u00020\u001fX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010 \u00a8\u0006*"
    }
    d2 = {
        "Lcom/sakukelly/music/player/PlaybackService;",
        "Landroidx/media3/session/MediaSessionService;",
        "<init>",
        "()V",
        "mediaSession",
        "Landroidx/media3/session/MediaSession;",
        "player",
        "Landroidx/media3/exoplayer/ExoPlayer;",
        "forwardingPlayer",
        "Landroidx/media3/common/ForwardingPlayer;",
        "handler",
        "Landroid/os/Handler;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "prefs",
        "Lcom/sakukelly/music/data/prefs/SettingsPrefs;",
        "getPrefs",
        "()Lcom/sakukelly/music/data/prefs/SettingsPrefs;",
        "prefs$delegate",
        "Lkotlin/Lazy;",
        "crossfadeEnabled",
        "",
        "crossfadeDurationMs",
        "",
        "skipSilencePrefEnabled",
        "autoGaplessMergePref",
        "isCrossfadingIn",
        "isCrossfadingOut",
        "fadeInRunnable",
        "Ljava/lang/Runnable;",
        "crossfadeMonitorRunnable",
        "com/sakukelly/music/player/PlaybackService$crossfadeMonitorRunnable$1",
        "Lcom/sakukelly/music/player/PlaybackService$crossfadeMonitorRunnable$1;",
        "onCreate",
        "",
        "startFadeIn",
        "durationMs",
        "prefetchNext",
        "onGetSession",
        "controllerInfo",
        "Landroidx/media3/session/MediaSession$ControllerInfo;",
        "onDestroy",
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


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private autoGaplessMergePref:Z

.field private crossfadeDurationMs:J

.field private crossfadeEnabled:Z

.field private final crossfadeMonitorRunnable:Lcom/sakukelly/music/player/PlaybackService$crossfadeMonitorRunnable$1;

.field private fadeInRunnable:Ljava/lang/Runnable;

.field private forwardingPlayer:Landroidx/media3/common/ForwardingPlayer;

.field private final handler:Landroid/os/Handler;

.field private isCrossfadingIn:Z

.field private isCrossfadingOut:Z

.field private mediaSession:Landroidx/media3/session/MediaSession;

.field private player:Landroidx/media3/exoplayer/ExoPlayer;

.field private final prefs$delegate:Lkotlin/Lazy;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private skipSilencePrefEnabled:Z


# direct methods
.method public static synthetic $r8$lambda$sXJ4SK9xFZlgvRQ3nwXDQcwRU7w(Lcom/sakukelly/music/player/PlaybackService;)Lcom/sakukelly/music/data/prefs/SettingsPrefs;
    .locals 0

    invoke-static {p0}, Lcom/sakukelly/music/player/PlaybackService;->prefs_delegate$lambda$0(Lcom/sakukelly/music/player/PlaybackService;)Lcom/sakukelly/music/data/prefs/SettingsPrefs;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 28
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionService;-><init>()V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sakukelly/music/player/PlaybackService;->handler:Landroid/os/Handler;

    .line 34
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    iput-object v0, p0, Lcom/sakukelly/music/player/PlaybackService;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 36
    new-instance v0, Lcom/sakukelly/music/player/PlaybackService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/sakukelly/music/player/PlaybackService$$ExternalSyntheticLambda0;-><init>(Lcom/sakukelly/music/player/PlaybackService;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/sakukelly/music/player/PlaybackService;->prefs$delegate:Lkotlin/Lazy;

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/sakukelly/music/player/PlaybackService;->crossfadeEnabled:Z

    const-wide/16 v1, 0xbb8

    .line 38
    iput-wide v1, p0, Lcom/sakukelly/music/player/PlaybackService;->crossfadeDurationMs:J

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/sakukelly/music/player/PlaybackService;->skipSilencePrefEnabled:Z

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/sakukelly/music/player/PlaybackService;->autoGaplessMergePref:Z

    .line 45
    new-instance v0, Lcom/sakukelly/music/player/PlaybackService$crossfadeMonitorRunnable$1;

    invoke-direct {v0, p0}, Lcom/sakukelly/music/player/PlaybackService$crossfadeMonitorRunnable$1;-><init>(Lcom/sakukelly/music/player/PlaybackService;)V

    iput-object v0, p0, Lcom/sakukelly/music/player/PlaybackService;->crossfadeMonitorRunnable:Lcom/sakukelly/music/player/PlaybackService$crossfadeMonitorRunnable$1;

    return-void
.end method

.method public static final synthetic access$getCrossfadeDurationMs$p(Lcom/sakukelly/music/player/PlaybackService;)J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/sakukelly/music/player/PlaybackService;->crossfadeDurationMs:J

    return-wide v0
.end method

.method public static final synthetic access$getCrossfadeEnabled$p(Lcom/sakukelly/music/player/PlaybackService;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/sakukelly/music/player/PlaybackService;->crossfadeEnabled:Z

    return p0
.end method

.method public static final synthetic access$getCrossfadeMonitorRunnable$p(Lcom/sakukelly/music/player/PlaybackService;)Lcom/sakukelly/music/player/PlaybackService$crossfadeMonitorRunnable$1;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/sakukelly/music/player/PlaybackService;->crossfadeMonitorRunnable:Lcom/sakukelly/music/player/PlaybackService$crossfadeMonitorRunnable$1;

    return-object p0
.end method

.method public static final synthetic access$getFadeInRunnable$p(Lcom/sakukelly/music/player/PlaybackService;)Ljava/lang/Runnable;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/sakukelly/music/player/PlaybackService;->fadeInRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$getHandler$p(Lcom/sakukelly/music/player/PlaybackService;)Landroid/os/Handler;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/sakukelly/music/player/PlaybackService;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getPlayer$p(Lcom/sakukelly/music/player/PlaybackService;)Landroidx/media3/exoplayer/ExoPlayer;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/sakukelly/music/player/PlaybackService;->player:Landroidx/media3/exoplayer/ExoPlayer;

    return-object p0
.end method

.method public static final synthetic access$getPrefs(Lcom/sakukelly/music/player/PlaybackService;)Lcom/sakukelly/music/data/prefs/SettingsPrefs;
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/sakukelly/music/player/PlaybackService;->getPrefs()Lcom/sakukelly/music/data/prefs/SettingsPrefs;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isCrossfadingIn$p(Lcom/sakukelly/music/player/PlaybackService;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/sakukelly/music/player/PlaybackService;->isCrossfadingIn:Z

    return p0
.end method

.method public static final synthetic access$isCrossfadingOut$p(Lcom/sakukelly/music/player/PlaybackService;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/sakukelly/music/player/PlaybackService;->isCrossfadingOut:Z

    return p0
.end method

.method public static final synthetic access$prefetchNext(Lcom/sakukelly/music/player/PlaybackService;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/sakukelly/music/player/PlaybackService;->prefetchNext()V

    return-void
.end method

.method public static final synthetic access$setAutoGaplessMergePref$p(Lcom/sakukelly/music/player/PlaybackService;Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/sakukelly/music/player/PlaybackService;->autoGaplessMergePref:Z

    return-void
.end method

.method public static final synthetic access$setCrossfadeDurationMs$p(Lcom/sakukelly/music/player/PlaybackService;J)V
    .locals 0

    .line 28
    iput-wide p1, p0, Lcom/sakukelly/music/player/PlaybackService;->crossfadeDurationMs:J

    return-void
.end method

.method public static final synthetic access$setCrossfadeEnabled$p(Lcom/sakukelly/music/player/PlaybackService;Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/sakukelly/music/player/PlaybackService;->crossfadeEnabled:Z

    return-void
.end method

.method public static final synthetic access$setCrossfadingIn$p(Lcom/sakukelly/music/player/PlaybackService;Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/sakukelly/music/player/PlaybackService;->isCrossfadingIn:Z

    return-void
.end method

.method public static final synthetic access$setCrossfadingOut$p(Lcom/sakukelly/music/player/PlaybackService;Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/sakukelly/music/player/PlaybackService;->isCrossfadingOut:Z

    return-void
.end method

.method public static final synthetic access$setSkipSilencePrefEnabled$p(Lcom/sakukelly/music/player/PlaybackService;Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/sakukelly/music/player/PlaybackService;->skipSilencePrefEnabled:Z

    return-void
.end method

.method public static final synthetic access$startFadeIn(Lcom/sakukelly/music/player/PlaybackService;J)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/sakukelly/music/player/PlaybackService;->startFadeIn(J)V

    return-void
.end method

.method private final getPrefs()Lcom/sakukelly/music/data/prefs/SettingsPrefs;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/sakukelly/music/player/PlaybackService;->prefs$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sakukelly/music/data/prefs/SettingsPrefs;

    return-object v0
.end method

.method private final prefetchNext()V
    .locals 0

    return-void
.end method

.method private static final prefs_delegate$lambda$0(Lcom/sakukelly/music/player/PlaybackService;)Lcom/sakukelly/music/data/prefs/SettingsPrefs;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/sakukelly/music/data/prefs/SettingsPrefs;

    check-cast p0, Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/sakukelly/music/data/prefs/SettingsPrefs;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private final startFadeIn(J)V
    .locals 8

    .line 279
    iget-object v0, p0, Lcom/sakukelly/music/player/PlaybackService;->fadeInRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sakukelly/music/player/PlaybackService;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    .line 280
    iput-boolean v0, p0, Lcom/sakukelly/music/player/PlaybackService;->isCrossfadingOut:Z

    const/4 v0, 0x1

    .line 281
    iput-boolean v0, p0, Lcom/sakukelly/music/player/PlaybackService;->isCrossfadingIn:Z

    .line 282
    iget-object v0, p0, Lcom/sakukelly/music/player/PlaybackService;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v0, :cond_1

    const-string v0, "player"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    const v1, 0x3ca3d70a    # 0.02f

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer;->setVolume(F)V

    .line 283
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 285
    new-instance v0, Lcom/sakukelly/music/player/PlaybackService$startFadeIn$runnable$1;

    move-object v2, v0

    move-wide v5, p1

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/sakukelly/music/player/PlaybackService$startFadeIn$runnable$1;-><init>(JJLcom/sakukelly/music/player/PlaybackService;)V

    .line 298
    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/sakukelly/music/player/PlaybackService;->fadeInRunnable:Ljava/lang/Runnable;

    .line 299
    iget-object p1, p0, Lcom/sakukelly/music/player/PlaybackService;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 18

    move-object/from16 v1, p0

    .line 76
    invoke-super/range {p0 .. p0}, Landroidx/media3/session/MediaSessionService;->onCreate()V

    .line 78
    new-instance v0, Landroidx/media3/common/AudioAttributes$Builder;

    invoke-direct {v0}, Landroidx/media3/common/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x1

    .line 79
    invoke-virtual {v0, v2}, Landroidx/media3/common/AudioAttributes$Builder;->setUsage(I)Landroidx/media3/common/AudioAttributes$Builder;

    move-result-object v0

    const/4 v3, 0x2

    .line 80
    invoke-virtual {v0, v3}, Landroidx/media3/common/AudioAttributes$Builder;->setContentType(I)Landroidx/media3/common/AudioAttributes$Builder;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroidx/media3/common/AudioAttributes$Builder;->build()Landroidx/media3/common/AudioAttributes;

    move-result-object v0

    const-string v3, "build(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    new-instance v3, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    invoke-direct {v3}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;-><init>()V

    .line 84
    const-string v4, "Mozilla/5.0 (SMART-TV; Linux; Tizen 5.0) AppleWebKit/538.1 (KHTML, like Gecko) Version/5.0 TV Safari/538.1"

    invoke-virtual {v3, v4}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->setUserAgent(Ljava/lang/String;)Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    move-result-object v3

    const/16 v4, 0x4e20

    .line 85
    invoke-virtual {v3, v4}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->setConnectTimeoutMs(I)Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    move-result-object v3

    const/16 v4, 0x61a8

    .line 86
    invoke-virtual {v3, v4}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->setReadTimeoutMs(I)Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    move-result-object v3

    .line 87
    invoke-virtual {v3, v2}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->setAllowCrossProtocolRedirects(Z)Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    move-result-object v3

    .line 88
    invoke-virtual {v3, v2}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->setKeepPostFor302Redirects(Z)Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    move-result-object v3

    const-string v4, "setKeepPostFor302Redirects(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    new-instance v4, Landroidx/media3/datasource/DefaultDataSource$Factory;

    move-object v5, v1

    check-cast v5, Landroid/content/Context;

    check-cast v3, Landroidx/media3/datasource/DataSource$Factory;

    invoke-direct {v4, v5, v3}, Landroidx/media3/datasource/DefaultDataSource$Factory;-><init>(Landroid/content/Context;Landroidx/media3/datasource/DataSource$Factory;)V

    .line 91
    new-instance v3, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    invoke-direct {v3, v5}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;-><init>(Landroid/content/Context;)V

    .line 92
    check-cast v4, Landroidx/media3/datasource/DataSource$Factory;

    invoke-virtual {v3, v4}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->setDataSourceFactory(Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    move-result-object v3

    const-string v4, "setDataSourceFactory(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    new-instance v4, Landroidx/media3/exoplayer/ExoPlayer$Builder;

    invoke-direct {v4, v5}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    .line 95
    invoke-virtual {v4, v0, v2}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setAudioAttributes(Landroidx/media3/common/AudioAttributes;Z)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object v0

    .line 96
    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setHandleAudioBecomingNoisy(Z)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object v0

    .line 97
    check-cast v3, Landroidx/media3/exoplayer/source/MediaSource$Factory;

    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setMediaSourceFactory(Landroidx/media3/exoplayer/source/MediaSource$Factory;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->build()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    .line 94
    iput-object v0, v1, Lcom/sakukelly/music/player/PlaybackService;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 101
    const-string v2, "player"

    const/4 v3, 0x0

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_0
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroidx/media3/exoplayer/ExoPlayer;->setRepeatMode(I)V

    .line 102
    iget-object v0, v1, Lcom/sakukelly/music/player/PlaybackService;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_1
    invoke-interface {v0, v4}, Landroidx/media3/exoplayer/ExoPlayer;->setShuffleModeEnabled(Z)V

    .line 105
    iget-object v6, v1, Lcom/sakukelly/music/player/PlaybackService;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/sakukelly/music/player/PlaybackService$onCreate$1;

    invoke-direct {v0, v1, v3}, Lcom/sakukelly/music/player/PlaybackService$onCreate$1;-><init>(Lcom/sakukelly/music/player/PlaybackService;Lkotlin/coroutines/Continuation;)V

    move-object v9, v0

    check-cast v9, Lkotlin/jvm/functions/Function2;

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 116
    iget-object v12, v1, Lcom/sakukelly/music/player/PlaybackService;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/sakukelly/music/player/PlaybackService$onCreate$2;

    invoke-direct {v0, v1, v3}, Lcom/sakukelly/music/player/PlaybackService$onCreate$2;-><init>(Lcom/sakukelly/music/player/PlaybackService;Lkotlin/coroutines/Continuation;)V

    move-object v15, v0

    check-cast v15, Lkotlin/jvm/functions/Function2;

    const/16 v16, 0x3

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v12 .. v17}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 128
    iget-object v6, v1, Lcom/sakukelly/music/player/PlaybackService;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/sakukelly/music/player/PlaybackService$onCreate$3;

    invoke-direct {v0, v1, v3}, Lcom/sakukelly/music/player/PlaybackService$onCreate$3;-><init>(Lcom/sakukelly/music/player/PlaybackService;Lkotlin/coroutines/Continuation;)V

    move-object v9, v0

    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 135
    iget-object v0, v1, Lcom/sakukelly/music/player/PlaybackService;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_2
    new-instance v6, Lcom/sakukelly/music/player/PlaybackService$onCreate$4;

    invoke-direct {v6, v1, v0}, Lcom/sakukelly/music/player/PlaybackService$onCreate$4;-><init>(Lcom/sakukelly/music/player/PlaybackService;Landroidx/media3/exoplayer/ExoPlayer;)V

    check-cast v6, Landroidx/media3/common/ForwardingPlayer;

    iput-object v6, v1, Lcom/sakukelly/music/player/PlaybackService;->forwardingPlayer:Landroidx/media3/common/ForwardingPlayer;

    .line 198
    :try_start_0
    sget-object v0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->Companion:Lcom/sakukelly/music/domain/equalizer/EqualizerManager$Companion;

    invoke-virtual {v0}, Lcom/sakukelly/music/domain/equalizer/EqualizerManager$Companion;->getInstance()Lcom/sakukelly/music/domain/equalizer/EqualizerManager;

    move-result-object v0

    iget-object v6, v1, Lcom/sakukelly/music/player/PlaybackService;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v6, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v3

    :cond_3
    invoke-interface {v6}, Landroidx/media3/exoplayer/ExoPlayer;->getAudioSessionId()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->init(I)V

    invoke-static {v6}, Lcom/sakukelly/music/player/VolumeBooster;->attach(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 200
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 206
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v6, Lcom/sakukelly/music/MainActivity;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v6, 0xc000000

    .line 203
    invoke-static {v5, v4, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 210
    new-instance v4, Landroidx/media3/session/MediaSession$Builder;

    iget-object v6, v1, Lcom/sakukelly/music/player/PlaybackService;->forwardingPlayer:Landroidx/media3/common/ForwardingPlayer;

    if-nez v6, :cond_4

    const-string v6, "forwardingPlayer"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v3

    :cond_4
    check-cast v6, Landroidx/media3/common/Player;

    invoke-direct {v4, v5, v6}, Landroidx/media3/session/MediaSession$Builder;-><init>(Landroid/content/Context;Landroidx/media3/common/Player;)V

    .line 211
    invoke-virtual {v4, v0}, Landroidx/media3/session/MediaSession$Builder;->setSessionActivity(Landroid/app/PendingIntent;)Landroidx/media3/session/MediaSession$Builder;

    move-result-object v0

    .line 212
    new-instance v4, Lcom/sakukelly/music/player/PlaybackService$onCreate$5;

    invoke-direct {v4}, Lcom/sakukelly/music/player/PlaybackService$onCreate$5;-><init>()V

    check-cast v4, Landroidx/media3/session/MediaSession$Callback;

    invoke-virtual {v0, v4}, Landroidx/media3/session/MediaSession$Builder;->setCallback(Landroidx/media3/session/MediaSession$Callback;)Landroidx/media3/session/MediaSession$Builder;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Landroidx/media3/session/MediaSession$Builder;->build()Landroidx/media3/session/MediaSession;

    move-result-object v0

    .line 210
    iput-object v0, v1, Lcom/sakukelly/music/player/PlaybackService;->mediaSession:Landroidx/media3/session/MediaSession;

    .line 236
    iget-object v0, v1, Lcom/sakukelly/music/player/PlaybackService;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v3, v0

    :goto_1
    new-instance v0, Lcom/sakukelly/music/player/PlaybackService$onCreate$6;

    invoke-direct {v0, v1}, Lcom/sakukelly/music/player/PlaybackService$onCreate$6;-><init>(Lcom/sakukelly/music/player/PlaybackService;)V

    check-cast v0, Landroidx/media3/common/Player$Listener;

    invoke-interface {v3, v0}, Landroidx/media3/exoplayer/ExoPlayer;->addListener(Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/sakukelly/music/player/PlaybackService;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sakukelly/music/player/PlaybackService;->crossfadeMonitorRunnable:Lcom/sakukelly/music/player/PlaybackService$crossfadeMonitorRunnable$1;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 312
    iget-object v0, p0, Lcom/sakukelly/music/player/PlaybackService;->fadeInRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sakukelly/music/player/PlaybackService;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/sakukelly/music/player/PlaybackService;->mediaSession:Landroidx/media3/session/MediaSession;

    if-eqz v0, :cond_1

    .line 314
    invoke-virtual {v0}, Landroidx/media3/session/MediaSession;->getPlayer()Landroidx/media3/common/Player;

    move-result-object v1

    invoke-interface {v1}, Landroidx/media3/common/Player;->release()V

    .line 315
    invoke-virtual {v0}, Landroidx/media3/session/MediaSession;->release()V

    const/4 v0, 0x0

    .line 316
    iput-object v0, p0, Lcom/sakukelly/music/player/PlaybackService;->mediaSession:Landroidx/media3/session/MediaSession;

    .line 318
    :cond_1
    sget-object v0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->Companion:Lcom/sakukelly/music/domain/equalizer/EqualizerManager$Companion;

    invoke-virtual {v0}, Lcom/sakukelly/music/domain/equalizer/EqualizerManager$Companion;->getInstance()Lcom/sakukelly/music/domain/equalizer/EqualizerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->release()V

    invoke-static {}, Lcom/sakukelly/music/player/VolumeBooster;->release()V

    .line 319
    invoke-super {p0}, Landroidx/media3/session/MediaSessionService;->onDestroy()V

    return-void
.end method

.method public onGetSession(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession;
    .locals 1

    const-string v0, "controllerInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    iget-object p1, p0, Lcom/sakukelly/music/player/PlaybackService;->mediaSession:Landroidx/media3/session/MediaSession;

    return-object p1
.end method
