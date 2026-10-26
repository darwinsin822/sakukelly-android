.class final Lcom/sakukelly/music/ui/screens/LyricsScreenKt$LyricsScreen$2$1$5$1$2;
.super Ljava/lang/Object;
.source "LyricsScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/ui/screens/LyricsScreenKt;->LyricsScreen(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
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
.field final synthetic $lyricPair:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $playerViewModel:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;


# direct methods
.method constructor <init>(Lkotlin/Pair;Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sakukelly/music/ui/screens/LyricsScreenKt$LyricsScreen$2$1$5$1$2;->$lyricPair:Lkotlin/Pair;

    iput-object p2, p0, Lcom/sakukelly/music/ui/screens/LyricsScreenKt$LyricsScreen$2$1$5$1$2;->$playerViewModel:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 344
    invoke-virtual {p0}, Lcom/sakukelly/music/ui/screens/LyricsScreenKt$LyricsScreen$2$1$5$1$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 349
    iget-object v0, p0, Lcom/sakukelly/music/ui/screens/LyricsScreenKt$LyricsScreen$2$1$5$1$2;->$lyricPair:Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 350
    iget-object v2, p0, Lcom/sakukelly/music/ui/screens/LyricsScreenKt$LyricsScreen$2$1$5$1$2;->$playerViewModel:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    invoke-virtual {v2, v0, v1}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;->seekTo(J)V

    return-void
.end method
