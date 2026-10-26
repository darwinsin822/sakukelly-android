.class public final synthetic Lcom/sakukelly/music/ui/screens/PlayerScreenKt$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sakukelly/music/ui/screens/PlayerScreenKt$$ExternalSyntheticLambda6;->f$0:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sakukelly/music/ui/screens/PlayerScreenKt$$ExternalSyntheticLambda6;->f$0:Landroidx/compose/runtime/MutableState;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/sakukelly/music/ui/screens/PlayerScreenKt;->$r8$lambda$pr8xI_hj5I-0PnQ17DoB5MA2m68(Landroidx/compose/runtime/MutableState;F)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
