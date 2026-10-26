.class public final synthetic Lcom/sakukelly/music/ui/screens/EqualizerScreenKt$EqualizerScreen$2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/sakukelly/music/domain/equalizer/EqualizerManager;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/sakukelly/music/domain/equalizer/EqualizerManager;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sakukelly/music/ui/screens/EqualizerScreenKt$EqualizerScreen$2$$ExternalSyntheticLambda1;->f$0:Lcom/sakukelly/music/domain/equalizer/EqualizerManager;

    iput p2, p0, Lcom/sakukelly/music/ui/screens/EqualizerScreenKt$EqualizerScreen$2$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/sakukelly/music/ui/screens/EqualizerScreenKt$EqualizerScreen$2$$ExternalSyntheticLambda1;->f$0:Lcom/sakukelly/music/domain/equalizer/EqualizerManager;

    iget v1, p0, Lcom/sakukelly/music/ui/screens/EqualizerScreenKt$EqualizerScreen$2$$ExternalSyntheticLambda1;->f$1:I

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/sakukelly/music/ui/screens/EqualizerScreenKt$EqualizerScreen$2;->$r8$lambda$C9OWmyo8BmUylSr10Jvmk-sM8m0(Lcom/sakukelly/music/domain/equalizer/EqualizerManager;IF)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
