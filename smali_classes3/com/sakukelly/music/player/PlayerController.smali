.class public final Lcom/sakukelly/music/player/PlayerController;
.super Ljava/lang/Object;
.source "PlayerController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sakukelly/music/player/PlayerController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlayerController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlayerController.kt\ncom/sakukelly/music/player/PlayerController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,388:1\n360#2,7:389\n360#2,7:396\n1557#2:403\n1628#2,3:404\n1557#2:407\n1628#2,3:408\n360#2,7:411\n360#2,7:418\n*S KotlinDebug\n*F\n+ 1 PlayerController.kt\ncom/sakukelly/music/player/PlayerController\n*L\n162#1:389,7\n206#1:396,7\n239#1:403\n239#1:404,3\n250#1:407\n250#1:408,3\n308#1:411,7\n330#1:418,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001d\u0008\u0007\u0018\u0000 a2\u00020\u0001:\u0001aB\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010B\u001a\u00020CH\u0002J\u000c\u0010D\u001a\u00020E*\u00020\u0014H\u0002J\u0008\u0010F\u001a\u00020CH\u0002J\u0010\u0010G\u001a\u00020C2\u0006\u0010H\u001a\u000206H\u0002J\u000e\u0010I\u001a\u00020C2\u0006\u0010J\u001a\u00020\u0014J\u0016\u0010K\u001a\u00020C2\u0006\u0010H\u001a\u0002062\u0006\u0010L\u001a\u00020\u001aJ\u001e\u0010M\u001a\u00020C2\u000c\u0010N\u001a\u0008\u0012\u0004\u0012\u00020\u00140$2\u0008\u0008\u0002\u0010O\u001a\u00020+J\u000e\u0010P\u001a\u00020C2\u0006\u0010J\u001a\u00020\u0014J\u000e\u0010Q\u001a\u00020C2\u0006\u0010R\u001a\u00020+J\u0006\u0010S\u001a\u00020CJ\u0006\u0010T\u001a\u00020CJ\u000e\u0010U\u001a\u00020C2\u0006\u0010V\u001a\u00020\u001dJ\u000e\u0010W\u001a\u00020C2\u0006\u0010X\u001a\u00020+J\u0006\u0010Y\u001a\u00020CJ\u0006\u0010Z\u001a\u00020CJ\u0006\u0010[\u001a\u00020CJ\u0006\u0010\\\u001a\u00020CJ\u000e\u0010]\u001a\u00020C2\u0006\u0010^\u001a\u00020/J\u000e\u0010_\u001a\u00020C2\u0006\u0010`\u001a\u00020+R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0016\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0016\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0018R\u0014\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u0016\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0018R\u0014\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u0016\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u0018R\u001a\u0010#\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140$0\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010%\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140$0\u0016\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\u0018R\u0014\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0016\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010\u0018R\u0014\u0010*\u001a\u0008\u0012\u0004\u0012\u00020+0\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010,\u001a\u0008\u0012\u0004\u0012\u00020+0\u0016\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010\u0018R\u0014\u0010.\u001a\u0008\u0012\u0004\u0012\u00020/0\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u00100\u001a\u0008\u0012\u0004\u0012\u00020/0\u0016\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u0010\u0018R\u0014\u00102\u001a\u0008\u0012\u0004\u0012\u00020+0\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u00103\u001a\u0008\u0012\u0004\u0012\u00020+0\u0016\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u0010\u0018R\u0014\u00105\u001a\u0008\u0012\u0004\u0012\u0002060\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u00107\u001a\u0008\u0012\u0004\u0012\u0002060\u0016\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00088\u0010\u0018R\u0010\u00109\u001a\u0004\u0018\u00010:X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010;\u001a\u00020\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008<\u0010=\"\u0004\u0008>\u0010?R\u0014\u0010@\u001a\u0008\u0012\u0004\u0012\u0002060AX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006b"
    }
    d2 = {
        "Lcom/sakukelly/music/player/PlayerController;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "mediaControllerFuture",
        "Lcom/google/common/util/concurrent/ListenableFuture;",
        "Landroidx/media3/session/MediaController;",
        "mediaController",
        "getMediaController",
        "()Landroidx/media3/session/MediaController;",
        "setMediaController",
        "(Landroidx/media3/session/MediaController;)V",
        "recommendationEngine",
        "Lcom/sakukelly/music/domain/recommendations/SmartRecommendationEngine;",
        "_currentSong",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/sakukelly/music/data/model/Song;",
        "currentSong",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getCurrentSong",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "_isPlaying",
        "",
        "isPlaying",
        "_progress",
        "",
        "progress",
        "getProgress",
        "_duration",
        "duration",
        "getDuration",
        "_queue",
        "",
        "queue",
        "getQueue",
        "_shuffleMode",
        "shuffleMode",
        "getShuffleMode",
        "_repeatMode",
        "",
        "repeatMode",
        "getRepeatMode",
        "_playbackSpeed",
        "",
        "playbackSpeed",
        "getPlaybackSpeed",
        "_sleepTimerSeconds",
        "sleepTimerSeconds",
        "getSleepTimerSeconds",
        "_techSpecs",
        "",
        "techSpecs",
        "getTechSpecs",
        "sleepTimerJob",
        "Lkotlinx/coroutines/Job;",
        "crossfadeEnabled",
        "getCrossfadeEnabled",
        "()Z",
        "setCrossfadeEnabled",
        "(Z)V",
        "sessionPlayedPaths",
        "Ljava/util/HashSet;",
        "setupController",
        "",
        "toMediaItem",
        "Landroidx/media3/common/MediaItem;",
        "onTrackEnded",
        "updateTechSpecs",
        "path",
        "play",
        "song",
        "updateSongFavorite",
        "isFavorite",
        "playQueue",
        "songs",
        "startIndex",
        "addToQueue",
        "removeFromQueue",
        "index",
        "pause",
        "resume",
        "seekTo",
        "positionMs",
        "jump",
        "seconds",
        "skipNext",
        "skipPrev",
        "toggleShuffle",
        "cycleRepeatMode",
        "setPlaybackSpeed",
        "speed",
        "setSleepTimer",
        "minutes",
        "Companion",
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
.field public static final $stable:I

.field public static final Companion:Lcom/sakukelly/music/player/PlayerController$Companion;

.field private static volatile instance:Lcom/sakukelly/music/player/PlayerController;


# instance fields
.field private final _currentSong:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/sakukelly/music/data/model/Song;",
            ">;"
        }
    .end annotation
.end field

.field private final _duration:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final _isPlaying:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final _playbackSpeed:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final _progress:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final _queue:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/util/List<",
            "Lcom/sakukelly/music/data/model/Song;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _repeatMode:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final _shuffleMode:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final _sleepTimerSeconds:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final _techSpecs:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private crossfadeEnabled:Z

.field private final currentSong:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/sakukelly/music/data/model/Song;",
            ">;"
        }
    .end annotation
.end field

.field private final duration:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final isPlaying:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mediaController:Landroidx/media3/session/MediaController;

.field private mediaControllerFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/MediaController;",
            ">;"
        }
    .end annotation
.end field

.field private final playbackSpeed:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final progress:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final queue:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lcom/sakukelly/music/data/model/Song;",
            ">;>;"
        }
    .end annotation
.end field

.field private final recommendationEngine:Lcom/sakukelly/music/domain/recommendations/SmartRecommendationEngine;

.field private final repeatMode:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private final sessionPlayedPaths:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final shuffleMode:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private sleepTimerJob:Lkotlinx/coroutines/Job;

.field private final sleepTimerSeconds:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final techSpecs:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$54zV-SKJ4mW4eVnoLFRuKp7K6Yo(Lcom/sakukelly/music/player/PlayerController;)V
    .locals 0

    invoke-static {p0}, Lcom/sakukelly/music/player/PlayerController;->_init_$lambda$0(Lcom/sakukelly/music/player/PlayerController;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sakukelly/music/player/PlayerController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sakukelly/music/player/PlayerController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sakukelly/music/player/PlayerController;->Companion:Lcom/sakukelly/music/player/PlayerController$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sakukelly/music/player/PlayerController;->$stable:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sakukelly/music/player/PlayerController;->context:Landroid/content/Context;

    .line 24
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    iput-object v1, p0, Lcom/sakukelly/music/player/PlayerController;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 28
    new-instance v0, Lcom/sakukelly/music/domain/recommendations/SmartRecommendationEngine;

    invoke-direct {v0}, Lcom/sakukelly/music/domain/recommendations/SmartRecommendationEngine;-><init>()V

    iput-object v0, p0, Lcom/sakukelly/music/player/PlayerController;->recommendationEngine:Lcom/sakukelly/music/domain/recommendations/SmartRecommendationEngine;

    const/4 v0, 0x0

    .line 30
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, p0, Lcom/sakukelly/music/player/PlayerController;->_currentSong:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 31
    invoke-static {v2}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    iput-object v2, p0, Lcom/sakukelly/music/player/PlayerController;->currentSong:Lkotlinx/coroutines/flow/StateFlow;

    const/4 v2, 0x0

    .line 48
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 33
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, p0, Lcom/sakukelly/music/player/PlayerController;->_isPlaying:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 34
    invoke-static {v4}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v4

    iput-object v4, p0, Lcom/sakukelly/music/player/PlayerController;->isPlaying:Lkotlinx/coroutines/flow/StateFlow;

    const-wide/16 v4, 0x0

    .line 36
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v5

    iput-object v5, p0, Lcom/sakukelly/music/player/PlayerController;->_progress:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 37
    invoke-static {v5}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v5

    iput-object v5, p0, Lcom/sakukelly/music/player/PlayerController;->progress:Lkotlinx/coroutines/flow/StateFlow;

    .line 39
    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, p0, Lcom/sakukelly/music/player/PlayerController;->_duration:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 40
    invoke-static {v4}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v4

    iput-object v4, p0, Lcom/sakukelly/music/player/PlayerController;->duration:Lkotlinx/coroutines/flow/StateFlow;

    .line 42
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, p0, Lcom/sakukelly/music/player/PlayerController;->_queue:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 43
    invoke-static {v4}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v4

    iput-object v4, p0, Lcom/sakukelly/music/player/PlayerController;->queue:Lkotlinx/coroutines/flow/StateFlow;

    .line 45
    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, p0, Lcom/sakukelly/music/player/PlayerController;->_shuffleMode:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 46
    invoke-static {v2}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    iput-object v2, p0, Lcom/sakukelly/music/player/PlayerController;->shuffleMode:Lkotlinx/coroutines/flow/StateFlow;

    .line 48
    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, p0, Lcom/sakukelly/music/player/PlayerController;->_repeatMode:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 49
    invoke-static {v2}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    iput-object v2, p0, Lcom/sakukelly/music/player/PlayerController;->repeatMode:Lkotlinx/coroutines/flow/StateFlow;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 51
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, p0, Lcom/sakukelly/music/player/PlayerController;->_playbackSpeed:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 52
    invoke-static {v2}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    iput-object v2, p0, Lcom/sakukelly/music/player/PlayerController;->playbackSpeed:Lkotlinx/coroutines/flow/StateFlow;

    .line 54
    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, p0, Lcom/sakukelly/music/player/PlayerController;->_sleepTimerSeconds:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 55
    invoke-static {v2}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    iput-object v2, p0, Lcom/sakukelly/music/player/PlayerController;->sleepTimerSeconds:Lkotlinx/coroutines/flow/StateFlow;

    .line 57
    const-string v2, "44.1kHz \u2022 16-bit \u2022 Stereo"

    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, p0, Lcom/sakukelly/music/player/PlayerController;->_techSpecs:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 58
    invoke-static {v2}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    iput-object v2, p0, Lcom/sakukelly/music/player/PlayerController;->techSpecs:Lkotlinx/coroutines/flow/StateFlow;

    const/4 v2, 0x1

    .line 61
    iput-boolean v2, p0, Lcom/sakukelly/music/player/PlayerController;->crossfadeEnabled:Z

    .line 62
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/sakukelly/music/player/PlayerController;->sessionPlayedPaths:Ljava/util/HashSet;

    .line 65
    new-instance v2, Landroidx/media3/session/SessionToken;

    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/sakukelly/music/player/PlaybackService;

    invoke-direct {v3, p1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v2, p1, v3}, Landroidx/media3/session/SessionToken;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 66
    new-instance v3, Landroidx/media3/session/MediaController$Builder;

    invoke-direct {v3, p1, v2}, Landroidx/media3/session/MediaController$Builder;-><init>(Landroid/content/Context;Landroidx/media3/session/SessionToken;)V

    invoke-virtual {v3}, Landroidx/media3/session/MediaController$Builder;->buildAsync()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/sakukelly/music/player/PlayerController;->mediaControllerFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 67
    new-instance v2, Lcom/sakukelly/music/player/PlayerController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/sakukelly/music/player/PlayerController$$ExternalSyntheticLambda0;-><init>(Lcom/sakukelly/music/player/PlayerController;)V

    .line 74
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 67
    invoke-interface {p1, v2, v3}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 77
    new-instance p1, Lcom/sakukelly/music/player/PlayerController$2;

    invoke-direct {p1, p0, v0}, Lcom/sakukelly/music/player/PlayerController$2;-><init>(Lcom/sakukelly/music/player/PlayerController;Lkotlin/coroutines/Continuation;)V

    move-object v4, p1

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sakukelly/music/player/PlayerController;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private static final _init_$lambda$0(Lcom/sakukelly/music/player/PlayerController;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/sakukelly/music/player/PlayerController;->mediaControllerFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaController;

    iput-object v0, p0, Lcom/sakukelly/music/player/PlayerController;->mediaController:Landroidx/media3/session/MediaController;

    .line 70
    invoke-direct {p0}, Lcom/sakukelly/music/player/PlayerController;->setupController()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 72
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/sakukelly/music/player/PlayerController;)Landroid/content/Context;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/sakukelly/music/player/PlayerController;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getInstance$cp()Lcom/sakukelly/music/player/PlayerController;
    .locals 1

    .line 22
    sget-object v0, Lcom/sakukelly/music/player/PlayerController;->instance:Lcom/sakukelly/music/player/PlayerController;

    return-object v0
.end method

.method public static final synthetic access$getRecommendationEngine$p(Lcom/sakukelly/music/player/PlayerController;)Lcom/sakukelly/music/domain/recommendations/SmartRecommendationEngine;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/sakukelly/music/player/PlayerController;->recommendationEngine:Lcom/sakukelly/music/domain/recommendations/SmartRecommendationEngine;

    return-object p0
.end method

.method public static final synthetic access$getScope$p(Lcom/sakukelly/music/player/PlayerController;)Lkotlinx/coroutines/CoroutineScope;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/sakukelly/music/player/PlayerController;->scope:Lkotlinx/coroutines/CoroutineScope;

    return-object p0
.end method

.method public static final synthetic access$getSessionPlayedPaths$p(Lcom/sakukelly/music/player/PlayerController;)Ljava/util/HashSet;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/sakukelly/music/player/PlayerController;->sessionPlayedPaths:Ljava/util/HashSet;

    return-object p0
.end method

.method public static final synthetic access$get_currentSong$p(Lcom/sakukelly/music/player/PlayerController;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/sakukelly/music/player/PlayerController;->_currentSong:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method public static final synthetic access$get_duration$p(Lcom/sakukelly/music/player/PlayerController;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/sakukelly/music/player/PlayerController;->_duration:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method public static final synthetic access$get_isPlaying$p(Lcom/sakukelly/music/player/PlayerController;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/sakukelly/music/player/PlayerController;->_isPlaying:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method public static final synthetic access$get_progress$p(Lcom/sakukelly/music/player/PlayerController;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/sakukelly/music/player/PlayerController;->_progress:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method public static final synthetic access$get_queue$p(Lcom/sakukelly/music/player/PlayerController;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/sakukelly/music/player/PlayerController;->_queue:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method public static final synthetic access$get_sleepTimerSeconds$p(Lcom/sakukelly/music/player/PlayerController;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/sakukelly/music/player/PlayerController;->_sleepTimerSeconds:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method public static final synthetic access$get_techSpecs$p(Lcom/sakukelly/music/player/PlayerController;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/sakukelly/music/player/PlayerController;->_techSpecs:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method public static final synthetic access$onTrackEnded(Lcom/sakukelly/music/player/PlayerController;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/sakukelly/music/player/PlayerController;->onTrackEnded()V

    return-void
.end method

.method public static final synthetic access$setInstance$cp(Lcom/sakukelly/music/player/PlayerController;)V
    .locals 0

    .line 22
    sput-object p0, Lcom/sakukelly/music/player/PlayerController;->instance:Lcom/sakukelly/music/player/PlayerController;

    return-void
.end method

.method public static final synthetic access$updateTechSpecs(Lcom/sakukelly/music/player/PlayerController;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/sakukelly/music/player/PlayerController;->updateTechSpecs(Ljava/lang/String;)V

    return-void
.end method

.method private final onTrackEnded()V
    .locals 10

    .line 158
    iget-object v0, p0, Lcom/sakukelly/music/player/PlayerController;->_currentSong:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sakukelly/music/data/model/Song;

    if-nez v0, :cond_0

    return-void

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/sakukelly/music/player/PlayerController;->_queue:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 161
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 390
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 391
    check-cast v4, Lcom/sakukelly/music/data/model/Song;

    .line 162
    invoke-virtual {v4}, Lcom/sakukelly/music/data/model/Song;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sakukelly/music/data/model/Song;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    :goto_1
    if-ltz v3, :cond_3

    .line 163
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_loop_folder

    add-int/lit8 v3, v3, 0x1

    .line 164
    invoke-virtual {p0, v1, v3}, Lcom/sakukelly/music/player/PlayerController;->playQueue(Ljava/util/List;I)V

    return-void

    :cond_loop_folder
    # Continuous folder playback: when last song finishes, loop back to song 0 of the same list
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/sakukelly/music/player/PlayerController;->playQueue(Ljava/util/List;I)V

    return-void

    .line 170
    :cond_3
    iget-object v4, p0, Lcom/sakukelly/music/player/PlayerController;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/sakukelly/music/player/PlayerController$onTrackEnded$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/sakukelly/music/player/PlayerController$onTrackEnded$1;-><init>(Lcom/sakukelly/music/player/PlayerController;Lcom/sakukelly/music/data/model/Song;Lkotlin/coroutines/Continuation;)V

    move-object v7, v1

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static synthetic playQueue$default(Lcom/sakukelly/music/player/PlayerController;Ljava/util/List;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 244
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sakukelly/music/player/PlayerController;->playQueue(Ljava/util/List;I)V

    return-void
.end method

.method private final setupController()V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/sakukelly/music/player/PlayerController;->mediaController:Landroidx/media3/session/MediaController;

    if-nez v0, :cond_0

    return-void

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/sakukelly/music/player/PlayerController;->_shuffleMode:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-virtual {v0}, Landroidx/media3/session/MediaController;->getShuffleModeEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 93
    iget-object v1, p0, Lcom/sakukelly/music/player/PlayerController;->_repeatMode:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-virtual {v0}, Landroidx/media3/session/MediaController;->getRepeatMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 95
    new-instance v1, Lcom/sakukelly/music/player/PlayerController$setupController$1;

    invoke-direct {v1, p0, v0}, Lcom/sakukelly/music/player/PlayerController$setupController$1;-><init>(Lcom/sakukelly/music/player/PlayerController;Landroidx/media3/session/MediaController;)V

    check-cast v1, Landroidx/media3/common/Player$Listener;

    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaController;->addListener(Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method private final toMediaItem(Lcom/sakukelly/music/data/model/Song;)Landroidx/media3/common/MediaItem;
    .locals 4

    .line 145
    new-instance v0, Landroidx/media3/common/MediaMetadata$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaMetadata$Builder;-><init>()V

    .line 146
    invoke-virtual {p1}, Lcom/sakukelly/music/data/model/Song;->getTitle()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaMetadata$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v0

    .line 147
    invoke-virtual {p1}, Lcom/sakukelly/music/data/model/Song;->getArtist()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaMetadata$Builder;->setArtist(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v0

    .line 148
    invoke-virtual {p1}, Lcom/sakukelly/music/data/model/Song;->getAlbum()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaMetadata$Builder;->setAlbumTitle(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Landroidx/media3/common/MediaMetadata$Builder;->build()Landroidx/media3/common/MediaMetadata;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    new-instance v2, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v2}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    .line 151
    invoke-virtual {p1}, Lcom/sakukelly/music/data/model/Song;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/media3/common/MediaItem$Builder;->setMediaId(Ljava/lang/String;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v2

    .line 152
    invoke-virtual {p1}, Lcom/sakukelly/music/data/model/Song;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/media3/common/MediaItem$Builder;->setUri(Ljava/lang/String;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object p1

    .line 153
    invoke-virtual {p1, v0}, Landroidx/media3/common/MediaItem$Builder;->setMediaMetadata(Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object p1

    .line 154
    invoke-virtual {p1}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final updateTechSpecs(Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x2e

    .line 191
    const-string v1, "mp3"

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->substringAfterLast(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "toUpperCase(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-float p1, v1

    const/high16 v1, 0x49800000    # 1048576.0f

    div-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "%.1f MB"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "format(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 194
    :goto_0
    iget-object v1, p0, Lcom/sakukelly/music/player/PlayerController;->_techSpecs:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "OPUS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 198
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "OPUS \u2022 VBR 160kbps \u2022 48kHz \u2022 "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    .line 194
    :sswitch_1
    const-string v2, "FLAC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 195
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "FLAC \u2022 24-bit / 96kHz \u2022 Hi-Res \u2022 "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 194
    :sswitch_2
    const-string v2, "WAV"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 196
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "WAV \u2022 PCM 1411kbps \u2022 44.1kHz \u2022 "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 194
    :sswitch_3
    const-string v2, "OGG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    .line 199
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "OGG VORBIS \u2022 320kbps \u2022 44.1kHz \u2022 "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 194
    :sswitch_4
    const-string v2, "M4A"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :sswitch_5
    const-string v2, "AAC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    .line 197
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "AAC \u2022 320kbps \u2022 48kHz \u2022 Stereo \u2022 "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 200
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "MP3 \u2022 320kbps CBR \u2022 44.1kHz \u2022 Stereo \u2022 "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 194
    :goto_2
    invoke-interface {v1, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xfc23 -> :sswitch_5
        0x1279a -> :sswitch_4
        0x1316f -> :sswitch_3
        0x14ecc -> :sswitch_2
        0x20f768 -> :sswitch_1
        0x25203f -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final addToQueue(Lcom/sakukelly/music/data/model/Song;)V
    .locals 2

    const-string v0, "song"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/sakukelly/music/player/PlayerController;->_queue:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 265
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object v1, p0, Lcom/sakukelly/music/player/PlayerController;->_queue:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 267
    iget-object v0, p0, Lcom/sakukelly/music/player/PlayerController;->mediaController:Landroidx/media3/session/MediaController;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sakukelly/music/player/PlayerController;->toMediaItem(Lcom/sakukelly/music/data/model/Song;)Landroidx/media3/common/MediaItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media3/session/MediaController;->addMediaItem(Landroidx/media3/common/MediaItem;)V

    :cond_0
    return-void
.end method

.method public final showToast(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_show_toast_start

    return-void

    :cond_show_toast_start
    :try_start_0
    iget-object v0, p0, Lcom/sakukelly/music/player/PlayerController;->context:Landroid/content/Context;

    if-eqz v0, :cond_show_toast_end

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_show_toast

    :catch_show_toast
    :cond_show_toast_end
    return-void
.end method

.method public final cycleRepeatMode()V
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/sakukelly/music/player/PlayerController;->_repeatMode:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 352
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sakukelly/music/player/PlayerController;->mediaController:Landroidx/media3/session/MediaController;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaController;->setRepeatMode(I)V

    .line 353
    :cond_2
    const/4 v0, 0x2

    if-ne v1, v0, :cond_repeat_one

    const-string v0, "\ud83d\udd01 Repetir: Toda la lista"

    goto :goto_repeat_toast

    :cond_repeat_one
    const/4 v0, 0x1

    if-ne v1, v0, :cond_repeat_off

    const-string v0, "\ud83d\udd02 Repetir: Esta canci\u00f3n en bucle"

    goto :goto_repeat_toast

    :cond_repeat_off
    const-string v0, "\u27a1\ufe0f Modo continuo: Repetici\u00f3n desactivada"

    :goto_repeat_toast
    invoke-virtual {p0, v0}, Lcom/sakukelly/music/player/PlayerController;->showToast(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sakukelly/music/player/PlayerController;->_repeatMode:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final getCrossfadeEnabled()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/sakukelly/music/player/PlayerController;->crossfadeEnabled:Z

    return v0
.end method

.method public final getCurrentSong()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/sakukelly/music/data/model/Song;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/sakukelly/music/player/PlayerController;->currentSong:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getDuration()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/sakukelly/music/player/PlayerController;->duration:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getMediaController()Landroidx/media3/session/MediaController;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/sakukelly/music/player/PlayerController;->mediaController:Landroidx/media3/session/MediaController;

    return-object v0
.end method

.method public final getPlaybackSpeed()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/sakukelly/music/player/PlayerController;->playbackSpeed:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getProgress()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/sakukelly/music/player/PlayerController;->progress:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getQueue()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lcom/sakukelly/music/data/model/Song;",
            ">;>;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/sakukelly/music/player/PlayerController;->queue:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getRepeatMode()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/sakukelly/music/player/PlayerController;->repeatMode:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getShuffleMode()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/sakukelly/music/player/PlayerController;->shuffleMode:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getSleepTimerSeconds()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/sakukelly/music/player/PlayerController;->sleepTimerSeconds:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getTechSpecs()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/sakukelly/music/player/PlayerController;->techSpecs:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final isPlaying()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/sakukelly/music/player/PlayerController;->isPlaying:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final jump(I)V
    .locals 8

    .line 295
    iget-object v0, p0, Lcom/sakukelly/music/player/PlayerController;->_progress:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    int-to-long v2, p1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long v4, v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v4, v2

    if-gez v0, :cond_jump_pos

    move-wide v4, v2

    :cond_jump_pos
    iget-object v0, p0, Lcom/sakukelly/music/player/PlayerController;->_duration:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    cmp-long v6, v0, v2

    if-gtz v6, :cond_check_max

    iget-object v6, p0, Lcom/sakukelly/music/player/PlayerController;->_currentSong:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sakukelly/music/data/model/Song;

    if-eqz v6, :cond_check_max

    invoke-virtual {v6}, Lcom/sakukelly/music/data/model/Song;->getDuration()J

    move-result-wide v0

    :cond_check_max
    cmp-long v6, v0, v2

    if-lez v6, :cond_do_seek

    cmp-long v2, v4, v0

    if-lez v2, :cond_do_seek

    move-wide v4, v0

    :cond_do_seek
    invoke-virtual {p0, v4, v5}, Lcom/sakukelly/music/player/PlayerController;->seekTo(J)V

    if-lez p1, :cond_jump_rewind

    const-string v0, "\u23e9 Adelantar +10s"

    invoke-virtual {p0, v0}, Lcom/sakukelly/music/player/PlayerController;->showToast(Ljava/lang/String;)V

    goto :goto_jump_end

    :cond_jump_rewind
    if-gez p1, :cond_jump_end

    const-string v0, "\u23ea Retroceder -10s"

    invoke-virtual {p0, v0}, Lcom/sakukelly/music/player/PlayerController;->showToast(Ljava/lang/String;)V

    :goto_jump_end
    :cond_jump_end
    return-void
.end method

.method public final pause()V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/sakukelly/music/player/PlayerController;->mediaController:Landroidx/media3/session/MediaController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media3/session/MediaController;->pause()V

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/sakukelly/music/player/PlayerController;->_isPlaying:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final play(Lcom/sakukelly/music/data/model/Song;)V
    .locals 7

    const-string v0, "song"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/sakukelly/music/player/PlayerController;->_queue:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 397
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 398
    check-cast v3, Lcom/sakukelly/music/data/model/Song;

    .line 206
    invoke-virtual {v3}, Lcom/sakukelly/music/data/model/Song;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sakukelly/music/data/model/Song;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_1
    if-eq v2, v4, :cond_4

    .line 207
    iget-object v1, p0, Lcom/sakukelly/music/player/PlayerController;->mediaController:Landroidx/media3/session/MediaController;

    if-eqz v1, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/media3/session/MediaController;->getMediaItemCount()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v1, v0, :cond_4

    .line 208
    iget-object v0, p0, Lcom/sakukelly/music/player/PlayerController;->mediaController:Landroidx/media3/session/MediaController;

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2, v3, v4}, Landroidx/media3/session/MediaController;->seekTo(IJ)V

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/sakukelly/music/player/PlayerController;->mediaController:Landroidx/media3/session/MediaController;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/media3/session/MediaController;->play()V

    .line 210
    :cond_3
    iget-object v0, p0, Lcom/sakukelly/music/player/PlayerController;->_currentSong:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 211
    iget-object v0, p0, Lcom/sakukelly/music/player/PlayerController;->_isPlaying:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 212
    iget-object v0, p0, Lcom/sakukelly/music/player/PlayerController;->_progress:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 213
    invoke-virtual {p1}, Lcom/sakukelly/music/data/model/Song;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sakukelly/music/player/PlayerController;->updateTechSpecs(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/sakukelly/music/player/PlayerController;->sessionPlayedPaths:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/sakukelly/music/data/model/Song;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    .line 219
    :cond_4
    iget-object v1, p0, Lcom/sakukelly/music/player/PlayerController;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/sakukelly/music/player/PlayerController$play$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, v3}, Lcom/sakukelly/music/player/PlayerController$play$1;-><init>(Lcom/sakukelly/music/player/PlayerController;Lcom/sakukelly/music/data/model/Song;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final playQueue(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sakukelly/music/data/model/Song;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "songs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/sakukelly/music/player/PlayerController;->_queue:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 247
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {p2, v2, v0}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p2

    .line 248
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sakukelly/music/data/model/Song;

    .line 250
    check-cast p1, Ljava/lang/Iterable;

    .line 407
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 408
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 409
    check-cast v3, Lcom/sakukelly/music/data/model/Song;

    .line 250
    invoke-direct {p0, v3}, Lcom/sakukelly/music/player/PlayerController;->toMediaItem(Lcom/sakukelly/music/data/model/Song;)Landroidx/media3/common/MediaItem;

    move-result-object v3

    .line 409
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 410
    :cond_1
    check-cast v2, Ljava/util/List;

    .line 251
    iget-object p1, p0, Lcom/sakukelly/music/player/PlayerController;->mediaController:Landroidx/media3/session/MediaController;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/media3/session/MediaController;->stop()V

    .line 252
    :cond_2
    iget-object p1, p0, Lcom/sakukelly/music/player/PlayerController;->mediaController:Landroidx/media3/session/MediaController;

    const-wide/16 v3, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1, v2, p2, v3, v4}, Landroidx/media3/session/MediaController;->setMediaItems(Ljava/util/List;IJ)V

    .line 253
    :cond_3
    iget-object p1, p0, Lcom/sakukelly/music/player/PlayerController;->mediaController:Landroidx/media3/session/MediaController;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroidx/media3/session/MediaController;->prepare()V

    .line 254
    :cond_4
    iget-object p1, p0, Lcom/sakukelly/music/player/PlayerController;->mediaController:Landroidx/media3/session/MediaController;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroidx/media3/session/MediaController;->play()V

    .line 256
    :cond_5
    iget-object p1, p0, Lcom/sakukelly/music/player/PlayerController;->_currentSong:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 257
    iget-object p1, p0, Lcom/sakukelly/music/player/PlayerController;->_isPlaying:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 258
    iget-object p1, p0, Lcom/sakukelly/music/player/PlayerController;->_progress:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 259
    invoke-virtual {v0}, Lcom/sakukelly/music/data/model/Song;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sakukelly/music/player/PlayerController;->updateTechSpecs(Ljava/lang/String;)V

    .line 260
    iget-object p1, p0, Lcom/sakukelly/music/player/PlayerController;->sessionPlayedPaths:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/sakukelly/music/data/model/Song;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeFromQueue(I)V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/sakukelly/music/player/PlayerController;->_queue:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    if-ltz p1, :cond_0

    .line 272
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 273
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 274
    iget-object v1, p0, Lcom/sakukelly/music/player/PlayerController;->_queue:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 275
    iget-object v0, p0, Lcom/sakukelly/music/player/PlayerController;->mediaController:Landroidx/media3/session/MediaController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/media3/session/MediaController;->removeMediaItem(I)V

    :cond_0
    return-void
.end method

.method public final resume()V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/sakukelly/music/player/PlayerController;->mediaController:Landroidx/media3/session/MediaController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media3/session/MediaController;->play()V

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/sakukelly/music/player/PlayerController;->_isPlaying:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final seekTo(J)V
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/sakukelly/music/player/PlayerController;->mediaController:Landroidx/media3/session/MediaController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroidx/media3/session/MediaController;->seekTo(J)V

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/sakukelly/music/player/PlayerController;->_progress:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setCrossfadeEnabled(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/sakukelly/music/player/PlayerController;->crossfadeEnabled:Z

    return-void
.end method

.method public final setMediaController(Landroidx/media3/session/MediaController;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/sakukelly/music/player/PlayerController;->mediaController:Landroidx/media3/session/MediaController;

    return-void
.end method

.method public final setPlaybackSpeed(F)V
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/sakukelly/music/player/PlayerController;->_playbackSpeed:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 358
    iget-object v0, p0, Lcom/sakukelly/music/player/PlayerController;->mediaController:Landroidx/media3/session/MediaController;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/media3/common/PlaybackParameters;

    invoke-direct {v1, p1}, Landroidx/media3/common/PlaybackParameters;-><init>(F)V

    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaController;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    :cond_0
    return-void
.end method

.method public final setSleepTimer(I)V
    .locals 8

    .line 362
    iget-object v0, p0, Lcom/sakukelly/music/player/PlayerController;->sleepTimerJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    if-gtz p1, :cond_1

    .line 364
    iget-object p1, p0, Lcom/sakukelly/music/player/PlayerController;->_sleepTimerSeconds:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/sakukelly/music/player/PlayerController;->_sleepTimerSeconds:Lkotlinx/coroutines/flow/MutableStateFlow;

    mul-int/lit8 p1, p1, 0x3c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 368
    iget-object v2, p0, Lcom/sakukelly/music/player/PlayerController;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/sakukelly/music/player/PlayerController$setSleepTimer$1;

    invoke-direct {p1, p0, v1}, Lcom/sakukelly/music/player/PlayerController$setSleepTimer$1;-><init>(Lcom/sakukelly/music/player/PlayerController;Lkotlin/coroutines/Continuation;)V

    move-object v5, p1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/sakukelly/music/player/PlayerController;->sleepTimerJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final skipNext()V
    .locals 7

    iget-object v0, p0, Lcom/sakukelly/music/player/PlayerController;->_queue:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_empty_next_queue

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_empty_next_queue

    iget-object v1, p0, Lcom/sakukelly/music/player/PlayerController;->_currentSong:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sakukelly/music/data/model/Song;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, -0x1

    if-eqz v1, :cond_find_next_end

    invoke-virtual {v1}, Lcom/sakukelly/music/data/model/Song;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    :goto_find_next
    if-ge v4, v2, :cond_find_next_end

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sakukelly/music/data/model/Song;

    invoke-virtual {v5}, Lcom/sakukelly/music/data/model/Song;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_find_next_inc

    move v3, v4

    goto :goto_find_next_end

    :cond_find_next_inc
    add-int/lit8 v4, v4, 0x1

    goto :goto_find_next

    :cond_find_next_end
    :goto_find_next_end
    iget-object v1, p0, Lcom/sakukelly/music/player/PlayerController;->_shuffleMode:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_seq_next

    const/4 v1, 0x1

    if-le v2, v1, :cond_seq_next

    sget-object v1, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {v1, v2}, Lkotlin/random/Random$Default;->nextInt(I)I

    move-result v1

    if-ne v1, v3, :cond_use_next_rand

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v1, v2

    :cond_use_next_rand
    move v3, v1

    goto :goto_do_next_play

    :cond_seq_next
    add-int/lit8 v3, v3, 0x1

    rem-int/2addr v3, v2

    :goto_do_next_play
    if-gez v3, :cond_next_idx_ok

    const/4 v3, 0x0

    :cond_next_idx_ok
    invoke-virtual {p0, v0, v3}, Lcom/sakukelly/music/player/PlayerController;->playQueue(Ljava/util/List;I)V

    const-string v0, "\u23ed Siguiente canci\u00f3n"

    invoke-virtual {p0, v0}, Lcom/sakukelly/music/player/PlayerController;->showToast(Ljava/lang/String;)V

    return-void

    :cond_empty_next_queue
    iget-object v0, p0, Lcom/sakukelly/music/player/PlayerController;->mediaController:Landroidx/media3/session/MediaController;

    if-eqz v0, :cond_skip_next_done

    invoke-virtual {v0}, Landroidx/media3/session/MediaController;->hasNextMediaItem()Z

    move-result v1

    if-eqz v1, :cond_skip_next_done

    invoke-virtual {v0}, Landroidx/media3/session/MediaController;->seekToNextMediaItem()V

    invoke-virtual {v0}, Landroidx/media3/session/MediaController;->play()V

    const-string v0, "\u23ed Siguiente canci\u00f3n"

    invoke-virtual {p0, v0}, Lcom/sakukelly/music/player/PlayerController;->showToast(Ljava/lang/String;)V

    :cond_skip_next_done
    return-void
.end method

.method public final skipPrev()V
    .locals 7

    iget-object v0, p0, Lcom/sakukelly/music/player/PlayerController;->_queue:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_prev_empty

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_prev_empty

    iget-object v1, p0, Lcom/sakukelly/music/player/PlayerController;->_currentSong:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sakukelly/music/data/model/Song;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, -0x1

    if-eqz v1, :cond_prev_find_end

    invoke-virtual {v1}, Lcom/sakukelly/music/data/model/Song;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    :goto_prev_find
    if-ge v4, v2, :cond_prev_find_end

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sakukelly/music/data/model/Song;

    invoke-virtual {v5}, Lcom/sakukelly/music/data/model/Song;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_prev_find_next

    move v3, v4

    goto :goto_prev_find_end

    :cond_prev_find_next
    add-int/lit8 v4, v4, 0x1

    goto :goto_prev_find

    :cond_prev_find_end
    :goto_prev_find_end
    if-lez v3, :cond_wrap_prev

    add-int/lit8 v3, v3, -0x1

    goto :goto_play_prev

    :cond_wrap_prev
    add-int/lit8 v3, v2, -0x1

    :goto_play_prev
    if-gez v3, :cond_prev_index_ok

    const/4 v3, 0x0

    :cond_prev_index_ok
    invoke-virtual {p0, v0, v3}, Lcom/sakukelly/music/player/PlayerController;->playQueue(Ljava/util/List;I)V

    const-string v0, "\u23ee Canci\u00f3n anterior"

    invoke-virtual {p0, v0}, Lcom/sakukelly/music/player/PlayerController;->showToast(Ljava/lang/String;)V

    return-void

    :cond_prev_empty
    iget-object v0, p0, Lcom/sakukelly/music/player/PlayerController;->mediaController:Landroidx/media3/session/MediaController;

    if-eqz v0, :cond_prev_done

    invoke-virtual {v0}, Landroidx/media3/session/MediaController;->hasPreviousMediaItem()Z

    move-result v1

    if-eqz v1, :cond_seek_zero

    invoke-virtual {v0}, Landroidx/media3/session/MediaController;->seekToPreviousMediaItem()V

    invoke-virtual {v0}, Landroidx/media3/session/MediaController;->play()V

    const-string v0, "\u23ee Canci\u00f3n anterior"

    invoke-virtual {p0, v0}, Lcom/sakukelly/music/player/PlayerController;->showToast(Ljava/lang/String;)V

    return-void

    :cond_seek_zero
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sakukelly/music/player/PlayerController;->seekTo(J)V

    :cond_prev_done
    return-void
.end method

.method public final toggleShuffle()V
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/sakukelly/music/player/PlayerController;->_shuffleMode:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 342
    iget-object v1, p0, Lcom/sakukelly/music/player/PlayerController;->mediaController:Landroidx/media3/session/MediaController;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroidx/media3/session/MediaController;->setShuffleModeEnabled(Z)V

    .line 343
    :cond_0
    if-eqz v0, :cond_shuffle_off

    const-string v1, "\ud83d\udd00 Modo aleatorio: Activado"

    goto :goto_shuffle_toast

    :cond_shuffle_off
    const-string v1, "\u27a1\ufe0f Modo continuo: Aleatorio desactivado"

    :goto_shuffle_toast
    invoke-virtual {p0, v1}, Lcom/sakukelly/music/player/PlayerController;->showToast(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sakukelly/music/player/PlayerController;->_shuffleMode:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final updateSongFavorite(Ljava/lang/String;Z)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "path"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    iget-object v2, v0, Lcom/sakukelly/music/player/PlayerController;->_currentSong:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/sakukelly/music/data/model/Song;

    if-eqz v3, :cond_0

    .line 236
    invoke-virtual {v3}, Lcom/sakukelly/music/data/model/Song;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    iget-object v2, v0, Lcom/sakukelly/music/player/PlayerController;->_currentSong:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/16 v17, 0xf7f

    const/16 v18, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v12, p2

    invoke-static/range {v3 .. v18}, Lcom/sakukelly/music/data/model/Song;->copy$default(Lcom/sakukelly/music/data/model/Song;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZILjava/lang/Float;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/sakukelly/music/data/model/Song;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 239
    :cond_0
    iget-object v2, v0, Lcom/sakukelly/music/player/PlayerController;->_queue:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 403
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .line 404
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 405
    move-object v6, v5

    check-cast v6, Lcom/sakukelly/music/data/model/Song;

    .line 240
    invoke-virtual {v6}, Lcom/sakukelly/music/data/model/Song;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v20, 0xf7f

    const/16 v21, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v15, p2

    invoke-static/range {v6 .. v21}, Lcom/sakukelly/music/data/model/Song;->copy$default(Lcom/sakukelly/music/data/model/Song;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZILjava/lang/Float;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/sakukelly/music/data/model/Song;

    move-result-object v6

    .line 405
    :cond_1
    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 406
    :cond_2
    check-cast v4, Ljava/util/List;

    .line 239
    invoke-interface {v2, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method
