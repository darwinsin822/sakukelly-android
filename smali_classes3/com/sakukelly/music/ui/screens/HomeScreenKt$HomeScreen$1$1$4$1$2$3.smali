.class final Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$4$1$2$3;
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
.field final synthetic $libraryViewModel:Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;

.field final synthetic $song:Lcom/sakukelly/music/data/model/Song;


# direct methods
.method constructor <init>(Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;Lcom/sakukelly/music/data/model/Song;)V
    .locals 0

    iput-object p1, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$4$1$2$3;->$libraryViewModel:Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;

    iput-object p2, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$4$1$2$3;->$song:Lcom/sakukelly/music/data/model/Song;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 266
    invoke-virtual {p0}, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$4$1$2$3;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$4$1$2$3;->$libraryViewModel:Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;

    iget-object v1, p0, Lcom/sakukelly/music/ui/screens/HomeScreenKt$HomeScreen$1$1$4$1$2$3;->$song:Lcom/sakukelly/music/data/model/Song;

    invoke-virtual {v0, v1}, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;->toggleFavorite(Lcom/sakukelly/music/data/model/Song;)V

    return-void
.end method
