.class final Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$3;
.super Ljava/lang/Object;
.source "HomeScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


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
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHomeScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HomeScreen.kt\ncom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$3\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,862:1\n1872#2,2:863\n1874#2:871\n1225#3,6:865\n*S KotlinDebug\n*F\n+ 1 HomeScreen.kt\ncom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$3\n*L\n203#1:863,2\n203#1:871\n206#1:865,6\n*E\n"
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
.field final synthetic $selectedTab$delegate:Landroidx/compose/runtime/MutableIntState;

.field final synthetic $tabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1wFYLWBsqWuKh739fr_2_hGHiFw(ILandroidx/compose/runtime/MutableIntState;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$3;->invoke$lambda$2$lambda$1$lambda$0(ILandroidx/compose/runtime/MutableIntState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Ljava/util/List;Landroidx/compose/runtime/MutableIntState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableIntState;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$3;->$tabs:Ljava/util/List;

    iput-object p2, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$3;->$selectedTab$delegate:Landroidx/compose/runtime/MutableIntState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$2$lambda$1$lambda$0(ILandroidx/compose/runtime/MutableIntState;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$selectedTab$delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-static {p1, p0}, Lcom/sakukelly/music/ui/screens/HomeScreenKt;->access$HomeScreen$lambda$13(Landroidx/compose/runtime/MutableIntState;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 202
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$3;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    and-int/lit8 v1, p2, 0xb

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 203
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_3

    .line 203
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$3;->$tabs:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    iget-object v14, v0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$3;->$selectedTab$delegate:Landroidx/compose/runtime/MutableIntState;

    .line 864
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v1, v17

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v18, v1, 0x1

    if-gez v1, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_2
    check-cast v2, Ljava/lang/String;

    .line 205
    invoke-static {v14}, Lcom/sakukelly/music/ui/screens/HomeScreenKt;->access$HomeScreen$lambda$12(Landroidx/compose/runtime/MutableIntState;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v1, :cond_3

    move v3, v4

    goto :goto_2

    :cond_3
    move/from16 v3, v17

    :goto_2
    const v5, 0x3c5ddf42

    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v15, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v6

    or-int/2addr v5, v6

    .line 865
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_4

    .line 866
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v6, v5, :cond_5

    .line 206
    :cond_4
    new-instance v6, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$3$$ExternalSyntheticLambda0;

    invoke-direct {v6, v1, v14}, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$3$$ExternalSyntheticLambda0;-><init>(ILandroidx/compose/runtime/MutableIntState;)V

    .line 868
    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 206
    :cond_5
    move-object v5, v6

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 207
    new-instance v6, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$3$1$2;

    invoke-direct {v6, v1, v2, v14}, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$3$1$2;-><init>(ILjava/lang/String;Landroidx/compose/runtime/MutableIntState;)V

    const/16 v1, 0x36

    const v2, -0x16ae1b66

    invoke-static {v2, v4, v6, v15, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/16 v13, 0x6000

    const/16 v19, 0x1ec

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/16 v20, 0x0

    move v1, v3

    move-object v2, v5

    move-object v3, v4

    move v4, v7

    move-object v5, v6

    move-object v6, v8

    move-wide v7, v9

    move-wide v9, v11

    move-object/from16 v11, v20

    move-object/from16 v12, p1

    move-object/from16 v20, v14

    move/from16 v14, v19

    .line 204
    invoke-static/range {v1 .. v14}, Landroidx/compose/material3/TabKt;->Tab-wqdebIU(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;JJLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    move/from16 v1, v18

    move-object/from16 v14, v20

    goto :goto_1

    :cond_6
    :goto_3
    return-void
.end method
