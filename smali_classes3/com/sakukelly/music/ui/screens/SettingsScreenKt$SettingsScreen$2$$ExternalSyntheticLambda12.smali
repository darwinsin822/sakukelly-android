.class public final synthetic Lcom/sakukelly/music/ui/screens/SettingsScreenKt$SettingsScreen$2$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

.field public final synthetic f$1:Lcom/sakukelly/music/domain/equalizer/EqualizerManager;


# direct methods
.method public synthetic constructor <init>(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lcom/sakukelly/music/domain/equalizer/EqualizerManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sakukelly/music/ui/screens/SettingsScreenKt$SettingsScreen$2$$ExternalSyntheticLambda12;->f$0:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    iput-object p2, p0, Lcom/sakukelly/music/ui/screens/SettingsScreenKt$SettingsScreen$2$$ExternalSyntheticLambda12;->f$1:Lcom/sakukelly/music/domain/equalizer/EqualizerManager;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/sakukelly/music/ui/screens/SettingsScreenKt$SettingsScreen$2$$ExternalSyntheticLambda12;->f$0:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    iget-object v1, p0, Lcom/sakukelly/music/ui/screens/SettingsScreenKt$SettingsScreen$2$$ExternalSyntheticLambda12;->f$1:Lcom/sakukelly/music/domain/equalizer/EqualizerManager;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/sakukelly/music/ui/screens/SettingsScreenKt$SettingsScreen$2;->$r8$lambda$G_CTkpFRelcJEtbZlyesKzFseWk(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lcom/sakukelly/music/domain/equalizer/EqualizerManager;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
