.class public final Lcom/sakukelly/music/MainActivity;
.super Landroidx/activity/ComponentActivity;
.source "MainActivity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/sakukelly/music/MainActivity\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,187:1\n37#2,2:188\n1734#3,3:190\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/sakukelly/music/MainActivity\n*L\n183#1:188,2\n46#1:190,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\t\u0008\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0014J\u0008\u0010\u000e\u001a\u00020\u000bH\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f\u00b2\u0006\n\u0010\u0010\u001a\u00020\tX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u008a\u0084\u0002\u00b2\u0006\n\u0010\u0013\u001a\u00020\u0014X\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/sakukelly/music/MainActivity;",
        "Landroidx/activity/ComponentActivity;",
        "<init>",
        "()V",
        "libraryViewModelRef",
        "Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;",
        "requestPermissionLauncher",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "",
        "",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "checkPermissions",
        "app_release",
        "currentTheme",
        "currentSong",
        "Lcom/sakukelly/music/data/model/Song;",
        "isPlaying",
        "",
        "navBackStackEntry",
        "Landroidx/navigation/NavBackStackEntry;"
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
.field private libraryViewModelRef:Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;

.field private final requestPermissionLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-ItF2CsiY2yOneGy4vKUmer-elc(Lcom/sakukelly/music/MainActivity;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sakukelly/music/MainActivity;->requestPermissionLauncher$lambda$1(Lcom/sakukelly/music/MainActivity;Ljava/util/Map;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    .line 44
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;-><init>()V

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract;

    .line 43
    new-instance v1, Lcom/sakukelly/music/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/sakukelly/music/MainActivity$$ExternalSyntheticLambda0;-><init>(Lcom/sakukelly/music/MainActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/sakukelly/music/MainActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/sakukelly/music/MainActivity;->requestPermissionLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static final synthetic access$setLibraryViewModelRef$p(Lcom/sakukelly/music/MainActivity;Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/sakukelly/music/MainActivity;->libraryViewModelRef:Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;

    return-void
.end method

.method private final checkPermissions()V
    .locals 4

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 163
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_1

    .line 164
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-string v2, "android.permission.READ_MEDIA_AUDIO"

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 167
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_0
    const-string v2, "android.permission.POST_NOTIFICATIONS"

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 172
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 175
    :cond_1
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 178
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_2
    :goto_0
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 183
    iget-object v1, p0, Lcom/sakukelly/music/MainActivity;->requestPermissionLauncher:Landroidx/activity/result/ActivityResultLauncher;

    const/4 v2, 0x0

    .line 189
    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 183
    invoke-virtual {v1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private static final requestPermissionLauncher$lambda$1(Lcom/sakukelly/music/MainActivity;Ljava/util/Map;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 190
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 46
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    iget-object p0, p0, Lcom/sakukelly/music/MainActivity;->libraryViewModelRef:Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;->scanMusicFolders()V

    goto :goto_1

    .line 48
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sakukelly/music/MainActivity;->libraryViewModelRef:Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;->scanMusicFolders()V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 56
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-direct {p0}, Lcom/sakukelly/music/MainActivity;->checkPermissions()V

    sput-object p0, Lcom/sakukelly/music/ui/PlaylistHelper;->sActivity:Landroid/app/Activity;

    .line 60
    move-object p1, p0

    check-cast p1, Landroidx/activity/ComponentActivity;

    new-instance v0, Lcom/sakukelly/music/MainActivity$onCreate$1;

    invoke-direct {v0, p0}, Lcom/sakukelly/music/MainActivity$onCreate$1;-><init>(Lcom/sakukelly/music/MainActivity;)V

    const v1, -0x68bd1cb9

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v2, v1}, Landroidx/activity/compose/ComponentActivityKt;->setContent$default(Landroidx/activity/ComponentActivity;Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onDestroy()V

    const/4 v0, 0x0

    sput-object v0, Lcom/sakukelly/music/ui/PlaylistHelper;->sActivity:Landroid/app/Activity;

    return-void
.end method
