.class public final synthetic Lcom/sakukelly/music/ui/screens/SettingsScreenKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sakukelly/music/ui/screens/SettingsScreenKt$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/sakukelly/music/ui/screens/SettingsScreenKt$$ExternalSyntheticLambda0;->f$1:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/sakukelly/music/ui/screens/SettingsScreenKt$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/sakukelly/music/ui/screens/SettingsScreenKt$$ExternalSyntheticLambda0;->f$1:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    check-cast p1, Landroid/net/Uri;

    invoke-static {v0, v1, p1}, Lcom/sakukelly/music/ui/screens/SettingsScreenKt;->$r8$lambda$3qyIKupMd6FoaazW9Qxr7XNeARA(Landroid/content/Context;Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Landroid/net/Uri;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
