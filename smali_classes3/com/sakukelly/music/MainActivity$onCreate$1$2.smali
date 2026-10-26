.class final Lcom/sakukelly/music/MainActivity$onCreate$1$2;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/MainActivity$onCreate$1;->invoke(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/sakukelly/music/MainActivity$onCreate$1$2\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,187:1\n81#2:188\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/sakukelly/music/MainActivity$onCreate$1$2\n*L\n78#1:188\n*E\n"
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
.field final synthetic $currentSong$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lcom/sakukelly/music/data/model/Song;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $libraryViewModel:Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;

.field final synthetic $playerViewModel:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

.field final synthetic $searchViewModel:Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;


# direct methods
.method constructor <init>(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Landroidx/compose/runtime/State;Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;",
            "Landroidx/compose/runtime/State<",
            "Lcom/sakukelly/music/data/model/Song;",
            ">;",
            "Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;",
            "Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sakukelly/music/MainActivity$onCreate$1$2;->$playerViewModel:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    iput-object p2, p0, Lcom/sakukelly/music/MainActivity$onCreate$1$2;->$currentSong$delegate:Landroidx/compose/runtime/State;

    iput-object p3, p0, Lcom/sakukelly/music/MainActivity$onCreate$1$2;->$libraryViewModel:Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;

    iput-object p4, p0, Lcom/sakukelly/music/MainActivity$onCreate$1$2;->$searchViewModel:Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$0(Landroidx/compose/runtime/State;)Landroidx/navigation/NavBackStackEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;)",
            "Landroidx/navigation/NavBackStackEntry;"
        }
    .end annotation

    .line 188
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/navigation/NavBackStackEntry;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 76
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sakukelly/music/MainActivity$onCreate$1$2;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    and-int/lit8 v1, p2, 0xb

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 77
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 77
    new-array v1, v1, [Landroidx/navigation/Navigator;

    const/16 v2, 0x8

    invoke-static {v1, v13, v2}, Landroidx/navigation/compose/NavHostControllerKt;->rememberNavController([Landroidx/navigation/Navigator;Landroidx/compose/runtime/Composer;I)Landroidx/navigation/NavHostController;

    move-result-object v1

    .line 78
    move-object v3, v1

    check-cast v3, Landroidx/navigation/NavController;

    invoke-static {v3, v13, v2}, Landroidx/navigation/compose/NavHostControllerKt;->currentBackStackEntryAsState(Landroidx/navigation/NavController;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v2

    .line 79
    invoke-static {v2}, Lcom/sakukelly/music/MainActivity$onCreate$1$2;->invoke$lambda$0(Landroidx/compose/runtime/State;)Landroidx/navigation/NavBackStackEntry;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/navigation/NavDestination;->getRoute()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 82
    :goto_1
    new-instance v3, Lcom/sakukelly/music/MainActivity$onCreate$1$2$1;

    iget-object v4, v0, Lcom/sakukelly/music/MainActivity$onCreate$1$2;->$playerViewModel:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    iget-object v5, v0, Lcom/sakukelly/music/MainActivity$onCreate$1$2;->$currentSong$delegate:Landroidx/compose/runtime/State;

    invoke-direct {v3, v2, v4, v5, v1}, Lcom/sakukelly/music/MainActivity$onCreate$1$2$1;-><init>(Ljava/lang/String;Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Landroidx/compose/runtime/State;Landroidx/navigation/NavHostController;)V

    const v2, -0x79af95ae

    const/4 v4, 0x1

    const/16 v5, 0x36

    invoke-static {v2, v4, v3, v13, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 91
    new-instance v2, Lcom/sakukelly/music/MainActivity$onCreate$1$2$2;

    iget-object v6, v0, Lcom/sakukelly/music/MainActivity$onCreate$1$2;->$libraryViewModel:Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;

    iget-object v7, v0, Lcom/sakukelly/music/MainActivity$onCreate$1$2;->$playerViewModel:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    iget-object v8, v0, Lcom/sakukelly/music/MainActivity$onCreate$1$2;->$searchViewModel:Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;

    invoke-direct {v2, v1, v6, v7, v8}, Lcom/sakukelly/music/MainActivity$onCreate$1$2$2;-><init>(Landroidx/navigation/NavHostController;Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;)V

    const v1, 0x259e2948

    invoke-static {v1, v4, v2, v13, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lkotlin/jvm/functions/Function3;

    const v14, 0x30000180

    const/16 v15, 0x1fb

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v13, p1

    .line 81
    invoke-static/range {v1 .. v15}, Landroidx/compose/material3/ScaffoldKt;->Scaffold-TvnljyQ(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    :goto_2
    return-void
.end method
