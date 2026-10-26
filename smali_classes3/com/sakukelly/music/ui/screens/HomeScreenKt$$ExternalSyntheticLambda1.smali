.class public final synthetic Lcom/sakukelly/music/ui/screens/HomeScreenKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Landroidx/activity/compose/ManagedActivityResultLauncher;

.field public final synthetic f$2:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$3:Ljava/util/List;

.field public final synthetic f$4:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

.field public final synthetic f$5:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Landroidx/activity/compose/ManagedActivityResultLauncher;Landroidx/compose/runtime/MutableState;Ljava/util/List;Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$$ExternalSyntheticLambda1;->f$1:Landroidx/activity/compose/ManagedActivityResultLauncher;

    iput-object p3, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$$ExternalSyntheticLambda1;->f$2:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$$ExternalSyntheticLambda1;->f$3:Ljava/util/List;

    iput-object p5, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$$ExternalSyntheticLambda1;->f$4:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    iput-object p6, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$$ExternalSyntheticLambda1;->f$5:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$$ExternalSyntheticLambda1;->f$1:Landroidx/activity/compose/ManagedActivityResultLauncher;

    iget-object v2, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$$ExternalSyntheticLambda1;->f$2:Landroidx/compose/runtime/MutableState;

    iget-object v3, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$$ExternalSyntheticLambda1;->f$3:Ljava/util/List;

    iget-object v4, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$$ExternalSyntheticLambda1;->f$4:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    iget-object v5, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$$ExternalSyntheticLambda1;->f$5:Lkotlin/jvm/functions/Function0;

    move-object v6, p1

    check-cast v6, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-static/range {v0 .. v6}, Lcom/sakukelly/music/ui/screens/HomeScreenKt;->$r8$lambda$oXmop0x3YHnSha-EgjnBER4obSk(Ljava/util/List;Landroidx/activity/compose/ManagedActivityResultLauncher;Landroidx/compose/runtime/MutableState;Ljava/util/List;Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/LazyListScope;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
