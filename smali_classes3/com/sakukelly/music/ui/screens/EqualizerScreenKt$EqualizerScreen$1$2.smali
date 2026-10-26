.class final Lcom/sakukelly/music/ui/screens/EqualizerScreenKt$EqualizerScreen$1$2;
.super Ljava/lang/Object;
.source "EqualizerScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/ui/screens/EqualizerScreenKt$EqualizerScreen$1;->invoke(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/foundation/layout/RowScope;",
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


# direct methods
.method public static synthetic $r8$lambda$uJgQsDiIld6neSBWJimMn-j1Z_M(Lcom/sakukelly/music/domain/equalizer/EqualizerManager;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/sakukelly/music/ui/screens/EqualizerScreenKt$EqualizerScreen$1$2;->invoke$lambda$0(Lcom/sakukelly/music/domain/equalizer/EqualizerManager;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/sakukelly/music/domain/equalizer/EqualizerManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sakukelly/music/ui/screens/EqualizerScreenKt$EqualizerScreen$1$2;->$eqManager:Lcom/sakukelly/music/domain/equalizer/EqualizerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/sakukelly/music/domain/equalizer/EqualizerManager;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$eqManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    const-string v0, "Flat"

    invoke-virtual {p0, v0}, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->applyPreset(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 65
    check-cast p1, Landroidx/compose/foundation/layout/RowScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/sakukelly/music/ui/screens/EqualizerScreenKt$EqualizerScreen$1$2;->invoke(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)V
    .locals 9

    const-string v0, "$this$TopAppBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 p1, p3, 0x51

    const/16 p3, 0x10

    if-ne p1, p3, :cond_1

    .line 66
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 66
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/sakukelly/music/ui/screens/EqualizerScreenKt$EqualizerScreen$1$2;->$eqManager:Lcom/sakukelly/music/domain/equalizer/EqualizerManager;

    new-instance v0, Lcom/sakukelly/music/ui/screens/EqualizerScreenKt$EqualizerScreen$1$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/sakukelly/music/ui/screens/EqualizerScreenKt$EqualizerScreen$1$2$$ExternalSyntheticLambda0;-><init>(Lcom/sakukelly/music/domain/equalizer/EqualizerManager;)V

    sget-object p1, Lcom/sakukelly/music/ui/screens/ComposableSingletons$EqualizerScreenKt;->INSTANCE:Lcom/sakukelly/music/ui/screens/ComposableSingletons$EqualizerScreenKt;

    invoke-virtual {p1}, Lcom/sakukelly/music/ui/screens/ComposableSingletons$EqualizerScreenKt;->getLambda-3$app_release()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    const/high16 v7, 0x30000

    const/16 v8, 0x1e

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, p2

    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/IconButtonKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    :goto_1
    return-void
.end method
