.class public final Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$lambda$77$lambda$76$lambda$75$lambda$44$$inlined$items$default$4;
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
    value = "SMAP\nLazyDsl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyDsl.kt\nandroidx/compose/foundation/lazy/LazyDslKt$items$4\n+ 2 HomeScreen.kt\ncom/sakukelly/music/ui/screens/HomeScreenKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,433:1\n389#2:434\n390#2:438\n415#2:441\n393#2,3:442\n392#2:445\n422#2:446\n774#3:435\n865#3,2:436\n295#3,2:439\n*S KotlinDebug\n*F\n+ 1 HomeScreen.kt\ncom/sakukelly/music/ui/screens/HomeScreenKt\n*L\n389#1:435\n389#1:436,2\n390#1:439,2\n*E\n"
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
.field final synthetic $items:Ljava/util/List;

.field final synthetic $onNavigateToPlayer$inlined:Lkotlin/jvm/functions/Function0;

.field final synthetic $playerViewModel$inlined:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

.field final synthetic $songs$delegate$inlined:Landroidx/compose/runtime/State;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroidx/compose/runtime/State;Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$lambda$77$lambda$76$lambda$75$lambda$44$$inlined$items$default$4;->$items:Ljava/util/List;

    iput-object p2, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$lambda$77$lambda$76$lambda$75$lambda$44$$inlined$items$default$4;->$songs$delegate$inlined:Landroidx/compose/runtime/State;

    iput-object p3, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$lambda$77$lambda$76$lambda$75$lambda$44$$inlined$items$default$4;->$playerViewModel$inlined:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    iput-object p4, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$lambda$77$lambda$76$lambda$75$lambda$44$$inlined$items$default$4;->$onNavigateToPlayer$inlined:Lkotlin/jvm/functions/Function0;

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

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$lambda$77$lambda$76$lambda$75$lambda$44$$inlined$items$default$4;->invoke(Landroidx/compose/foundation/lazy/LazyItemScope;ILandroidx/compose/runtime/Composer;I)V

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

    if-nez v2, :cond_1

    move-object v2, p1

    invoke-interface {v13, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int v2, p4, v2

    goto :goto_1

    :cond_1
    move/from16 v2, p4

    :goto_1
    and-int/lit8 v3, p4, 0x30

    if-nez v3, :cond_3

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x20

    goto :goto_2

    :cond_2
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v2, v3

    :cond_3
    and-int/lit16 v3, v2, 0x93

    const/16 v4, 0x92

    if-ne v3, v4, :cond_5

    .line 153
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_6

    :cond_5
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, -0x1

    const-string v4, "androidx.compose.foundation.lazy.items.<anonymous> (LazyDsl.kt:152)"

    const v5, -0x25b7f321

    invoke-static {v5, v2, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_6
    iget-object v2, v0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$lambda$77$lambda$76$lambda$75$lambda$44$$inlined$items$default$4;->$items:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const v2, 0x25354de7

    .line 434
    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    iget-object v2, v0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$lambda$77$lambda$76$lambda$75$lambda$44$$inlined$items$default$4;->$songs$delegate$inlined:Landroidx/compose/runtime/State;

    invoke-static {v2}, Lcom/sakukelly/music/ui/screens/HomeScreenKt;->access$HomeScreen$lambda$0(Landroidx/compose/runtime/State;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 435
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 436
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/sakukelly/music/data/model/Song;

    .line 434
    invoke-virtual {v5}, Lcom/sakukelly/music/data/model/Song;->getArtist()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 436
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 437
    :cond_8
    check-cast v3, Ljava/util/List;

    .line 438
    move-object v2, v3

    check-cast v2, Ljava/lang/Iterable;

    .line 439
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/sakukelly/music/data/model/Song;

    .line 438
    invoke-virtual {v6}, Lcom/sakukelly/music/data/model/Song;->getArtworkUri()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_9

    goto :goto_5

    :cond_a
    move-object v4, v5

    :goto_5
    check-cast v4, Lcom/sakukelly/music/data/model/Song;

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lcom/sakukelly/music/data/model/Song;->getArtworkUri()Ljava/lang/String;

    move-result-object v5

    .line 441
    :cond_b
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v6, v2

    check-cast v6, Landroidx/compose/ui/Modifier;

    new-instance v2, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$4$6$2$1;

    iget-object v4, v0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$lambda$77$lambda$76$lambda$75$lambda$44$$inlined$items$default$4;->$playerViewModel$inlined:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    iget-object v7, v0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$lambda$77$lambda$76$lambda$75$lambda$44$$inlined$items$default$4;->$onNavigateToPlayer$inlined:Lkotlin/jvm/functions/Function0;

    invoke-direct {v2, v3, v4, v7}, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$4$6$2$1;-><init>(Ljava/util/List;Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lkotlin/jvm/functions/Function0;)V

    move-object v10, v2

    check-cast v10, Lkotlin/jvm/functions/Function0;

    const/4 v11, 0x7

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v12}, Landroidx/compose/foundation/ClickableKt;->clickable-XHw0xAI$default(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 442
    new-instance v4, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$4$6$2$2;

    invoke-direct {v4, v1}, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$4$6$2$2;-><init>(Ljava/lang/String;)V

    const v6, 0x32ff2048

    const/4 v7, 0x1

    const/16 v8, 0x36

    invoke-static {v6, v7, v4, v13, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v4

    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 443
    new-instance v6, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$4$6$2$3;

    invoke-direct {v6, v3}, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$4$6$2$3;-><init>(Ljava/util/List;)V

    const v3, -0x5053c8f5

    invoke-static {v3, v7, v6, v13, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 444
    new-instance v3, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$4$6$2$4;

    invoke-direct {v3, v5, v1}, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$4$6$2$4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v1, -0x7c1a16b4

    invoke-static {v1, v7, v3, v13, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/16 v11, 0x6c06

    const/16 v12, 0x1e4

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v4

    move-object v4, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move v9, v10

    move-object/from16 v10, p3

    .line 445
    invoke-static/range {v1 .. v12}, Landroidx/compose/material3/ListItemKt;->ListItem-HXNGIdc(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/ListItemColors;FFLandroidx/compose/runtime/Composer;II)V

    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 153
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_c
    :goto_6
    return-void
.end method
