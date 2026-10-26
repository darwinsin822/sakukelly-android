.class public final Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$lambda$77$lambda$76$lambda$75$lambda$63$lambda$62$$inlined$items$default$4;
.super Lkotlin/jvm/internal/Lambda;
.source "LazyDsl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/ui/screens/HomeScreenKt;->HomeScreen(Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function4<",
        "Landroidx/compose/foundation/lazy/LazyItemScope;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyDsl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyDsl.kt\nandroidx/compose/foundation/lazy/LazyDslKt$items$4\n+ 2 HomeScreen.kt\ncom/sakukelly/music/ui/screens/HomeScreenKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,433:1\n487#2,4:434\n491#2,10:439\n1#3:438\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u000b\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Landroidx/compose/foundation/lazy/LazyItemScope;",
        "it",
        "",
        "invoke",
        "(Landroidx/compose/foundation/lazy/LazyItemScope;ILandroidx/compose/runtime/Composer;I)V",
        "androidx/compose/foundation/lazy/LazyDslKt$items$4"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $currentSong$delegate$inlined:Landroidx/compose/runtime/State;

.field final synthetic $folderSongs$inlined:Ljava/util/List;

.field final synthetic $isPlaying$delegate$inlined:Landroidx/compose/runtime/State;

.field final synthetic $items:Ljava/util/List;

.field final synthetic $libraryViewModel$inlined:Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;

.field final synthetic $onNavigateToPlayer$inlined:Lkotlin/jvm/functions/Function0;

.field final synthetic $playerViewModel$inlined:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Ljava/util/List;Lkotlin/jvm/functions/Function0;Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$lambda$77$lambda$76$lambda$75$lambda$63$lambda$62$$inlined$items$default$4;->$items:Ljava/util/List;

    iput-object p2, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$lambda$77$lambda$76$lambda$75$lambda$63$lambda$62$$inlined$items$default$4;->$currentSong$delegate$inlined:Landroidx/compose/runtime/State;

    iput-object p3, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$lambda$77$lambda$76$lambda$75$lambda$63$lambda$62$$inlined$items$default$4;->$isPlaying$delegate$inlined:Landroidx/compose/runtime/State;

    iput-object p4, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$lambda$77$lambda$76$lambda$75$lambda$63$lambda$62$$inlined$items$default$4;->$playerViewModel$inlined:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    iput-object p5, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$lambda$77$lambda$76$lambda$75$lambda$63$lambda$62$$inlined$items$default$4;->$folderSongs$inlined:Ljava/util/List;

    iput-object p6, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$lambda$77$lambda$76$lambda$75$lambda$63$lambda$62$$inlined$items$default$4;->$onNavigateToPlayer$inlined:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$lambda$77$lambda$76$lambda$75$lambda$63$lambda$62$$inlined$items$default$4;->$libraryViewModel$inlined:Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 152
    check-cast p1, Landroidx/compose/foundation/lazy/LazyItemScope;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Landroidx/compose/runtime/Composer;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$lambda$77$lambda$76$lambda$75$lambda$63$lambda$62$$inlined$items$default$4;->invoke(Landroidx/compose/foundation/lazy/LazyItemScope;ILandroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/foundation/lazy/LazyItemScope;ILandroidx/compose/runtime/Composer;I)V
    .locals 14

    move-object v0, p0

    move/from16 v1, p2

    move-object/from16 v13, p3

    const-string v2, "C152@7074L22:LazyDsl.kt#428nma"

    invoke-static {v13, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, p4, 0x6

    const/4 v3, 0x2

    if-nez v2, :cond_1

    move-object v2, p1

    invoke-interface {v13, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    or-int v2, p4, v2

    goto :goto_1

    :cond_1
    move/from16 v2, p4

    :goto_1
    and-int/lit8 v4, p4, 0x30

    if-nez v4, :cond_3

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x20

    goto :goto_2

    :cond_2
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v2, v4

    :cond_3
    and-int/lit16 v4, v2, 0x93

    const/16 v5, 0x92

    if-ne v4, v5, :cond_5

    .line 153
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_6

    :cond_5
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, -0x1

    const-string v5, "androidx.compose.foundation.lazy.items.<anonymous> (LazyDsl.kt:152)"

    const v6, -0x25b7f321

    invoke-static {v6, v2, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_6
    iget-object v2, v0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$lambda$77$lambda$76$lambda$75$lambda$63$lambda$62$$inlined$items$default$4;->$items:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sakukelly/music/data/model/Song;

    const v2, 0x7aca971

    .line 434
    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 435
    invoke-virtual {v1}, Lcom/sakukelly/music/data/model/Song;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 436
    invoke-virtual {v1}, Lcom/sakukelly/music/data/model/Song;->getArtist()Ljava/lang/String;

    move-result-object v4

    .line 437
    invoke-virtual {v1}, Lcom/sakukelly/music/data/model/Song;->getDuration()J

    move-result-wide v5

    const/16 v7, 0x3e8

    int-to-long v7, v7

    div-long/2addr v5, v7

    sget-object v7, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/16 v7, 0x3c

    int-to-long v7, v7

    div-long v9, v5, v7

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    rem-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v9, v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v5, "%02d:%02d"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "format(...)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 439
    invoke-virtual {v1}, Lcom/sakukelly/music/data/model/Song;->getArtworkUri()Ljava/lang/String;

    move-result-object v5

    .line 440
    iget-object v6, v0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$lambda$77$lambda$76$lambda$75$lambda$63$lambda$62$$inlined$items$default$4;->$currentSong$delegate$inlined:Landroidx/compose/runtime/State;

    invoke-static {v6}, Lcom/sakukelly/music/ui/screens/HomeScreenKt;->access$HomeScreen$lambda$6(Landroidx/compose/runtime/State;)Lcom/sakukelly/music/data/model/Song;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcom/sakukelly/music/data/model/Song;->getPath()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_7
    const/4 v6, 0x0

    :goto_4
    invoke-virtual {v1}, Lcom/sakukelly/music/data/model/Song;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, v0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$lambda$77$lambda$76$lambda$75$lambda$63$lambda$62$$inlined$items$default$4;->$isPlaying$delegate$inlined:Landroidx/compose/runtime/State;

    invoke-static {v6}, Lcom/sakukelly/music/ui/screens/HomeScreenKt;->access$HomeScreen$lambda$7(Landroidx/compose/runtime/State;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x1

    goto :goto_5

    :cond_8
    const/4 v6, 0x0

    .line 441
    :goto_5
    invoke-virtual {v1}, Lcom/sakukelly/music/data/model/Song;->isFavorite()Z

    move-result v9

    .line 434
    new-instance v7, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$4$7$2$2$2;

    iget-object v8, v0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$lambda$77$lambda$76$lambda$75$lambda$63$lambda$62$$inlined$items$default$4;->$playerViewModel$inlined:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    iget-object v10, v0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$lambda$77$lambda$76$lambda$75$lambda$63$lambda$62$$inlined$items$default$4;->$folderSongs$inlined:Ljava/util/List;

    iget-object v11, v0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$lambda$77$lambda$76$lambda$75$lambda$63$lambda$62$$inlined$items$default$4;->$onNavigateToPlayer$inlined:Lkotlin/jvm/functions/Function0;

    invoke-direct {v7, v8, v10, v1, v11}, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$4$7$2$2$2;-><init>(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Ljava/util/List;Lcom/sakukelly/music/data/model/Song;Lkotlin/jvm/functions/Function0;)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    new-instance v8, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$4$7$2$2$3;

    iget-object v10, v0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$lambda$77$lambda$76$lambda$75$lambda$63$lambda$62$$inlined$items$default$4;->$libraryViewModel$inlined:Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;

    invoke-direct {v8, v10, v1}, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$4$7$2$2$3;-><init>(Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;Lcom/sakukelly/music/data/model/Song;)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    const/4 v11, 0x0

    const/16 v12, 0x80

    const/4 v10, 0x0

    move-object v1, v2

    move-object v2, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v10

    move-object/from16 v10, p3

    invoke-static/range {v1 .. v12}, Lcom/sakukelly/music/ui/components/SongItemKt;->SongItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;II)V

    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 153
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_9
    :goto_6
    return-void
.end method
