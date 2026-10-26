.class final Lcom/sakukelly/music/ui/screens/PlayerScreenKt$PlayerScreen$11$1$1$1$1;
.super Ljava/lang/Object;
.source "PlayerScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/ui/screens/PlayerScreenKt$PlayerScreen$11;->invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $playerViewModel:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

.field final synthetic $showQueueSheet$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $song:Lcom/sakukelly/music/data/model/Song;


# direct methods
.method constructor <init>(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lcom/sakukelly/music/data/model/Song;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;",
            "Lcom/sakukelly/music/data/model/Song;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sakukelly/music/ui/screens/PlayerScreenKt$PlayerScreen$11$1$1$1$1;->$playerViewModel:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    iput-object p2, p0, Lcom/sakukelly/music/ui/screens/PlayerScreenKt$PlayerScreen$11$1$1$1$1;->$song:Lcom/sakukelly/music/data/model/Song;

    iput-object p3, p0, Lcom/sakukelly/music/ui/screens/PlayerScreenKt$PlayerScreen$11$1$1$1$1;->$showQueueSheet$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 641
    invoke-virtual {p0}, Lcom/sakukelly/music/ui/screens/PlayerScreenKt$PlayerScreen$11$1$1$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 642
    iget-object v0, p0, Lcom/sakukelly/music/ui/screens/PlayerScreenKt$PlayerScreen$11$1$1$1$1;->$playerViewModel:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    iget-object v1, p0, Lcom/sakukelly/music/ui/screens/PlayerScreenKt$PlayerScreen$11$1$1$1$1;->$song:Lcom/sakukelly/music/data/model/Song;

    invoke-virtual {v0, v1}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;->play(Lcom/sakukelly/music/data/model/Song;)V

    .line 643
    iget-object v0, p0, Lcom/sakukelly/music/ui/screens/PlayerScreenKt$PlayerScreen$11$1$1$1$1;->$showQueueSheet$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sakukelly/music/ui/screens/PlayerScreenKt;->access$PlayerScreen$lambda$25(Landroidx/compose/runtime/MutableState;Z)V

    return-void
.end method
