.class public final synthetic Lcom/sakukelly/music/ui/screens/LyricsScreenKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroidx/compose/runtime/State;

.field public final synthetic f$1:Landroidx/compose/runtime/State;

.field public final synthetic f$2:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sakukelly/music/ui/screens/LyricsScreenKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/runtime/State;

    iput-object p2, p0, Lcom/sakukelly/music/ui/screens/LyricsScreenKt$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/runtime/State;

    iput-object p3, p0, Lcom/sakukelly/music/ui/screens/LyricsScreenKt$$ExternalSyntheticLambda1;->f$2:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/sakukelly/music/ui/screens/LyricsScreenKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/runtime/State;

    iget-object v1, p0, Lcom/sakukelly/music/ui/screens/LyricsScreenKt$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/runtime/State;

    iget-object v2, p0, Lcom/sakukelly/music/ui/screens/LyricsScreenKt$$ExternalSyntheticLambda1;->f$2:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    check-cast p1, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-static {v0, v1, v2, p1}, Lcom/sakukelly/music/ui/screens/LyricsScreenKt;->$r8$lambda$ZfBKj6_041IvvLL5jL9fMDpjrGw(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Landroidx/compose/foundation/lazy/LazyListScope;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
