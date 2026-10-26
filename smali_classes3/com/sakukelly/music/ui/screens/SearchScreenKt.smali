.class public final Lcom/sakukelly/music/ui/screens/SearchScreenKt;
.super Ljava/lang/Object;
.source "SearchScreen.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchScreen.kt\ncom/sakukelly/music/ui/screens/SearchScreenKt\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,148:1\n81#2:149\n81#2:150\n81#2:151\n81#2:152\n81#2:153\n*S KotlinDebug\n*F\n+ 1 SearchScreen.kt\ncom/sakukelly/music/ui/screens/SearchScreenKt\n*L\n32#1:149\n33#1:150\n34#1:151\n36#1:152\n37#1:153\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u001a9\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0007H\u0007\u00a2\u0006\u0002\u0010\t\u00a8\u0006\n\u00b2\u0006\n\u0010\u000b\u001a\u00020\u000cX\u008a\u0084\u0002\u00b2\u0006\u0010\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eX\u008a\u0084\u0002\u00b2\u0006\n\u0010\u0010\u001a\u00020\u0011X\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0012\u001a\u0004\u0018\u00010\u000fX\u008a\u0084\u0002\u00b2\u0006\n\u0010\u0013\u001a\u00020\u0011X\u008a\u0084\u0002"
    }
    d2 = {
        "SearchScreen",
        "",
        "searchViewModel",
        "Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;",
        "playerViewModel",
        "Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;",
        "onNavigateToPlayer",
        "Lkotlin/Function0;",
        "onBack",
        "(Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V",
        "app_release",
        "query",
        "",
        "localResults",
        "",
        "Lcom/sakukelly/music/data/model/Song;",
        "isSearchingLocal",
        "",
        "currentSong",
        "isPlaying"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$zU_EzuZaRIjx_pJf6hlHaYvSq6s(Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/sakukelly/music/ui/screens/SearchScreenKt;->SearchScreen$lambda$5(Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final SearchScreen(Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;",
            "Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    move-object/from16 v4, p3

    const-string v0, "searchViewModel"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playerViewModel"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onNavigateToPlayer"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onBack"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x11ab93ef

    move-object/from16 v5, p4

    .line 31
    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v0

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;->getQuery()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v14, 0x1

    invoke-static {v5, v6, v0, v7, v14}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v8

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;->getLocalResults()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v5

    invoke-static {v5, v6, v0, v7, v14}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v9

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;->isSearchingLocal()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v5

    invoke-static {v5, v6, v0, v7, v14}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v10

    .line 36
    invoke-virtual/range {p1 .. p1}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;->getCurrentSong()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v5

    invoke-static {v5, v6, v0, v7, v14}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v11

    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;->isPlaying()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v5

    invoke-static {v5, v6, v0, v7, v14}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v12

    .line 40
    new-instance v5, Lcom/sakukelly/music/ui/screens/SearchScreenKt$SearchScreen$1;

    invoke-direct {v5, v4}, Lcom/sakukelly/music/ui/screens/SearchScreenKt$SearchScreen$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    const v6, 0x10d5e8b3

    const/16 v15, 0x36

    invoke-static {v6, v14, v5, v0, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v5

    move-object/from16 v16, v5

    check-cast v16, Lkotlin/jvm/functions/Function2;

    .line 50
    new-instance v13, Lcom/sakukelly/music/ui/screens/SearchScreenKt$SearchScreen$2;

    move-object v5, v13

    move-object v6, v8

    move-object/from16 v7, p0

    move-object v8, v10

    move-object v10, v11

    move-object v11, v12

    move-object/from16 v12, p1

    move-object v1, v13

    move-object/from16 v13, p2

    invoke-direct/range {v5 .. v13}, Lcom/sakukelly/music/ui/screens/SearchScreenKt$SearchScreen$2;-><init>(Landroidx/compose/runtime/State;Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lkotlin/jvm/functions/Function0;)V

    const v5, 0x1560c77e

    invoke-static {v5, v14, v1, v0, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function3;

    const v18, 0x30000030

    const/16 v19, 0x1fd

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v6, v16

    move-object/from16 v16, v1

    move-object/from16 v17, v0

    .line 39
    invoke-static/range {v5 .. v19}, Landroidx/compose/material3/ScaffoldKt;->Scaffold-TvnljyQ(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v6

    if-eqz v6, :cond_0

    new-instance v7, Lcom/sakukelly/music/ui/screens/SearchScreenKt$$ExternalSyntheticLambda0;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sakukelly/music/ui/screens/SearchScreenKt$$ExternalSyntheticLambda0;-><init>(Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v6, v7}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_0
    return-void
.end method

.method private static final SearchScreen$lambda$0(Landroidx/compose/runtime/State;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 149
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static final SearchScreen$lambda$1(Landroidx/compose/runtime/State;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/util/List<",
            "Lcom/sakukelly/music/data/model/Song;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/sakukelly/music/data/model/Song;",
            ">;"
        }
    .end annotation

    .line 150
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static final SearchScreen$lambda$2(Landroidx/compose/runtime/State;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 151
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final SearchScreen$lambda$3(Landroidx/compose/runtime/State;)Lcom/sakukelly/music/data/model/Song;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Lcom/sakukelly/music/data/model/Song;",
            ">;)",
            "Lcom/sakukelly/music/data/model/Song;"
        }
    .end annotation

    .line 152
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sakukelly/music/data/model/Song;

    return-object p0
.end method

.method private static final SearchScreen$lambda$4(Landroidx/compose/runtime/State;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 153
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final SearchScreen$lambda$5(Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 6

    const-string p6, "$searchViewModel"

    invoke-static {p0, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "$playerViewModel"

    invoke-static {p1, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "$onNavigateToPlayer"

    invoke-static {p2, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "$onBack"

    invoke-static {p3, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    or-int/lit8 p4, p4, 0x1

    invoke-static {p4}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lcom/sakukelly/music/ui/screens/SearchScreenKt;->SearchScreen(Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final synthetic access$SearchScreen$lambda$0(Landroidx/compose/runtime/State;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sakukelly/music/ui/screens/SearchScreenKt;->SearchScreen$lambda$0(Landroidx/compose/runtime/State;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$SearchScreen$lambda$1(Landroidx/compose/runtime/State;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sakukelly/music/ui/screens/SearchScreenKt;->SearchScreen$lambda$1(Landroidx/compose/runtime/State;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$SearchScreen$lambda$2(Landroidx/compose/runtime/State;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sakukelly/music/ui/screens/SearchScreenKt;->SearchScreen$lambda$2(Landroidx/compose/runtime/State;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$SearchScreen$lambda$3(Landroidx/compose/runtime/State;)Lcom/sakukelly/music/data/model/Song;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sakukelly/music/ui/screens/SearchScreenKt;->SearchScreen$lambda$3(Landroidx/compose/runtime/State;)Lcom/sakukelly/music/data/model/Song;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$SearchScreen$lambda$4(Landroidx/compose/runtime/State;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sakukelly/music/ui/screens/SearchScreenKt;->SearchScreen$lambda$4(Landroidx/compose/runtime/State;)Z

    move-result p0

    return p0
.end method
