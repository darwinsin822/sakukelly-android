.class Lcom/sakukelly/music/ui/PlaylistHelper$8;
.super Ljava/lang/Object;
.source "PlaylistHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/ui/PlaylistHelper;->showAddToPlaylistDialog(Landroid/content/Context;Lcom/sakukelly/music/data/model/Song;Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$song:Lcom/sakukelly/music/data/model/Song;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/sakukelly/music/data/model/Song;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 376
    iput-object p1, p0, Lcom/sakukelly/music/ui/PlaylistHelper$8;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sakukelly/music/ui/PlaylistHelper$8;->val$song:Lcom/sakukelly/music/data/model/Song;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 379
    iget-object v0, p0, Lcom/sakukelly/music/ui/PlaylistHelper$8;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/sakukelly/music/ui/PlaylistHelper;->getAllPlaylists(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 380
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/sakukelly/music/ui/PlaylistHelper$8$1;

    invoke-direct {v2, p0, v0}, Lcom/sakukelly/music/ui/PlaylistHelper$8$1;-><init>(Lcom/sakukelly/music/ui/PlaylistHelper$8;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 406
    return-void
.end method
