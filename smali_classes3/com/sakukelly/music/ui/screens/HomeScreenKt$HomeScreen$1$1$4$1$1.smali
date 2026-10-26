.class final Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$4$1$1;
.super Ljava/lang/Object;
.source "HomeScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/ui/screens/HomeScreenKt;->HomeScreen(Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/foundation/lazy/LazyItemScope;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHomeScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HomeScreen.kt\ncom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$4$1$1\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 LazyDsl.kt\nandroidx/compose/foundation/lazy/LazyDslKt\n*L\n1#1,862:1\n149#2:863\n149#2:864\n149#2:865\n143#3,12:866\n*S KotlinDebug\n*F\n+ 1 HomeScreen.kt\ncom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$4$1$1\n*L\n235#1:863\n238#1:864\n239#1:865\n241#1:866,12\n*E\n"
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
.field final synthetic $dailyMixes$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/util/List<",
            "Lcom/sakukelly/music/domain/recommendations/DailyMix;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $onNavigateToPlayer:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $playerViewModel:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;


# direct methods
.method public static synthetic $r8$lambda$vj6WSd8cRS4Z42RMV0bHpgfK8M4(Landroidx/compose/runtime/State;Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/LazyListScope;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$4$1$1;->invoke$lambda$1(Landroidx/compose/runtime/State;Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/LazyListScope;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Landroidx/compose/runtime/State;Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/util/List<",
            "Lcom/sakukelly/music/domain/recommendations/DailyMix;",
            ">;>;",
            "Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$4$1$1;->$dailyMixes$delegate:Landroidx/compose/runtime/State;

    iput-object p2, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$4$1$1;->$playerViewModel:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    iput-object p3, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$4$1$1;->$onNavigateToPlayer:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$1(Landroidx/compose/runtime/State;Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/LazyListScope;)Lkotlin/Unit;
    .locals 3

    const-string v0, "$dailyMixes$delegate"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$playerViewModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$onNavigateToPlayer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$LazyRow"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    invoke-static {p0}, Lcom/sakukelly/music/ui/screens/HomeScreenKt;->access$HomeScreen$lambda$3(Landroidx/compose/runtime/State;)Ljava/util/List;

    move-result-object p0

    .line 869
    sget-object v0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$4$1$1$invoke$lambda$1$$inlined$items$default$1;->INSTANCE:Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$4$1$1$invoke$lambda$1$$inlined$items$default$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 872
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 871
    new-instance v2, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$4$1$1$invoke$lambda$1$$inlined$items$default$3;

    invoke-direct {v2, v0, p0}, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$4$1$1$invoke$lambda$1$$inlined$items$default$3;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 875
    new-instance v0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$4$1$1$invoke$lambda$1$$inlined$items$default$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$4$1$1$invoke$lambda$1$$inlined$items$default$4;-><init>(Ljava/util/List;Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lkotlin/jvm/functions/Function0;)V

    const p0, -0x25b7f321

    const/4 p1, 0x1

    invoke-static {p0, p1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object p0

    check-cast p0, Lkotlin/jvm/functions/Function4;

    const/4 p1, 0x0

    .line 871
    invoke-interface {p3, v1, p1, v2, p0}, Landroidx/compose/foundation/lazy/LazyListScope;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    .line 252
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 230
    check-cast p1, Landroidx/compose/foundation/lazy/LazyItemScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$4$1$1;->invoke(Landroidx/compose/foundation/lazy/LazyItemScope;Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/foundation/lazy/LazyItemScope;Landroidx/compose/runtime/Composer;I)V
    .locals 28

    move-object/from16 v0, p0

    const-string v1, "$this$item"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v1, p3, 0x51

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    .line 231
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v1, 0x11

    .line 233
    invoke-static {v1}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v7

    .line 234
    sget-object v1, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getBold()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v10

    .line 235
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    int-to-float v2, v2

    .line 863
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    const/16 v4, 0x8

    int-to-float v4, v4

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 235
    invoke-static {v1, v3, v4}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const/16 v26, 0x0

    const v27, 0x1ffd4

    .line 231
    const-string v3, "Mixes Diarios para Ti"

    const-wide/16 v5, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const v25, 0x30c36

    move-object/from16 v24, p2

    invoke-static/range {v3 .. v27}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 864
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 238
    invoke-static {v1, v4, v2, v3}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-YgX7TsA$default(FFILjava/lang/Object;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v7

    .line 239
    sget-object v1, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    const/16 v2, 0xe

    int-to-float v2, v2

    .line 865
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 239
    invoke-virtual {v1, v2}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 237
    iget-object v1, v0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$4$1$1;->$dailyMixes$delegate:Landroidx/compose/runtime/State;

    iget-object v2, v0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$4$1$1;->$playerViewModel:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    iget-object v3, v0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$4$1$1;->$onNavigateToPlayer:Lkotlin/jvm/functions/Function0;

    new-instance v13, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$4$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v13, v1, v2, v3}, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$4$1$1$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/State;Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lkotlin/jvm/functions/Function0;)V

    const/16 v15, 0x6180

    const/16 v16, 0xeb

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v14, p2

    invoke-static/range {v5 .. v16}, Landroidx/compose/foundation/lazy/LazyDslKt;->LazyRow(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/FlingBehavior;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    :goto_1
    return-void
.end method
