.class public final Lcom/sakukelly/music/ui/screens/SettingsScreenKt;
.super Ljava/lang/Object;
.source "SettingsScreen.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSettingsScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsScreen.kt\ncom/sakukelly/music/ui/screens/SettingsScreenKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,583:1\n77#2:584\n1225#3,6:585\n1225#3,6:591\n1225#3,6:597\n81#4:603\n81#4:604\n81#4:605\n81#4:606\n81#4:607\n81#4:608\n81#4:609\n81#4:610\n81#4:611\n81#4:612\n81#4:613\n81#4:614\n81#4:615\n107#4,2:616\n81#4:618\n*S KotlinDebug\n*F\n+ 1 SettingsScreen.kt\ncom/sakukelly/music/ui/screens/SettingsScreenKt\n*L\n44#1:584\n58#1:585,6\n60#1:591,6\n61#1:597,6\n45#1:603\n46#1:604\n47#1:605\n48#1:606\n49#1:607\n50#1:608\n51#1:609\n52#1:610\n53#1:611\n54#1:612\n55#1:613\n56#1:614\n58#1:615\n58#1:616,2\n62#1:618\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\"\n\u0002\u0008\u0002\u001a1\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0005H\u0007\u00a2\u0006\u0002\u0010\u0007\u00a8\u0006\u0008\u00b2\u0006\n\u0010\t\u001a\u00020\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u000b\u001a\u0004\u0018\u00010\nX\u008a\u0084\u0002\u00b2\u0006\n\u0010\u000c\u001a\u00020\rX\u008a\u0084\u0002\u00b2\u0006\n\u0010\u000e\u001a\u00020\rX\u008a\u0084\u0002\u00b2\u0006\n\u0010\u000f\u001a\u00020\u0010X\u008a\u0084\u0002\u00b2\u0006\n\u0010\u0011\u001a\u00020\u0012X\u008a\u0084\u0002\u00b2\u0006\n\u0010\u0013\u001a\u00020\u0012X\u008a\u0084\u0002\u00b2\u0006\n\u0010\u0014\u001a\u00020\u0012X\u008a\u0084\u0002\u00b2\u0006\n\u0010\u0015\u001a\u00020\u0012X\u008a\u0084\u0002\u00b2\u0006\n\u0010\u0016\u001a\u00020\u0012X\u008a\u0084\u0002\u00b2\u0006\n\u0010\u0017\u001a\u00020\u0012X\u008a\u0084\u0002\u00b2\u0006\u0010\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0019X\u008a\u0084\u0002\u00b2\u0006\n\u0010\u001a\u001a\u00020\u0012X\u008a\u008e\u0002\u00b2\u0006\n\u0010\u001b\u001a\u00020\nX\u008a\u0084\u0002"
    }
    d2 = {
        "SettingsScreen",
        "",
        "playerViewModel",
        "Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;",
        "onNavigateToEqualizer",
        "Lkotlin/Function0;",
        "onBack",
        "(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V",
        "app_release",
        "currentTheme",
        "",
        "customWallpaperUri",
        "wallpaperBlur",
        "",
        "wallpaperDim",
        "crossfadeSeconds",
        "",
        "replayGainEnabled",
        "",
        "equalizerEnabled",
        "preventSongRepetition",
        "deduplicateScan",
        "skipSilenceEnabled",
        "autoGaplessMerge",
        "musicFolders",
        "",
        "isCleaningDuplicates",
        "currentEqPreset"
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
.method public static synthetic $r8$lambda$3qyIKupMd6FoaazW9Qxr7XNeARA(Landroid/content/Context;Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Landroid/net/Uri;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sakukelly/music/ui/screens/SettingsScreenKt;->SettingsScreen$lambda$18(Landroid/content/Context;Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Landroid/net/Uri;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$P1lCFJjXgm2b-Or3uEF1ZcPV14g(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/sakukelly/music/ui/screens/SettingsScreenKt;->SettingsScreen$lambda$20(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mI0sSP_5QyVpiBCv5vw43ZZ9bpQ(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Landroid/net/Uri;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/sakukelly/music/ui/screens/SettingsScreenKt;->SettingsScreen$lambda$19(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Landroid/net/Uri;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final SettingsScreen(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    const-string v0, "playerViewModel"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onNavigateToEqualizer"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onBack"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x3b5b4b29

    move-object/from16 v1, p3

    .line 43
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v12

    .line 44
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalContext()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    const v1, 0x789c5f52

    const-string v2, "CC:CompositionLocal.kt#9igjgp"

    .line 584
    invoke-static {v12, v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 44
    move-object v11, v0

    check-cast v11, Landroid/content/Context;

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;->getCurrentTheme()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v10, 0x1

    invoke-static {v0, v1, v12, v2, v10}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v3

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;->getCustomWallpaperUri()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-static {v0, v1, v12, v2, v10}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v4

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;->getWallpaperBlur()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-static {v0, v1, v12, v2, v10}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v6

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;->getWallpaperDim()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-static {v0, v1, v12, v2, v10}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v7

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;->getCrossfadeSeconds()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-static {v0, v1, v12, v2, v10}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v16

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;->getReplayGainEnabled()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-static {v0, v1, v12, v2, v10}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v17

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;->getEqualizerEnabled()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-static {v0, v1, v12, v2, v10}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v18

    .line 52
    invoke-virtual/range {p0 .. p0}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;->getPreventSongRepetition()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-static {v0, v1, v12, v2, v10}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v19

    .line 53
    invoke-virtual/range {p0 .. p0}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;->getDeduplicateScan()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-static {v0, v1, v12, v2, v10}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v22

    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;->getSkipSilenceEnabled()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-static {v0, v1, v12, v2, v10}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v23

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;->getAutoGaplessMerge()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-static {v0, v1, v12, v2, v10}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v24

    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;->getMusicFolders()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-static {v0, v1, v12, v2, v10}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v9

    const v0, 0x27fd7915

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 585
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .line 586
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v0, v5, :cond_0

    const/4 v0, 0x0

    .line 58
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v5, 0x2

    invoke-static {v0, v1, v5, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    .line 588
    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 58
    :cond_0
    move-object/from16 v25, v0

    check-cast v25, Landroidx/compose/runtime/MutableState;

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v0, 0x27fd801e

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 591
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .line 592
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v0, v5, :cond_1

    .line 60
    sget-object v0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->Companion:Lcom/sakukelly/music/domain/equalizer/EqualizerManager$Companion;

    invoke-virtual {v0}, Lcom/sakukelly/music/domain/equalizer/EqualizerManager$Companion;->getInstance()Lcom/sakukelly/music/domain/equalizer/EqualizerManager;

    move-result-object v0

    .line 594
    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 60
    :cond_1
    move-object/from16 v26, v0

    check-cast v26, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v0, 0x27fd8826

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 597
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .line 598
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v0, v5, :cond_2

    .line 61
    sget-object v0, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->Companion:Lcom/sakukelly/music/domain/equalizer/EqualizerManager$Companion;

    invoke-virtual {v0}, Lcom/sakukelly/music/domain/equalizer/EqualizerManager$Companion;->getPRESETS()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 600
    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 61
    :cond_2
    move-object/from16 v21, v0

    check-cast v21, Ljava/util/List;

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 62
    invoke-virtual/range {v26 .. v26}, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->getCurrentPreset()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-static {v0, v1, v12, v2, v10}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v20

    .line 68
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$OpenDocument;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$OpenDocument;-><init>()V

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract;

    .line 67
    new-instance v1, Lcom/sakukelly/music/ui/screens/SettingsScreenKt$$ExternalSyntheticLambda0;

    invoke-direct {v1, v11, v15}, Lcom/sakukelly/music/ui/screens/SettingsScreenKt$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;)V

    invoke-static {v0, v1, v12, v2}, Landroidx/activity/compose/ActivityResultRegistryKt;->rememberLauncherForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Landroidx/activity/compose/ManagedActivityResultLauncher;

    move-result-object v5

    .line 86
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$OpenDocumentTree;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$OpenDocumentTree;-><init>()V

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract;

    .line 85
    new-instance v1, Lcom/sakukelly/music/ui/screens/SettingsScreenKt$$ExternalSyntheticLambda1;

    invoke-direct {v1, v15}, Lcom/sakukelly/music/ui/screens/SettingsScreenKt$$ExternalSyntheticLambda1;-><init>(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;)V

    invoke-static {v0, v1, v12, v2}, Landroidx/activity/compose/ActivityResultRegistryKt;->rememberLauncherForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Landroidx/activity/compose/ManagedActivityResultLauncher;

    move-result-object v8

    .line 94
    new-instance v0, Lcom/sakukelly/music/ui/screens/SettingsScreenKt$SettingsScreen$1;

    invoke-direct {v0, v13}, Lcom/sakukelly/music/ui/screens/SettingsScreenKt$SettingsScreen$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    const v1, -0x1a145a13

    const/16 v2, 0x36

    invoke-static {v1, v10, v0, v12, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object/from16 v27, v0

    check-cast v27, Lkotlin/jvm/functions/Function2;

    .line 104
    new-instance v1, Lcom/sakukelly/music/ui/screens/SettingsScreenKt$SettingsScreen$2;

    move-object v0, v1

    move-object/from16 v28, v1

    move-object/from16 v1, p1

    move-object v2, v3

    move-object/from16 v3, p0

    move-object/from16 v10, v19

    move-object/from16 v19, v11

    move-object/from16 v11, v22

    move-object/from16 v29, v12

    move-object/from16 v12, v25

    move-object/from16 v13, v19

    move-object/from16 v14, v16

    move-object/from16 v15, v23

    move-object/from16 v16, v24

    move-object/from16 v19, v26

    invoke-direct/range {v0 .. v21}, Lcom/sakukelly/music/ui/screens/SettingsScreenKt$SettingsScreen$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/State;Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Landroidx/compose/runtime/State;Landroidx/activity/compose/ManagedActivityResultLauncher;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/activity/compose/ManagedActivityResultLauncher;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Landroid/content/Context;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lcom/sakukelly/music/domain/equalizer/EqualizerManager;Landroidx/compose/runtime/State;Ljava/util/List;)V

    const v0, -0x3af1e2c8

    move-object/from16 v1, v28

    move-object/from16 v15, v29

    const/16 v2, 0x36

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v15, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lkotlin/jvm/functions/Function3;

    const v14, 0x30000030

    const/16 v0, 0x1fd

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v2, v27

    move-object v13, v15

    move-object/from16 v16, v15

    move v15, v0

    .line 93
    invoke-static/range {v1 .. v15}, Landroidx/compose/material3/ScaffoldKt;->Scaffold-TvnljyQ(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Lcom/sakukelly/music/ui/screens/SettingsScreenKt$$ExternalSyntheticLambda2;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sakukelly/music/ui/screens/SettingsScreenKt$$ExternalSyntheticLambda2;-><init>(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_3
    return-void
.end method

.method private static final SettingsScreen$lambda$0(Landroidx/compose/runtime/State;)Ljava/lang/String;
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

    .line 603
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static final SettingsScreen$lambda$1(Landroidx/compose/runtime/State;)Ljava/lang/String;
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

    .line 604
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static final SettingsScreen$lambda$10(Landroidx/compose/runtime/State;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 613
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final SettingsScreen$lambda$11(Landroidx/compose/runtime/State;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 614
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method private static final SettingsScreen$lambda$13(Landroidx/compose/runtime/MutableState;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 58
    check-cast p0, Landroidx/compose/runtime/State;

    .line 615
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final SettingsScreen$lambda$14(Landroidx/compose/runtime/MutableState;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 58
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 616
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static final SettingsScreen$lambda$17(Landroidx/compose/runtime/State;)Ljava/lang/String;
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

    .line 618
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static final SettingsScreen$lambda$18(Landroid/content/Context;Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Landroid/net/Uri;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$playerViewModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 73
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :catch_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;->setCustomWallpaperUri(Ljava/lang/String;)V

    .line 82
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final SettingsScreen$lambda$19(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Landroid/net/Uri;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$playerViewModel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "toString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;->addMusicFolder(Ljava/lang/String;)V

    .line 91
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final SettingsScreen$lambda$2(Landroidx/compose/runtime/State;)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 605
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method private static final SettingsScreen$lambda$20(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    const-string p5, "$playerViewModel"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "$onNavigateToEqualizer"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "$onBack"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    or-int/lit8 p3, p3, 0x1

    invoke-static {p3}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result p3

    invoke-static {p0, p1, p2, p4, p3}, Lcom/sakukelly/music/ui/screens/SettingsScreenKt;->SettingsScreen(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final SettingsScreen$lambda$3(Landroidx/compose/runtime/State;)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 606
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method private static final SettingsScreen$lambda$4(Landroidx/compose/runtime/State;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 607
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private static final SettingsScreen$lambda$5(Landroidx/compose/runtime/State;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 608
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final SettingsScreen$lambda$6(Landroidx/compose/runtime/State;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 609
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final SettingsScreen$lambda$7(Landroidx/compose/runtime/State;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 610
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final SettingsScreen$lambda$8(Landroidx/compose/runtime/State;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 611
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final SettingsScreen$lambda$9(Landroidx/compose/runtime/State;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 612
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$SettingsScreen$lambda$0(Landroidx/compose/runtime/State;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sakukelly/music/ui/screens/SettingsScreenKt;->SettingsScreen$lambda$0(Landroidx/compose/runtime/State;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$SettingsScreen$lambda$1(Landroidx/compose/runtime/State;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sakukelly/music/ui/screens/SettingsScreenKt;->SettingsScreen$lambda$1(Landroidx/compose/runtime/State;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$SettingsScreen$lambda$10(Landroidx/compose/runtime/State;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sakukelly/music/ui/screens/SettingsScreenKt;->SettingsScreen$lambda$10(Landroidx/compose/runtime/State;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$SettingsScreen$lambda$11(Landroidx/compose/runtime/State;)Ljava/util/Set;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sakukelly/music/ui/screens/SettingsScreenKt;->SettingsScreen$lambda$11(Landroidx/compose/runtime/State;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$SettingsScreen$lambda$13(Landroidx/compose/runtime/MutableState;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sakukelly/music/ui/screens/SettingsScreenKt;->SettingsScreen$lambda$13(Landroidx/compose/runtime/MutableState;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$SettingsScreen$lambda$14(Landroidx/compose/runtime/MutableState;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sakukelly/music/ui/screens/SettingsScreenKt;->SettingsScreen$lambda$14(Landroidx/compose/runtime/MutableState;Z)V

    return-void
.end method

.method public static final synthetic access$SettingsScreen$lambda$17(Landroidx/compose/runtime/State;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sakukelly/music/ui/screens/SettingsScreenKt;->SettingsScreen$lambda$17(Landroidx/compose/runtime/State;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$SettingsScreen$lambda$2(Landroidx/compose/runtime/State;)F
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sakukelly/music/ui/screens/SettingsScreenKt;->SettingsScreen$lambda$2(Landroidx/compose/runtime/State;)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$SettingsScreen$lambda$3(Landroidx/compose/runtime/State;)F
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sakukelly/music/ui/screens/SettingsScreenKt;->SettingsScreen$lambda$3(Landroidx/compose/runtime/State;)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$SettingsScreen$lambda$4(Landroidx/compose/runtime/State;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sakukelly/music/ui/screens/SettingsScreenKt;->SettingsScreen$lambda$4(Landroidx/compose/runtime/State;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$SettingsScreen$lambda$5(Landroidx/compose/runtime/State;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sakukelly/music/ui/screens/SettingsScreenKt;->SettingsScreen$lambda$5(Landroidx/compose/runtime/State;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$SettingsScreen$lambda$6(Landroidx/compose/runtime/State;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sakukelly/music/ui/screens/SettingsScreenKt;->SettingsScreen$lambda$6(Landroidx/compose/runtime/State;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$SettingsScreen$lambda$7(Landroidx/compose/runtime/State;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sakukelly/music/ui/screens/SettingsScreenKt;->SettingsScreen$lambda$7(Landroidx/compose/runtime/State;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$SettingsScreen$lambda$8(Landroidx/compose/runtime/State;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sakukelly/music/ui/screens/SettingsScreenKt;->SettingsScreen$lambda$8(Landroidx/compose/runtime/State;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$SettingsScreen$lambda$9(Landroidx/compose/runtime/State;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sakukelly/music/ui/screens/SettingsScreenKt;->SettingsScreen$lambda$9(Landroidx/compose/runtime/State;)Z

    move-result p0

    return p0
.end method
