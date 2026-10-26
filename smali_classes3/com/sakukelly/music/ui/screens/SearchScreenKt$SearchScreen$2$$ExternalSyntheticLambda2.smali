.class public final synthetic Lcom/sakukelly/music/ui/screens/SearchScreenKt$SearchScreen$2$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroidx/compose/runtime/State;

.field public final synthetic f$1:Landroidx/compose/runtime/State;

.field public final synthetic f$2:Landroidx/compose/runtime/State;

.field public final synthetic f$3:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

.field public final synthetic f$4:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sakukelly/music/ui/screens/SearchScreenKt$SearchScreen$2$$ExternalSyntheticLambda2;->f$0:Landroidx/compose/runtime/State;

    iput-object p2, p0, Lcom/sakukelly/music/ui/screens/SearchScreenKt$SearchScreen$2$$ExternalSyntheticLambda2;->f$1:Landroidx/compose/runtime/State;

    iput-object p3, p0, Lcom/sakukelly/music/ui/screens/SearchScreenKt$SearchScreen$2$$ExternalSyntheticLambda2;->f$2:Landroidx/compose/runtime/State;

    iput-object p4, p0, Lcom/sakukelly/music/ui/screens/SearchScreenKt$SearchScreen$2$$ExternalSyntheticLambda2;->f$3:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    iput-object p5, p0, Lcom/sakukelly/music/ui/screens/SearchScreenKt$SearchScreen$2$$ExternalSyntheticLambda2;->f$4:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/sakukelly/music/ui/screens/SearchScreenKt$SearchScreen$2$$ExternalSyntheticLambda2;->f$0:Landroidx/compose/runtime/State;

    iget-object v1, p0, Lcom/sakukelly/music/ui/screens/SearchScreenKt$SearchScreen$2$$ExternalSyntheticLambda2;->f$1:Landroidx/compose/runtime/State;

    iget-object v2, p0, Lcom/sakukelly/music/ui/screens/SearchScreenKt$SearchScreen$2$$ExternalSyntheticLambda2;->f$2:Landroidx/compose/runtime/State;

    iget-object v3, p0, Lcom/sakukelly/music/ui/screens/SearchScreenKt$SearchScreen$2$$ExternalSyntheticLambda2;->f$3:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    iget-object v4, p0, Lcom/sakukelly/music/ui/screens/SearchScreenKt$SearchScreen$2$$ExternalSyntheticLambda2;->f$4:Lkotlin/jvm/functions/Function0;

    move-object v5, p1

    check-cast v5, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-static/range {v0 .. v5}, Lcom/sakukelly/music/ui/screens/SearchScreenKt$SearchScreen$2;->$r8$lambda$7Vo4wts2KvIfm0QtSA46nnGLU8g(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/LazyListScope;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
