.class public final synthetic Lcom/sakukelly/music/ui/screens/HomeScreenKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroidx/compose/runtime/State;

.field public final synthetic f$1:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$3:Landroidx/compose/runtime/State;

.field public final synthetic f$4:Landroidx/compose/runtime/State;

.field public final synthetic f$5:Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/State;Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$$ExternalSyntheticLambda2;->f$0:Landroidx/compose/runtime/State;

    iput-object p2, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$$ExternalSyntheticLambda2;->f$1:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    iput-object p3, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$$ExternalSyntheticLambda2;->f$2:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$$ExternalSyntheticLambda2;->f$3:Landroidx/compose/runtime/State;

    iput-object p5, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$$ExternalSyntheticLambda2;->f$4:Landroidx/compose/runtime/State;

    iput-object p6, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$$ExternalSyntheticLambda2;->f$5:Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$$ExternalSyntheticLambda2;->f$0:Landroidx/compose/runtime/State;

    iget-object v1, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$$ExternalSyntheticLambda2;->f$1:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    iget-object v2, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$$ExternalSyntheticLambda2;->f$2:Lkotlin/jvm/functions/Function0;

    iget-object v3, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$$ExternalSyntheticLambda2;->f$3:Landroidx/compose/runtime/State;

    iget-object v4, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$$ExternalSyntheticLambda2;->f$4:Landroidx/compose/runtime/State;

    iget-object v5, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$$ExternalSyntheticLambda2;->f$5:Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;

    move-object v6, p1

    check-cast v6, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-static/range {v0 .. v6}, Lcom/sakukelly/music/ui/screens/HomeScreenKt;->$r8$lambda$2j8WheZyfR0KNBuNTor5W9oQL9c(Landroidx/compose/runtime/State;Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;Landroidx/compose/foundation/lazy/LazyListScope;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
