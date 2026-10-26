.class final Lcom/sakukelly/music/ui/screens/EqualizerScreenKt$EqualizerScreen$2$1$2$1$1;
.super Ljava/lang/Object;
.source "EqualizerScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/ui/screens/EqualizerScreenKt$EqualizerScreen$2;->invoke(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
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

.field final synthetic $preset:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sakukelly/music/domain/equalizer/EqualizerManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sakukelly/music/ui/screens/EqualizerScreenKt$EqualizerScreen$2$1$2$1$1;->$eqManager:Lcom/sakukelly/music/domain/equalizer/EqualizerManager;

    iput-object p2, p0, Lcom/sakukelly/music/ui/screens/EqualizerScreenKt$EqualizerScreen$2$1$2$1$1;->$preset:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 126
    invoke-virtual {p0}, Lcom/sakukelly/music/ui/screens/EqualizerScreenKt$EqualizerScreen$2$1$2$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/sakukelly/music/ui/screens/EqualizerScreenKt$EqualizerScreen$2$1$2$1$1;->$eqManager:Lcom/sakukelly/music/domain/equalizer/EqualizerManager;

    iget-object v1, p0, Lcom/sakukelly/music/ui/screens/EqualizerScreenKt$EqualizerScreen$2$1$2$1$1;->$preset:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sakukelly/music/domain/equalizer/EqualizerManager;->applyPreset(Ljava/lang/String;)V

    return-void
.end method
