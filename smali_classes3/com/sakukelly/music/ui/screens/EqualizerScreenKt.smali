.class public final Lcom/sakukelly/music/ui/screens/EqualizerScreenKt;
.super Ljava/lang/Object;
.source "EqualizerScreen.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEqualizerScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EqualizerScreen.kt\ncom/sakukelly/music/ui/screens/EqualizerScreenKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,269:1\n1225#2,6:270\n1225#2,6:276\n81#3:282\n81#3:283\n81#3:284\n81#3:285\n81#3:286\n81#3:287\n*S KotlinDebug\n*F\n+ 1 EqualizerScreen.kt\ncom/sakukelly/music/ui/screens/EqualizerScreenKt\n*L\n39#1:270,6\n48#1:276,6\n40#1:282\n41#1:283\n42#1:284\n43#1:285\n44#1:286\n45#1:287\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u001a#\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0005H\u0007\u00a2\u0006\u0002\u0010\u0006\u00a8\u0006\u0007\u00b2\u0006\n\u0010\u0008\u001a\u00020\tX\u008a\u0084\u0002\u00b2\u0006\u0016\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000c0\u000bX\u008a\u0084\u0002\u00b2\u0006\n\u0010\r\u001a\u00020\u000cX\u008a\u0084\u0002\u00b2\u0006\n\u0010\u000e\u001a\u00020\u000cX\u008a\u0084\u0002\u00b2\u0006\n\u0010\u000f\u001a\u00020\u0010X\u008a\u0084\u0002\u00b2\u0006\n\u0010\u0011\u001a\u00020\tX\u008a\u0084\u0002"
    }
    d2 = {
        "EqualizerScreen",
        "",
        "playerViewModel",
        "Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;",
        "onBack",
        "Lkotlin/Function0;",
        "(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V",
        "app_release",
        "isEnabled",
        "",
        "bandLevels",
        "",
        "",
        "bassBoost",
        "virtualizer",
        "currentPreset",
        "",
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
.method public static synthetic $r8$lambda$OPFELf8Ra5WUWnJup110cgPeN8Q(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lkotlin/jvm/functions/Function0;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sakukelly/music/ui/screens/EqualizerScreenKt;->EqualizerScreen$lambda$8(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lkotlin/jvm/functions/Function0;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final EqualizerScreen(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "playerViewModel"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "onBack"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, -0x639882c1

    move-object/from16 v3, p2

    .line 38
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v2

    const v3, 0x60665b65

    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 270
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .line 271
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 39
    sget-object v3, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->Companion:Lcom/sakukelly/music/domain/equalizer/EqualizerManager$Companion;

    invoke-virtual {v3}, Lcom/sakukelly/music/domain/equalizer/EqualizerManager$Companion;->getInstance()Lcom/sakukelly/music/domain/equalizer/EqualizerManager;

    move-result-object v3

    .line 273
    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 39
    :cond_0
    move-object v6, v3

    check-cast v6, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 40
    invoke-virtual {v6}, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->isEnabled()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v14, 0x1

    invoke-static {v3, v4, v2, v5, v14}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v3

    .line 41
    invoke-virtual {v6}, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->getBandLevels()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v7

    invoke-static {v7, v4, v2, v5, v14}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v11

    .line 42
    invoke-virtual {v6}, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->getBassBoostStrength()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v7

    invoke-static {v7, v4, v2, v5, v14}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v12

    .line 43
    invoke-virtual {v6}, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->getVirtualizerStrength()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v7

    invoke-static {v7, v4, v2, v5, v14}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v13

    .line 44
    invoke-virtual {v6}, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->getCurrentPreset()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v7

    invoke-static {v7, v4, v2, v5, v14}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v7

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;->isPlaying()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v8

    invoke-static {v8, v4, v2, v5, v14}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v9

    const/16 v4, 0xa

    .line 47
    new-array v4, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v10, "31Hz"

    aput-object v10, v4, v8

    const-string v8, "62Hz"

    aput-object v8, v4, v14

    const/4 v8, 0x2

    const-string v10, "125Hz"

    aput-object v10, v4, v8

    const/4 v8, 0x3

    const-string v10, "250Hz"

    aput-object v10, v4, v8

    const/4 v8, 0x4

    const-string v10, "500Hz"

    aput-object v10, v4, v8

    const/4 v8, 0x5

    const-string v10, "1kHz"

    aput-object v10, v4, v8

    const/4 v8, 0x6

    const-string v10, "2kHz"

    aput-object v10, v4, v8

    const/4 v8, 0x7

    const-string v10, "4kHz"

    aput-object v10, v4, v8

    const-string v8, "8kHz"

    aput-object v8, v4, v5

    const/16 v5, 0x9

    const-string v8, "16kHz"

    aput-object v8, v4, v5

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const v4, 0x6066a1cd    # 6.647516E19f

    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 276
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .line 277
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_1

    .line 48
    sget-object v4, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->Companion:Lcom/sakukelly/music/domain/equalizer/EqualizerManager$Companion;

    invoke-virtual {v4}, Lcom/sakukelly/music/domain/equalizer/EqualizerManager$Companion;->getPRESETS()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    .line 279
    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 48
    :cond_1
    move-object v8, v4

    check-cast v8, Ljava/util/List;

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 51
    new-instance v4, Lcom/sakukelly/music/ui/screens/EqualizerScreenKt$EqualizerScreen$1;

    invoke-direct {v4, v1, v6}, Lcom/sakukelly/music/ui/screens/EqualizerScreenKt$EqualizerScreen$1;-><init>(Lkotlin/jvm/functions/Function0;Lcom/sakukelly/music/domain/equalizer/EqualizerManager;)V

    const v5, 0x1ad0dc03

    const/16 v15, 0x36

    invoke-static {v5, v14, v4, v2, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v4

    move-object/from16 v16, v4

    check-cast v16, Lkotlin/jvm/functions/Function2;

    .line 72
    new-instance v5, Lcom/sakukelly/music/ui/screens/EqualizerScreenKt$EqualizerScreen$2;

    move-object v4, v5

    move-object v0, v5

    move-object v5, v3

    invoke-direct/range {v4 .. v13}, Lcom/sakukelly/music/ui/screens/EqualizerScreenKt$EqualizerScreen$2;-><init>(Landroidx/compose/runtime/State;Lcom/sakukelly/music/domain/equalizer/EqualizerManager;Landroidx/compose/runtime/State;Ljava/util/List;Landroidx/compose/runtime/State;Ljava/util/List;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V

    const v3, -0x100731b2

    invoke-static {v3, v14, v0, v2, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lkotlin/jvm/functions/Function3;

    const v0, 0x30000030

    const/16 v17, 0x1fd

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v4, v16

    move-object v15, v2

    move/from16 v16, v0

    .line 50
    invoke-static/range {v3 .. v17}, Landroidx/compose/material3/ScaffoldKt;->Scaffold-TvnljyQ(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v2, Lcom/sakukelly/music/ui/screens/EqualizerScreenKt$$ExternalSyntheticLambda0;

    move-object/from16 v3, p0

    move/from16 v4, p3

    invoke-direct {v2, v3, v1, v4}, Lcom/sakukelly/music/ui/screens/EqualizerScreenKt$$ExternalSyntheticLambda0;-><init>(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v0, v2}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_2
    return-void
.end method

.method private static final EqualizerScreen$lambda$1(Landroidx/compose/runtime/State;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 282
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final EqualizerScreen$lambda$2(Landroidx/compose/runtime/State;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 283
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method private static final EqualizerScreen$lambda$3(Landroidx/compose/runtime/State;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 284
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private static final EqualizerScreen$lambda$4(Landroidx/compose/runtime/State;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 285
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private static final EqualizerScreen$lambda$5(Landroidx/compose/runtime/State;)Ljava/lang/String;
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

    .line 286
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static final EqualizerScreen$lambda$6(Landroidx/compose/runtime/State;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 287
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final EqualizerScreen$lambda$8(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lkotlin/jvm/functions/Function0;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    const-string p4, "$playerViewModel"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$onBack"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result p2

    invoke-static {p0, p1, p3, p2}, Lcom/sakukelly/music/ui/screens/EqualizerScreenKt;->EqualizerScreen(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final synthetic access$EqualizerScreen$lambda$1(Landroidx/compose/runtime/State;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sakukelly/music/ui/screens/EqualizerScreenKt;->EqualizerScreen$lambda$1(Landroidx/compose/runtime/State;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$EqualizerScreen$lambda$2(Landroidx/compose/runtime/State;)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sakukelly/music/ui/screens/EqualizerScreenKt;->EqualizerScreen$lambda$2(Landroidx/compose/runtime/State;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$EqualizerScreen$lambda$3(Landroidx/compose/runtime/State;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sakukelly/music/ui/screens/EqualizerScreenKt;->EqualizerScreen$lambda$3(Landroidx/compose/runtime/State;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$EqualizerScreen$lambda$4(Landroidx/compose/runtime/State;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sakukelly/music/ui/screens/EqualizerScreenKt;->EqualizerScreen$lambda$4(Landroidx/compose/runtime/State;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$EqualizerScreen$lambda$5(Landroidx/compose/runtime/State;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sakukelly/music/ui/screens/EqualizerScreenKt;->EqualizerScreen$lambda$5(Landroidx/compose/runtime/State;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$EqualizerScreen$lambda$6(Landroidx/compose/runtime/State;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sakukelly/music/ui/screens/EqualizerScreenKt;->EqualizerScreen$lambda$6(Landroidx/compose/runtime/State;)Z

    move-result p0

    return p0
.end method
