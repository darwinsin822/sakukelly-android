.class public final synthetic Lcom/sakukelly/music/ui/screens/PlayerScreenKt$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroidx/compose/runtime/State;

.field public final synthetic f$1:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sakukelly/music/ui/screens/PlayerScreenKt$$ExternalSyntheticLambda5;->f$0:Landroidx/compose/runtime/State;

    iput-object p2, p0, Lcom/sakukelly/music/ui/screens/PlayerScreenKt$$ExternalSyntheticLambda5;->f$1:Landroidx/compose/runtime/State;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/sakukelly/music/ui/screens/PlayerScreenKt$$ExternalSyntheticLambda5;->f$0:Landroidx/compose/runtime/State;

    iget-object v1, p0, Lcom/sakukelly/music/ui/screens/PlayerScreenKt$$ExternalSyntheticLambda5;->f$1:Landroidx/compose/runtime/State;

    check-cast p1, Landroidx/compose/ui/graphics/GraphicsLayerScope;

    invoke-static {v0, v1, p1}, Lcom/sakukelly/music/ui/screens/PlayerScreenKt;->$r8$lambda$KMIcB329A7id2V0NpMQiv_yuXHg(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/ui/graphics/GraphicsLayerScope;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
