.class public final synthetic Lcom/sakukelly/music/ui/screens/SettingsScreenKt$SettingsScreen$2$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sakukelly/music/ui/screens/SettingsScreenKt$SettingsScreen$2$$ExternalSyntheticLambda15;->f$0:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sakukelly/music/ui/screens/SettingsScreenKt$SettingsScreen$2$$ExternalSyntheticLambda15;->f$0:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/sakukelly/music/ui/screens/SettingsScreenKt$SettingsScreen$2;->$r8$lambda$nkUMSKYDoETpgPhJiGj1y30P5vA(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;F)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
