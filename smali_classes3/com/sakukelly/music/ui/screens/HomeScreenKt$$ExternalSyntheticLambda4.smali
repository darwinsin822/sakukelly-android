.class public final synthetic Lcom/sakukelly/music/ui/screens/HomeScreenKt$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$$ExternalSyntheticLambda4;->f$0:Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$$ExternalSyntheticLambda4;->f$0:Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;

    check-cast p1, Landroid/net/Uri;

    invoke-static {v0, p1}, Lcom/sakukelly/music/ui/screens/HomeScreenKt;->$r8$lambda$UNGV-zk3kLdM-mFXL2iwYvdiVVA(Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;Landroid/net/Uri;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
