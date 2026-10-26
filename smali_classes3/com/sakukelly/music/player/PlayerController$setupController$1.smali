.class public final Lcom/sakukelly/music/player/PlayerController$setupController$1;
.super Ljava/lang/Object;
.source "PlayerController.kt"

# interfaces
.implements Landroidx/media3/common/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/player/PlayerController;->setupController()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlayerController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlayerController.kt\ncom/sakukelly/music/player/PlayerController$setupController$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,388:1\n295#2,2:389\n*S KotlinDebug\n*F\n+ 1 PlayerController.kt\ncom/sakukelly/music/player/PlayerController$setupController$1\n*L\n117#1:389,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u001a\u0010\u000c\u001a\u00020\u00032\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u0008H\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "com/sakukelly/music/player/PlayerController$setupController$1",
        "Landroidx/media3/common/Player$Listener;",
        "onIsPlayingChanged",
        "",
        "isPlaying",
        "",
        "onPlaybackStateChanged",
        "playbackState",
        "",
        "onPlayerError",
        "error",
        "Landroidx/media3/common/PlaybackException;",
        "onMediaItemTransition",
        "mediaItem",
        "Landroidx/media3/common/MediaItem;",
        "reason",
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
.field final synthetic $controller:Landroidx/media3/session/MediaController;

.field final synthetic this$0:Lcom/sakukelly/music/player/PlayerController;


# direct methods
.method constructor <init>(Lcom/sakukelly/music/player/PlayerController;Landroidx/media3/session/MediaController;)V
    .locals 0

    iput-object p1, p0, Lcom/sakukelly/music/player/PlayerController$setupController$1;->this$0:Lcom/sakukelly/music/player/PlayerController;

    iput-object p2, p0, Lcom/sakukelly/music/player/PlayerController$setupController$1;->$controller:Landroidx/media3/session/MediaController;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIsPlayingChanged(Z)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/sakukelly/music/player/PlayerController$setupController$1;->this$0:Lcom/sakukelly/music/player/PlayerController;

    invoke-static {v0}, Lcom/sakukelly/music/player/PlayerController;->access$get_isPlaying$p(Lcom/sakukelly/music/player/PlayerController;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onMediaItemTransition(Landroidx/media3/common/MediaItem;I)V
    .locals 9

    if-eqz p1, :cond_3

    .line 114
    iget-object p1, p1, Landroidx/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/sakukelly/music/player/PlayerController$setupController$1;->this$0:Lcom/sakukelly/music/player/PlayerController;

    .line 115
    invoke-static {p2, p1}, Lcom/sakukelly/music/player/PlayerController;->access$updateTechSpecs(Lcom/sakukelly/music/player/PlayerController;Ljava/lang/String;)V

    .line 116
    invoke-static {p2}, Lcom/sakukelly/music/player/PlayerController;->access$getSessionPlayedPaths$p(Lcom/sakukelly/music/player/PlayerController;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-static {p2}, Lcom/sakukelly/music/player/PlayerController;->access$get_queue$p(Lcom/sakukelly/music/player/PlayerController;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 389
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/sakukelly/music/data/model/Song;

    .line 117
    invoke-virtual {v3}, Lcom/sakukelly/music/data/model/Song;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Lcom/sakukelly/music/data/model/Song;

    if-eqz v1, :cond_2

    .line 119
    invoke-static {p2}, Lcom/sakukelly/music/player/PlayerController;->access$get_currentSong$p(Lcom/sakukelly/music/player/PlayerController;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 121
    :cond_2
    invoke-static {p2}, Lcom/sakukelly/music/player/PlayerController;->access$getScope$p(Lcom/sakukelly/music/player/PlayerController;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/sakukelly/music/player/PlayerController$setupController$1$onMediaItemTransition$1$1;

    invoke-direct {v0, p2, v1, p1, v2}, Lcom/sakukelly/music/player/PlayerController$setupController$1$onMediaItemTransition$1$1;-><init>(Lcom/sakukelly/music/player/PlayerController;Lcom/sakukelly/music/data/model/Song;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_3
    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/sakukelly/music/player/PlayerController$setupController$1;->this$0:Lcom/sakukelly/music/player/PlayerController;

    invoke-static {p1}, Lcom/sakukelly/music/player/PlayerController;->access$onTrackEnded(Lcom/sakukelly/music/player/PlayerController;)V

    goto :goto_0

    .line 102
    :cond_1
    iget-object p1, p0, Lcom/sakukelly/music/player/PlayerController$setupController$1;->this$0:Lcom/sakukelly/music/player/PlayerController;

    invoke-static {p1}, Lcom/sakukelly/music/player/PlayerController;->access$get_duration$p(Lcom/sakukelly/music/player/PlayerController;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iget-object v0, p0, Lcom/sakukelly/music/player/PlayerController$setupController$1;->$controller:Landroidx/media3/session/MediaController;

    invoke-virtual {v0}, Landroidx/media3/session/MediaController;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onPlayerError(Landroidx/media3/common/PlaybackException;)V
    .locals 3

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Landroidx/media3/common/PlaybackException;->printStackTrace()V

    .line 110
    iget-object v0, p0, Lcom/sakukelly/music/player/PlayerController$setupController$1;->this$0:Lcom/sakukelly/music/player/PlayerController;

    invoke-static {v0}, Lcom/sakukelly/music/player/PlayerController;->access$get_techSpecs$p(Lcom/sakukelly/music/player/PlayerController;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/media3/common/PlaybackException;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 v1, 0x32

    invoke-static {p1, v1}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error de reproducci\u00f3n local: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method
