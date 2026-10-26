.class public final synthetic Lcom/sakukelly/music/ui/screens/HomeScreenKt$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Landroidx/compose/runtime/State;

.field public final synthetic f$2:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

.field public final synthetic f$3:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Landroidx/compose/runtime/State;Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$$ExternalSyntheticLambda9;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$$ExternalSyntheticLambda9;->f$1:Landroidx/compose/runtime/State;

    iput-object p3, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$$ExternalSyntheticLambda9;->f$2:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    iput-object p4, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$$ExternalSyntheticLambda9;->f$3:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$$ExternalSyntheticLambda9;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$$ExternalSyntheticLambda9;->f$1:Landroidx/compose/runtime/State;

    iget-object v2, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$$ExternalSyntheticLambda9;->f$2:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    iget-object v3, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$$ExternalSyntheticLambda9;->f$3:Lkotlin/jvm/functions/Function0;

    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridScope;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/sakukelly/music/ui/screens/HomeScreenKt;->$r8$lambda$-gioEGFo4FDFbY5xQq6rHIBdiTs(Ljava/util/List;Landroidx/compose/runtime/State;Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/grid/LazyGridScope;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
