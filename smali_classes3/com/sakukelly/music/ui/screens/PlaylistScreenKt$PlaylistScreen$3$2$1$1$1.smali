.class final Lcom/sakukelly/music/ui/screens/PlaylistScreenKt$PlaylistScreen$3$2$1$1$1;
.super Ljava/lang/Object;
.source "PlaylistScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/ui/screens/PlaylistScreenKt$PlaylistScreen$3;->invoke(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V
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
.field final synthetic $name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sakukelly/music/ui/screens/PlaylistScreenKt$PlaylistScreen$3$2$1$1$1;->$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/sakukelly/music/ui/screens/PlaylistScreenKt$PlaylistScreen$3$2$1$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    sget-object v0, Lcom/sakukelly/music/ui/PlaylistHelper;->sActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sakukelly/music/ui/screens/PlaylistScreenKt$PlaylistScreen$3$2$1$1$1;->$name:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/sakukelly/music/ui/PlaylistHelper;->onPlaylistClick(Landroid/content/Context;Ljava/lang/String;Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;)V

    :cond_0
    return-void
.end method
