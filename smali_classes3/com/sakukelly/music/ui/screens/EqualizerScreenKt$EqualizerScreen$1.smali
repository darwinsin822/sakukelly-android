.class final Lcom/sakukelly/music/ui/screens/EqualizerScreenKt$EqualizerScreen$1;
.super Ljava/lang/Object;
.source "EqualizerScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/ui/screens/EqualizerScreenKt;->EqualizerScreen(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
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
.field final synthetic $eqManager:Lcom/sakukelly/music/domain/equalizer/EqualizerManager;

.field final synthetic $onBack:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;Lcom/sakukelly/music/domain/equalizer/EqualizerManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/sakukelly/music/domain/equalizer/EqualizerManager;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sakukelly/music/ui/screens/EqualizerScreenKt$EqualizerScreen$1;->$onBack:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/sakukelly/music/ui/screens/EqualizerScreenKt$EqualizerScreen$1;->$eqManager:Lcom/sakukelly/music/domain/equalizer/EqualizerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 51
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sakukelly/music/ui/screens/EqualizerScreenKt$EqualizerScreen$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 11

    and-int/lit8 p2, p2, 0xb

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 52
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 52
    :cond_1
    :goto_0
    sget-object p2, Lcom/sakukelly/music/ui/screens/ComposableSingletons$EqualizerScreenKt;->INSTANCE:Lcom/sakukelly/music/ui/screens/ComposableSingletons$EqualizerScreenKt;

    invoke-virtual {p2}, Lcom/sakukelly/music/ui/screens/ComposableSingletons$EqualizerScreenKt;->getLambda-1$app_release()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    .line 60
    new-instance p2, Lcom/sakukelly/music/ui/screens/EqualizerScreenKt$EqualizerScreen$1$1;

    iget-object v1, p0, Lcom/sakukelly/music/ui/screens/EqualizerScreenKt$EqualizerScreen$1;->$onBack:Lkotlin/jvm/functions/Function0;

    invoke-direct {p2, v1}, Lcom/sakukelly/music/ui/screens/EqualizerScreenKt$EqualizerScreen$1$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    const v1, 0x4bbc17d

    const/4 v2, 0x1

    const/16 v3, 0x36

    invoke-static {v1, v2, p2, p1, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object p2

    check-cast p2, Lkotlin/jvm/functions/Function2;

    .line 65
    new-instance v1, Lcom/sakukelly/music/ui/screens/EqualizerScreenKt$EqualizerScreen$1$2;

    iget-object v4, p0, Lcom/sakukelly/music/ui/screens/EqualizerScreenKt$EqualizerScreen$1;->$eqManager:Lcom/sakukelly/music/domain/equalizer/EqualizerManager;

    invoke-direct {v1, v4}, Lcom/sakukelly/music/ui/screens/EqualizerScreenKt$EqualizerScreen$1$2;-><init>(Lcom/sakukelly/music/domain/equalizer/EqualizerManager;)V

    const v4, -0x7297464c

    invoke-static {v4, v2, v1, p1, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function3;

    const/16 v9, 0xd86

    const/16 v10, 0xf2

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p2

    move-object v8, p1

    .line 52
    invoke-static/range {v0 .. v10}, Landroidx/compose/material3/AppBarKt;->TopAppBar-GHTll3U(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/TopAppBarScrollBehavior;Landroidx/compose/runtime/Composer;II)V

    :goto_1
    return-void
.end method
