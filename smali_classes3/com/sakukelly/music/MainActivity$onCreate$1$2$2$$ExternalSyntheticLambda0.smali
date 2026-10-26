.class public final synthetic Lcom/sakukelly/music/MainActivity$onCreate$1$2$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;

.field public final synthetic f$1:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

.field public final synthetic f$2:Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;

.field public final synthetic f$3:Landroidx/navigation/NavHostController;


# direct methods
.method public synthetic constructor <init>(Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;Landroidx/navigation/NavHostController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sakukelly/music/MainActivity$onCreate$1$2$2$$ExternalSyntheticLambda0;->f$0:Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;

    iput-object p2, p0, Lcom/sakukelly/music/MainActivity$onCreate$1$2$2$$ExternalSyntheticLambda0;->f$1:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    iput-object p3, p0, Lcom/sakukelly/music/MainActivity$onCreate$1$2$2$$ExternalSyntheticLambda0;->f$2:Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;

    iput-object p4, p0, Lcom/sakukelly/music/MainActivity$onCreate$1$2$2$$ExternalSyntheticLambda0;->f$3:Landroidx/navigation/NavHostController;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/sakukelly/music/MainActivity$onCreate$1$2$2$$ExternalSyntheticLambda0;->f$0:Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;

    iget-object v1, p0, Lcom/sakukelly/music/MainActivity$onCreate$1$2$2$$ExternalSyntheticLambda0;->f$1:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    iget-object v2, p0, Lcom/sakukelly/music/MainActivity$onCreate$1$2$2$$ExternalSyntheticLambda0;->f$2:Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;

    iget-object v3, p0, Lcom/sakukelly/music/MainActivity$onCreate$1$2$2$$ExternalSyntheticLambda0;->f$3:Landroidx/navigation/NavHostController;

    check-cast p1, Landroidx/navigation/NavGraphBuilder;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/sakukelly/music/MainActivity$onCreate$1$2$2;->$r8$lambda$bW90iFs6x3Darq9S54dRBtI4P0k(Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraphBuilder;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
