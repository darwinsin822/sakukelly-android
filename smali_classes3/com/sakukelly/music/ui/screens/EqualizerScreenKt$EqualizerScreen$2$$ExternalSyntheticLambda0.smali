.class public final synthetic Lcom/sakukelly/music/ui/screens/EqualizerScreenKt$EqualizerScreen$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Landroidx/compose/runtime/State;

.field public final synthetic f$2:Lcom/sakukelly/music/domain/equalizer/EqualizerManager;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Landroidx/compose/runtime/State;Lcom/sakukelly/music/domain/equalizer/EqualizerManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sakukelly/music/ui/screens/EqualizerScreenKt$EqualizerScreen$2$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/sakukelly/music/ui/screens/EqualizerScreenKt$EqualizerScreen$2$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/runtime/State;

    iput-object p3, p0, Lcom/sakukelly/music/ui/screens/EqualizerScreenKt$EqualizerScreen$2$$ExternalSyntheticLambda0;->f$2:Lcom/sakukelly/music/domain/equalizer/EqualizerManager;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/sakukelly/music/ui/screens/EqualizerScreenKt$EqualizerScreen$2$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/sakukelly/music/ui/screens/EqualizerScreenKt$EqualizerScreen$2$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/runtime/State;

    iget-object v2, p0, Lcom/sakukelly/music/ui/screens/EqualizerScreenKt$EqualizerScreen$2$$ExternalSyntheticLambda0;->f$2:Lcom/sakukelly/music/domain/equalizer/EqualizerManager;

    check-cast p1, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-static {v0, v1, v2, p1}, Lcom/sakukelly/music/ui/screens/EqualizerScreenKt$EqualizerScreen$2;->$r8$lambda$27m9vrOdDuLX8dcsSUitKWxciuM(Ljava/util/List;Landroidx/compose/runtime/State;Lcom/sakukelly/music/domain/equalizer/EqualizerManager;Landroidx/compose/foundation/lazy/LazyListScope;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
