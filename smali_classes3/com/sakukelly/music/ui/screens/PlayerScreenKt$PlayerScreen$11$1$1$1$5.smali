.class final Lcom/sakukelly/music/ui/screens/PlayerScreenKt$PlayerScreen$11$1$1$1$5;
.super Ljava/lang/Object;
.source "PlayerScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/ui/screens/PlayerScreenKt$PlayerScreen$11;->invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V
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
.field final synthetic $index:I

.field final synthetic $playerViewModel:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;


# direct methods
.method constructor <init>(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;I)V
    .locals 0

    iput-object p1, p0, Lcom/sakukelly/music/ui/screens/PlayerScreenKt$PlayerScreen$11$1$1$1$5;->$playerViewModel:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    iput p2, p0, Lcom/sakukelly/music/ui/screens/PlayerScreenKt$PlayerScreen$11$1$1$1$5;->$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 636
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sakukelly/music/ui/screens/PlayerScreenKt$PlayerScreen$11$1$1$1$5;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 11

    and-int/lit8 p2, p2, 0xb

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 637
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 639
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 637
    :cond_1
    :goto_0
    new-instance p2, Lcom/sakukelly/music/ui/screens/PlayerScreenKt$PlayerScreen$11$1$1$1$5$1;

    iget-object v0, p0, Lcom/sakukelly/music/ui/screens/PlayerScreenKt$PlayerScreen$11$1$1$1$5;->$playerViewModel:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    iget v1, p0, Lcom/sakukelly/music/ui/screens/PlayerScreenKt$PlayerScreen$11$1$1$1$5;->$index:I

    invoke-direct {p2, v0, v1}, Lcom/sakukelly/music/ui/screens/PlayerScreenKt$PlayerScreen$11$1$1$1$5$1;-><init>(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;I)V

    move-object v2, p2

    check-cast v2, Lkotlin/jvm/functions/Function0;

    sget-object p2, Lcom/sakukelly/music/ui/screens/ComposableSingletons$PlayerScreenKt;->INSTANCE:Lcom/sakukelly/music/ui/screens/ComposableSingletons$PlayerScreenKt;

    invoke-virtual {p2}, Lcom/sakukelly/music/ui/screens/ComposableSingletons$PlayerScreenKt;->getLambda-13$app_release()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    const/high16 v9, 0x30000

    const/16 v10, 0x1e

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v8, p1

    invoke-static/range {v2 .. v10}, Landroidx/compose/material3/IconButtonKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    :goto_1
    return-void
.end method
