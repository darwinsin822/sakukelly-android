.class final Lcom/sakukelly/music/ui/components/SongItemKt$SongItem$2$5$3;
.super Ljava/lang/Object;
.source "SongItem.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/ui/components/SongItemKt;->SongItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/foundation/layout/ColumnScope;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSongItem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SongItem.kt\ncom/sakukelly/music/ui/components/SongItemKt$SongItem$2$5$3\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,194:1\n1225#2,6:195\n*S KotlinDebug\n*F\n+ 1 SongItem.kt\ncom/sakukelly/music/ui/components/SongItemKt$SongItem$2$5$3\n*L\n183#1:195,6\n*E\n"
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
.field final synthetic $expanded$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $favoriteColor:J

.field final synthetic $heartTapped$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $isFavLocal$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onFavoriteToggle:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$62LURbYYdP7mWxOyCVmdEv7bj08(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sakukelly/music/ui/components/SongItemKt$SongItem$2$5$3;->invoke$lambda$1$lambda$0(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;J)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sakukelly/music/ui/components/SongItemKt$SongItem$2$5$3;->$isFavLocal$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Lcom/sakukelly/music/ui/components/SongItemKt$SongItem$2$5$3;->$onFavoriteToggle:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/sakukelly/music/ui/components/SongItemKt$SongItem$2$5$3;->$heartTapped$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/sakukelly/music/ui/components/SongItemKt$SongItem$2$5$3;->$expanded$delegate:Landroidx/compose/runtime/MutableState;

    iput-wide p5, p0, Lcom/sakukelly/music/ui/components/SongItemKt$SongItem$2$5$3;->$favoriteColor:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$1$lambda$0(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$onFavoriteToggle"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$heartTapped$delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$isFavLocal$delegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$expanded$delegate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 187
    invoke-static {p3, v0}, Lcom/sakukelly/music/ui/components/SongItemKt;->access$SongItem$lambda$2(Landroidx/compose/runtime/MutableState;Z)V

    invoke-static {p0}, Lcom/sakukelly/music/ui/PlaylistHelper;->showAddToPlaylistFromCallback(Ljava/lang/Object;)V

    .line 188
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 168
    check-cast p1, Landroidx/compose/foundation/layout/ColumnScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/sakukelly/music/ui/components/SongItemKt$SongItem$2$5$3;->invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V
    .locals 13

    move-object v0, p0

    move-object v10, p2

    const-string v1, "$this$DropdownMenu"

    move-object v2, p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v1, p3, 0x51

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    .line 169
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 170
    :cond_1
    :goto_0
    new-instance v1, Lcom/sakukelly/music/ui/components/SongItemKt$SongItem$2$5$3$1;

    iget-object v2, v0, Lcom/sakukelly/music/ui/components/SongItemKt$SongItem$2$5$3;->$isFavLocal$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {v1, v2}, Lcom/sakukelly/music/ui/components/SongItemKt$SongItem$2$5$3$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    const v2, 0x29ec77e4

    const/4 v3, 0x1

    const/16 v4, 0x36

    invoke-static {v2, v3, v1, p2, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function2;

    const v2, 0x4cb81028    # 9.650208E7f

    invoke-interface {p2, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    iget-object v2, v0, Lcom/sakukelly/music/ui/components/SongItemKt$SongItem$2$5$3;->$isFavLocal$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {p2, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    iget-object v5, v0, Lcom/sakukelly/music/ui/components/SongItemKt$SongItem$2$5$3;->$onFavoriteToggle:Lkotlin/jvm/functions/Function0;

    invoke-interface {p2, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v2, v5

    .line 183
    iget-object v5, v0, Lcom/sakukelly/music/ui/components/SongItemKt$SongItem$2$5$3;->$onFavoriteToggle:Lkotlin/jvm/functions/Function0;

    iget-object v6, v0, Lcom/sakukelly/music/ui/components/SongItemKt$SongItem$2$5$3;->$heartTapped$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v7, v0, Lcom/sakukelly/music/ui/components/SongItemKt$SongItem$2$5$3;->$isFavLocal$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v8, v0, Lcom/sakukelly/music/ui/components/SongItemKt$SongItem$2$5$3;->$expanded$delegate:Landroidx/compose/runtime/MutableState;

    .line 195
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v2, :cond_2

    .line 196
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v9, v2, :cond_3

    .line 183
    :cond_2
    new-instance v9, Lcom/sakukelly/music/ui/components/SongItemKt$SongItem$2$5$3$$ExternalSyntheticLambda0;

    invoke-direct {v9, v5, v6, v7, v8}, Lcom/sakukelly/music/ui/components/SongItemKt$SongItem$2$5$3$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    .line 198
    invoke-interface {p2, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 183
    :cond_3
    move-object v2, v9

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 176
    new-instance v5, Lcom/sakukelly/music/ui/components/SongItemKt$SongItem$2$5$3$3;

    iget-wide v6, v0, Lcom/sakukelly/music/ui/components/SongItemKt$SongItem$2$5$3;->$favoriteColor:J

    iget-object v8, v0, Lcom/sakukelly/music/ui/components/SongItemKt$SongItem$2$5$3;->$isFavLocal$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {v5, v6, v7, v8}, Lcom/sakukelly/music/ui/components/SongItemKt$SongItem$2$5$3$3;-><init>(JLandroidx/compose/runtime/MutableState;)V

    const v6, -0x24ca8fbf

    invoke-static {v6, v3, v5, p2, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/16 v11, 0xc06

    const/16 v12, 0x1f4

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v10, p2

    .line 169
    invoke-static/range {v1 .. v12}, Landroidx/compose/material3/AndroidMenu_androidKt;->DropdownMenuItem(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/MenuItemColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    :goto_1
    return-void
.end method
