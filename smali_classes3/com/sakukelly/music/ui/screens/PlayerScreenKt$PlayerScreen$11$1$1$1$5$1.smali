.class final Lcom/sakukelly/music/ui/screens/PlayerScreenKt$PlayerScreen$11$1$1$1$5$1;
.super Ljava/lang/Object;
.source "PlayerScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/ui/screens/PlayerScreenKt$PlayerScreen$11$1$1$1$5;->invoke(Landroidx/compose/runtime/Composer;I)V
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
.field final synthetic $index:I

.field final synthetic $playerViewModel:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;


# direct methods
.method constructor <init>(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;I)V
    .locals 0

    iput-object p1, p0, Lcom/sakukelly/music/ui/screens/PlayerScreenKt$PlayerScreen$11$1$1$1$5$1;->$playerViewModel:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    iput p2, p0, Lcom/sakukelly/music/ui/screens/PlayerScreenKt$PlayerScreen$11$1$1$1$5$1;->$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 637
    invoke-virtual {p0}, Lcom/sakukelly/music/ui/screens/PlayerScreenKt$PlayerScreen$11$1$1$1$5$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 637
    iget-object v0, p0, Lcom/sakukelly/music/ui/screens/PlayerScreenKt$PlayerScreen$11$1$1$1$5$1;->$playerViewModel:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    iget v1, p0, Lcom/sakukelly/music/ui/screens/PlayerScreenKt$PlayerScreen$11$1$1$1$5$1;->$index:I

    invoke-virtual {v0, v1}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;->removeFromQueue(I)V

    return-void
.end method
