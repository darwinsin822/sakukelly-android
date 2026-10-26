.class public final Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "LibraryViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLibraryViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LibraryViewModel.kt\ncom/sakukelly/music/ui/viewmodel/LibraryViewModel\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,134:1\n49#2:135\n51#2:139\n49#2:140\n51#2:144\n46#3:136\n51#3:138\n46#3:141\n51#3:143\n105#4:137\n105#4:142\n*S KotlinDebug\n*F\n+ 1 LibraryViewModel.kt\ncom/sakukelly/music/ui/viewmodel/LibraryViewModel\n*L\n38#1:135\n38#1:139\n42#1:140\n42#1:144\n38#1:136\n38#1:138\n42#1:141\n42#1:143\n38#1:137\n42#1:142\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0014\u0010.\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00142\u0006\u0010/\u001a\u00020\u0015J\u001a\u00100\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00142\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014J\u0006\u00102\u001a\u000203J\u000e\u00104\u001a\u0002032\u0006\u00105\u001a\u00020\u001bJ\u000e\u00106\u001a\u0002032\u0006\u00107\u001a\u00020\u0015J\u000e\u00108\u001a\u0002032\u0006\u00109\u001a\u00020\u001bJ\u000e\u0010:\u001a\u0002032\u0006\u00109\u001a\u00020\u001bR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0012\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u00140\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u001d\u0010\u0018\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u00140\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0017R\u001d\u0010\u001a\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001b0\u00140\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0017R\u001d\u0010\u001d\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001e0\u00140\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0017R\u001d\u0010 \u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u00140\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u0017R\u0014\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020$0#X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010%\u001a\u0008\u0012\u0004\u0012\u00020$0\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010\u0017R\u001a\u0010&\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u00140#X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\'\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u00140\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010\u0017R\u0014\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u001b0#X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010\u0017R\u001d\u0010,\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u00140\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010\u0017\u00a8\u0006;"
    }
    d2 = {
        "Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "application",
        "Landroid/app/Application;",
        "<init>",
        "(Landroid/app/Application;)V",
        "db",
        "Lcom/sakukelly/music/data/db/AppDatabase;",
        "songDao",
        "Lcom/sakukelly/music/data/db/SongDao;",
        "playlistDao",
        "Lcom/sakukelly/music/data/db/PlaylistDao;",
        "scanner",
        "Lcom/sakukelly/music/domain/scanner/MediaScanner;",
        "prefs",
        "Lcom/sakukelly/music/data/prefs/SettingsPrefs;",
        "recommendationEngine",
        "Lcom/sakukelly/music/domain/recommendations/SmartRecommendationEngine;",
        "songs",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "",
        "Lcom/sakukelly/music/data/model/Song;",
        "getSongs",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "favorites",
        "getFavorites",
        "playlists",
        "",
        "getPlaylists",
        "dailyMixes",
        "Lcom/sakukelly/music/domain/recommendations/DailyMix;",
        "getDailyMixes",
        "forgottenGems",
        "getForgottenGems",
        "_isScanning",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "",
        "isScanning",
        "_recentlyPlayed",
        "recentlyPlayed",
        "getRecentlyPlayed",
        "_searchQuery",
        "searchQuery",
        "getSearchQuery",
        "filteredSongs",
        "getFilteredSongs",
        "getSmartRadioForSong",
        "seedSong",
        "getSmartShuffle",
        "songList",
        "scanMusicFolders",
        "",
        "scanCustomFolder",
        "folderPath",
        "toggleFavorite",
        "song",
        "createPlaylist",
        "name",
        "deletePlaylist",
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
.field private final _isScanning:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final _recentlyPlayed:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/util/List<",
            "Lcom/sakukelly/music/data/model/Song;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _searchQuery:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final dailyMixes:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lcom/sakukelly/music/domain/recommendations/DailyMix;",
            ">;>;"
        }
    .end annotation
.end field

.field private final db:Lcom/sakukelly/music/data/db/AppDatabase;

.field private final favorites:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lcom/sakukelly/music/data/model/Song;",
            ">;>;"
        }
    .end annotation
.end field

.field private final filteredSongs:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lcom/sakukelly/music/data/model/Song;",
            ">;>;"
        }
    .end annotation
.end field

.field private final forgottenGems:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lcom/sakukelly/music/data/model/Song;",
            ">;>;"
        }
    .end annotation
.end field

.field private final isScanning:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final playlistDao:Lcom/sakukelly/music/data/db/PlaylistDao;

.field private final playlists:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final prefs:Lcom/sakukelly/music/data/prefs/SettingsPrefs;

.field private final recentlyPlayed:Lkotlinx/coroutines/flow/StateFlow;
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

.field private final scanner:Lcom/sakukelly/music/domain/scanner/MediaScanner;

.field private final searchQuery:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final songDao:Lcom/sakukelly/music/data/db/SongDao;

.field private final songs:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lcom/sakukelly/music/data/model/Song;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 11

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 22
    sget-object v0, Lcom/sakukelly/music/data/db/AppDatabase;->Companion:Lcom/sakukelly/music/data/db/AppDatabase$Companion;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {v0, p1}, Lcom/sakukelly/music/data/db/AppDatabase$Companion;->getDatabase(Landroid/content/Context;)Lcom/sakukelly/music/data/db/AppDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;->db:Lcom/sakukelly/music/data/db/AppDatabase;

    .line 23
    invoke-virtual {v0}, Lcom/sakukelly/music/data/db/AppDatabase;->songDao()Lcom/sakukelly/music/data/db/SongDao;

    move-result-object v1

    iput-object v1, p0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;->songDao:Lcom/sakukelly/music/data/db/SongDao;

    .line 24
    invoke-virtual {v0}, Lcom/sakukelly/music/data/db/AppDatabase;->playlistDao()Lcom/sakukelly/music/data/db/PlaylistDao;

    move-result-object v0

    iput-object v0, p0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;->playlistDao:Lcom/sakukelly/music/data/db/PlaylistDao;

    .line 25
    new-instance v2, Lcom/sakukelly/music/domain/scanner/MediaScanner;

    invoke-direct {v2}, Lcom/sakukelly/music/domain/scanner/MediaScanner;-><init>()V

    iput-object v2, p0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;->scanner:Lcom/sakukelly/music/domain/scanner/MediaScanner;

    .line 26
    new-instance v2, Lcom/sakukelly/music/data/prefs/SettingsPrefs;

    invoke-direct {v2, p1}, Lcom/sakukelly/music/data/prefs/SettingsPrefs;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;->prefs:Lcom/sakukelly/music/data/prefs/SettingsPrefs;

    .line 27
    new-instance p1, Lcom/sakukelly/music/domain/recommendations/SmartRecommendationEngine;

    invoke-direct {p1}, Lcom/sakukelly/music/domain/recommendations/SmartRecommendationEngine;-><init>()V

    iput-object p1, p0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;->recommendationEngine:Lcom/sakukelly/music/domain/recommendations/SmartRecommendationEngine;

    .line 29
    invoke-interface {v1}, Lcom/sakukelly/music/data/db/SongDao;->getAllSongs()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 30
    move-object v2, p0

    check-cast v2, Landroidx/lifecycle/ViewModel;

    invoke-static {v2}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    sget-object v4, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v9, 0x2

    const/4 v10, 0x0

    const-wide/16 v5, 0x1388

    const-wide/16 v7, 0x0

    invoke-static/range {v4 .. v10}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;JJILjava/lang/Object;)Lkotlinx/coroutines/flow/SharingStarted;

    move-result-object v4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-static {p1, v3, v4, v5}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;->songs:Lkotlinx/coroutines/flow/StateFlow;

    .line 32
    invoke-interface {v1}, Lcom/sakukelly/music/data/db/SongDao;->getFavorites()Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    .line 33
    invoke-static {v2}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    sget-object v4, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const-wide/16 v5, 0x1388

    invoke-static/range {v4 .. v10}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;JJILjava/lang/Object;)Lkotlinx/coroutines/flow/SharingStarted;

    move-result-object v4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-static {v1, v3, v4, v5}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    iput-object v1, p0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;->favorites:Lkotlinx/coroutines/flow/StateFlow;

    .line 35
    invoke-interface {v0}, Lcom/sakukelly/music/data/db/PlaylistDao;->getAll()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 36
    invoke-static {v2}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    sget-object v3, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v8, 0x2

    const/4 v9, 0x0

    const-wide/16 v4, 0x1388

    const-wide/16 v6, 0x0

    invoke-static/range {v3 .. v9}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;JJILjava/lang/Object;)Lkotlinx/coroutines/flow/SharingStarted;

    move-result-object v3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {v0, v1, v3, v4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;->playlists:Lkotlinx/coroutines/flow/StateFlow;

    .line 38
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    .line 137
    new-instance v1, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel$special$$inlined$map$1;

    invoke-direct {v1, v0, p0}, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;)V

    check-cast v1, Lkotlinx/coroutines/flow/Flow;

    .line 40
    invoke-static {v2}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    sget-object v3, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const-wide/16 v4, 0x1388

    invoke-static/range {v3 .. v9}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;JJILjava/lang/Object;)Lkotlinx/coroutines/flow/SharingStarted;

    move-result-object v3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {v1, v0, v3, v4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;->dailyMixes:Lkotlinx/coroutines/flow/StateFlow;

    .line 42
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    .line 142
    new-instance v1, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel$special$$inlined$map$2;

    invoke-direct {v1, v0, p0}, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;)V

    check-cast v1, Lkotlinx/coroutines/flow/Flow;

    .line 44
    invoke-static {v2}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    sget-object v3, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const-wide/16 v4, 0x1388

    invoke-static/range {v3 .. v9}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;JJILjava/lang/Object;)Lkotlinx/coroutines/flow/SharingStarted;

    move-result-object v3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {v1, v0, v3, v4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;->forgottenGems:Lkotlinx/coroutines/flow/StateFlow;

    const/4 v0, 0x0

    .line 46
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;->_isScanning:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 47
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;->isScanning:Lkotlinx/coroutines/flow/StateFlow;

    .line 49
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;->_recentlyPlayed:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 50
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;->recentlyPlayed:Lkotlinx/coroutines/flow/StateFlow;

    .line 52
    const-string v0, ""

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;->_searchQuery:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 53
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;->searchQuery:Lkotlinx/coroutines/flow/StateFlow;

    .line 55
    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    new-instance v1, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel$filteredSongs$1;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel$filteredSongs$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-static {p1, v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 62
    invoke-static {v2}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    sget-object v4, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v9, 0x2

    const-wide/16 v5, 0x1388

    const-wide/16 v7, 0x0

    invoke-static/range {v4 .. v10}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;JJILjava/lang/Object;)Lkotlinx/coroutines/flow/SharingStarted;

    move-result-object v1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {p1, v0, v1, v4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;->filteredSongs:Lkotlinx/coroutines/flow/StateFlow;

    .line 65
    invoke-static {v2}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lkotlin/coroutines/CoroutineContext;

    new-instance p1, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel$1;

    invoke-direct {p1, p0, v3}, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel$1;-><init>(Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v7, p1

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic access$getPlaylistDao$p(Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;)Lcom/sakukelly/music/data/db/PlaylistDao;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;->playlistDao:Lcom/sakukelly/music/data/db/PlaylistDao;

    return-object p0
.end method

.method public static final synthetic access$getPrefs$p(Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;)Lcom/sakukelly/music/data/prefs/SettingsPrefs;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;->prefs:Lcom/sakukelly/music/data/prefs/SettingsPrefs;

    return-object p0
.end method

.method public static final synthetic access$getRecommendationEngine$p(Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;)Lcom/sakukelly/music/domain/recommendations/SmartRecommendationEngine;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;->recommendationEngine:Lcom/sakukelly/music/domain/recommendations/SmartRecommendationEngine;

    return-object p0
.end method

.method public static final synthetic access$getScanner$p(Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;)Lcom/sakukelly/music/domain/scanner/MediaScanner;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;->scanner:Lcom/sakukelly/music/domain/scanner/MediaScanner;

    return-object p0
.end method

.method public static final synthetic access$getSongDao$p(Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;)Lcom/sakukelly/music/data/db/SongDao;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;->songDao:Lcom/sakukelly/music/data/db/SongDao;

    return-object p0
.end method

.method public static final synthetic access$get_isScanning$p(Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;->_isScanning:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method


# virtual methods
.method public final createPlaylist(Ljava/lang/String;)V
    .locals 7

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel$createPlaylist$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, v3}, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel$createPlaylist$1;-><init>(Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final deletePlaylist(Ljava/lang/String;)V
    .locals 7

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel$deletePlaylist$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, v3}, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel$deletePlaylist$1;-><init>(Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final getDailyMixes()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lcom/sakukelly/music/domain/recommendations/DailyMix;",
            ">;>;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;->dailyMixes:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getFavorites()Lkotlinx/coroutines/flow/StateFlow;
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

    .line 32
    iget-object v0, p0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;->favorites:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getFilteredSongs()Lkotlinx/coroutines/flow/StateFlow;
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

    .line 55
    iget-object v0, p0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;->filteredSongs:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getForgottenGems()Lkotlinx/coroutines/flow/StateFlow;
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

    .line 42
    iget-object v0, p0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;->forgottenGems:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getPlaylists()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;->playlists:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getRecentlyPlayed()Lkotlinx/coroutines/flow/StateFlow;
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

    .line 50
    iget-object v0, p0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;->recentlyPlayed:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getSearchQuery()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;->searchQuery:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getSmartRadioForSong(Lcom/sakukelly/music/data/model/Song;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sakukelly/music/data/model/Song;",
            ")",
            "Ljava/util/List<",
            "Lcom/sakukelly/music/data/model/Song;",
            ">;"
        }
    .end annotation

    const-string v0, "seedSong"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;->recommendationEngine:Lcom/sakukelly/music/domain/recommendations/SmartRecommendationEngine;

    iget-object v0, p0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;->songs:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/List;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/sakukelly/music/domain/recommendations/SmartRecommendationEngine;->generateSmartRadio$default(Lcom/sakukelly/music/domain/recommendations/SmartRecommendationEngine;Lcom/sakukelly/music/data/model/Song;Ljava/util/List;IILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final getSmartShuffle(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sakukelly/music/data/model/Song;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sakukelly/music/data/model/Song;",
            ">;"
        }
    .end annotation

    const-string v0, "songList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;->recommendationEngine:Lcom/sakukelly/music/domain/recommendations/SmartRecommendationEngine;

    invoke-virtual {v0, p1}, Lcom/sakukelly/music/domain/recommendations/SmartRecommendationEngine;->generateSmartShuffle(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final getSongs()Lkotlinx/coroutines/flow/StateFlow;
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

    .line 29
    iget-object v0, p0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;->songs:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final isScanning()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;->isScanning:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final scanCustomFolder(Ljava/lang/String;)V
    .locals 7

    const-string v0, "folderPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel$scanCustomFolder$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, v3}, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel$scanCustomFolder$1;-><init>(Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final scanMusicFolders()V
    .locals 7

    .line 82
    iget-object v0, p0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;->_isScanning:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 83
    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel$scanMusicFolders$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel$scanMusicFolders$1;-><init>(Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final toggleFavorite(Lcom/sakukelly/music/data/model/Song;)V
    .locals 7

    const-string v0, "song"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel$toggleFavorite$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel$toggleFavorite$1;-><init>(Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;Lcom/sakukelly/music/data/model/Song;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
