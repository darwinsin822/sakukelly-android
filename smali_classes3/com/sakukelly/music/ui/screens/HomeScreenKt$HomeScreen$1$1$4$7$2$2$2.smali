.class final Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$4$7$2$2$2;
.super Ljava/lang/Object;
.source "HomeScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/ui/screens/HomeScreenKt;->HomeScreen(Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
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
.field final synthetic $folderSongs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sakukelly/music/data/model/Song;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onNavigateToPlayer:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $playerViewModel:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

.field final synthetic $song:Lcom/sakukelly/music/data/model/Song;


# direct methods
.method constructor <init>(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Ljava/util/List;Lcom/sakukelly/music/data/model/Song;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;",
            "Ljava/util/List<",
            "Lcom/sakukelly/music/data/model/Song;",
            ">;",
            "Lcom/sakukelly/music/data/model/Song;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$4$7$2$2$2;->$playerViewModel:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    iput-object p2, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$4$7$2$2$2;->$folderSongs:Ljava/util/List;

    iput-object p3, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$4$7$2$2$2;->$song:Lcom/sakukelly/music/data/model/Song;

    iput-object p4, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$4$7$2$2$2;->$onNavigateToPlayer:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 487
    invoke-virtual {p0}, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$4$7$2$2$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 495
    iget-object v0, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$4$7$2$2$2;->$playerViewModel:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    iget-object v1, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$4$7$2$2$2;->$folderSongs:Ljava/util/List;

    iget-object v2, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$4$7$2$2$2;->$song:Lcom/sakukelly/music/data/model/Song;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;->playQueue(Ljava/util/List;I)V

    .line 496
    iget-object v0, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$4$7$2$2$2;->$onNavigateToPlayer:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
